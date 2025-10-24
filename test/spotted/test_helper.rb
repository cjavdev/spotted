# frozen_string_literal: true

# Requiring this file from each test file ensures we always do the following, even
# when running a single-file test:
# - Load the whole gem (as one would in production)
# - Define shared testing namespace so that we don't need to indent test files as much
# - Setting up testing dependencies

require "digest"
require "singleton"

require "async"
require "minitest/autorun"
require "minitest/focus"
require "minitest/hooks/test"
require "minitest/proveit"
require "minitest/rg"
require "webmock"

require_relative "../../lib/spotted"
require_relative "resource_namespaces"

module Kernel
  alias_method :_sleep, :sleep

  def sleep(secs)
    case Thread.current.thread_variable_get(:mock_sleep)
    in Array => counter
      counter << secs
      secs
    else
      _sleep(secs)
    end
  end
end

class Time
  class << self
    alias_method :_now, :now
  end

  def self.now = Thread.current.thread_variable_get(:time_now) || _now
end

class Spotted::Test::SingletonClient < Spotted::Client
  include Singleton

  TEST_API_BASE_URL = ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010")

  def initialize
    super(
      base_url: Spotted::Test::SingletonClient::TEST_API_BASE_URL,
      client_id: "My Client ID",
      client_secret: "My Client Secret"
    )
  end
end

module Minitest::Serial
  def test_order = :random

  def run_one_method(...) = Minitest::Runnable.run_one_method(...)
end

class Minitest::Test
  include Minitest::Hooks

  make_my_diffs_pretty!
  parallelize_me!
  prove_it!
end

class Spotted::Test::ResourceTest < Minitest::Test
  include WebMock::API

  def async?
    return @async unless @async.nil?
    @async = Digest::SHA256.hexdigest(self.class.name).to_i(16).odd?
  end

  def before_all
    super
    WebMock.enable!
    stub_token_endpoint
    @spotted = Spotted::Test::SingletonClient.instance
  end

  def setup
    super
    WebMock.reset!
    stub_token_endpoint
  end

  def teardown
    super
    stub_token_endpoint
  end

  def around_all = async? ? Sync { super } : super

  def around = async? ? Async { super }.wait : super
end

module WebMock
  AssertionFailure.error_class = Minitest::Assertion
end

module Spotted
  module Test
    def stub_token_endpoint(token_url: "https://accounts.spotify.com/api/token")
      WebMock::API.stub_request(:post, /#{Regexp.escape(token_url)}/).to_return(
        status: 200,
        body: {
          access_token: "test_access_token",
          token_type: "Bearer",
          expires_in: 3600
        }.to_json,
        headers: {"Content-Type" => "application/json"}
      )
    end

    def create_client(
      base_url: "http://localhost",
      client_id: "My Client ID",
      client_secret: "My Client Secret",
      **options
    )
      stub_token_endpoint
      Spotted::Client.new(
        base_url: base_url,
        client_id: client_id,
        client_secret: client_secret,
        **options
      )
    end
  end
end

class Minitest::Test
  include Spotted::Test
end
