# frozen_string_literal: true

require_relative "test_helper"

class SpottedTest < Minitest::Test
  extend Minitest::Serial
  include WebMock::API

  def before_all
    super
    WebMock.enable!
  end

  def setup
    super
    Thread.current.thread_variable_set(:mock_sleep, [])
  end

  def teardown
    Thread.current.thread_variable_set(:mock_sleep, nil)
    WebMock.reset!
    super
  end

  def after_all
    WebMock.disable!
    super
  end

  def test_raises_on_missing_non_nullable_opts
    original_id = ENV["SPOTIFY_CLIENT_ID"]
    original_secret = ENV["SPOTIFY_CLIENT_SECRET"]
    ENV.delete("SPOTIFY_CLIENT_ID")
    ENV.delete("SPOTIFY_CLIENT_SECRET")

    e = assert_raises(ArgumentError) do
      Spotted::Client.new
    end
    assert_match(/is required/, e.message)
  ensure
    ENV["SPOTIFY_CLIENT_ID"] = original_id if original_id
    ENV["SPOTIFY_CLIENT_ID"] = nil if original_id.nil?
    ENV["SPOTIFY_CLIENT_SECRET"] = original_secret if original_secret
    ENV["SPOTIFY_CLIENT_SECRET"] = nil if original_secret.nil?
  end

  def test_client_default_request_default_retry_attempts
    stub_token_endpoint
    stub_request(:get, "http://localhost/albums/4aawyAB9vmqN3uQ7FjRGTy").to_return_json(
      status: 500,
      body: {}
    )

    spotted =
      Spotted::Client.new(
        base_url: "http://localhost",
        client_id: "My Client ID",
        client_secret: "My Client Secret"
      )

    assert_raises(Spotted::Errors::InternalServerError) do
      spotted.albums.retrieve("4aawyAB9vmqN3uQ7FjRGTy")
    end

    assert_requested(:any, /./, times: 4)
  end

  def test_client_given_request_default_retry_attempts
    stub_token_endpoint
    stub_request(:get, "http://localhost/albums/4aawyAB9vmqN3uQ7FjRGTy").to_return_json(
      status: 500,
      body: {}
    )

    spotted =
      Spotted::Client.new(
        base_url: "http://localhost",
        client_id: "My Client ID",
        client_secret: "My Client Secret",
        max_retries: 3
      )

    assert_raises(Spotted::Errors::InternalServerError) do
      spotted.albums.retrieve("4aawyAB9vmqN3uQ7FjRGTy")
    end

    assert_requested(:any, /./, times: 5)
  end

  def test_client_default_request_given_retry_attempts
    stub_token_endpoint
    stub_request(:get, "http://localhost/albums/4aawyAB9vmqN3uQ7FjRGTy").to_return_json(
      status: 500,
      body: {}
    )

    spotted =
      Spotted::Client.new(
        base_url: "http://localhost",
        client_id: "My Client ID",
        client_secret: "My Client Secret"
      )

    assert_raises(Spotted::Errors::InternalServerError) do
      spotted.albums.retrieve("4aawyAB9vmqN3uQ7FjRGTy", request_options: {max_retries: 3})
    end

    assert_requested(:any, /./, times: 5)
  end

  def test_client_given_request_given_retry_attempts
    stub_token_endpoint
    stub_request(:get, "http://localhost/albums/4aawyAB9vmqN3uQ7FjRGTy").to_return_json(
      status: 500,
      body: {}
    )

    spotted =
      Spotted::Client.new(
        base_url: "http://localhost",
        client_id: "My Client ID",
        client_secret: "My Client Secret",
        max_retries: 3
      )

    assert_raises(Spotted::Errors::InternalServerError) do
      spotted.albums.retrieve("4aawyAB9vmqN3uQ7FjRGTy", request_options: {max_retries: 4})
    end

    assert_requested(:any, /./, times: 6)
  end

  def test_client_retry_after_seconds
    stub_token_endpoint
    stub_request(:get, "http://localhost/albums/4aawyAB9vmqN3uQ7FjRGTy").to_return_json(
      status: 500,
      headers: {"retry-after" => "1.3"},
      body: {}
    )

    spotted =
      Spotted::Client.new(
        base_url: "http://localhost",
        client_id: "My Client ID",
        client_secret: "My Client Secret",
        max_retries: 1
      )

    assert_raises(Spotted::Errors::InternalServerError) do
      spotted.albums.retrieve("4aawyAB9vmqN3uQ7FjRGTy")
    end

    assert_requested(:any, /./, times: 3)
    assert_equal(1.3, Thread.current.thread_variable_get(:mock_sleep).last)
  end

  def test_client_retry_after_date
    stub_token_endpoint
    stub_request(:get, "http://localhost/albums/4aawyAB9vmqN3uQ7FjRGTy").to_return_json(
      status: 500,
      headers: {"retry-after" => (Time.now + 10).httpdate},
      body: {}
    )

    spotted =
      Spotted::Client.new(
        base_url: "http://localhost",
        client_id: "My Client ID",
        client_secret: "My Client Secret",
        max_retries: 1
      )

    assert_raises(Spotted::Errors::InternalServerError) do
      Thread.current.thread_variable_set(:time_now, Time.now)
      spotted.albums.retrieve("4aawyAB9vmqN3uQ7FjRGTy")
      Thread.current.thread_variable_set(:time_now, nil)
    end

    assert_requested(:any, /./, times: 3)
    assert_in_delta(10, Thread.current.thread_variable_get(:mock_sleep).last, 1.0)
  end

  def test_client_retry_after_ms
    stub_token_endpoint
    stub_request(:get, "http://localhost/albums/4aawyAB9vmqN3uQ7FjRGTy").to_return_json(
      status: 500,
      headers: {"retry-after-ms" => "1300"},
      body: {}
    )

    spotted =
      Spotted::Client.new(
        base_url: "http://localhost",
        client_id: "My Client ID",
        client_secret: "My Client Secret",
        max_retries: 1
      )

    assert_raises(Spotted::Errors::InternalServerError) do
      spotted.albums.retrieve("4aawyAB9vmqN3uQ7FjRGTy")
    end

    assert_requested(:any, /./, times: 3)
    assert_equal(1.3, Thread.current.thread_variable_get(:mock_sleep).last)
  end

  def test_retry_count_header
    stub_token_endpoint
    stub_request(:get, "http://localhost/albums/4aawyAB9vmqN3uQ7FjRGTy").to_return_json(
      status: 500,
      body: {}
    )

    spotted =
      Spotted::Client.new(
        base_url: "http://localhost",
        client_id: "My Client ID",
        client_secret: "My Client Secret"
      )

    assert_raises(Spotted::Errors::InternalServerError) do
      spotted.albums.retrieve("4aawyAB9vmqN3uQ7FjRGTy")
    end

    assert_requested(
      :get,
      "http://localhost/albums/4aawyAB9vmqN3uQ7FjRGTy",
      headers: {"x-stainless-retry-count" => "0"}
    )
    assert_requested(
      :get,
      "http://localhost/albums/4aawyAB9vmqN3uQ7FjRGTy",
      headers: {"x-stainless-retry-count" => "1"}
    )
    assert_requested(
      :get,
      "http://localhost/albums/4aawyAB9vmqN3uQ7FjRGTy",
      headers: {"x-stainless-retry-count" => "2"}
    )
  end

  def test_omit_retry_count_header
    stub_token_endpoint
    stub_request(:get, "http://localhost/albums/4aawyAB9vmqN3uQ7FjRGTy").to_return_json(
      status: 500,
      body: {}
    )

    spotted =
      Spotted::Client.new(
        base_url: "http://localhost",
        client_id: "My Client ID",
        client_secret: "My Client Secret"
      )

    assert_raises(Spotted::Errors::InternalServerError) do
      spotted.albums.retrieve(
        "4aawyAB9vmqN3uQ7FjRGTy",
        request_options: {extra_headers: {"x-stainless-retry-count" => nil}}
      )
    end

    assert_requested(:get, "http://localhost/albums/4aawyAB9vmqN3uQ7FjRGTy", times: 3) do
      refute_includes(_1.headers.keys.map(&:downcase), "x-stainless-retry-count")
    end
  end

  def test_overwrite_retry_count_header
    stub_token_endpoint
    stub_request(:get, "http://localhost/albums/4aawyAB9vmqN3uQ7FjRGTy").to_return_json(
      status: 500,
      body: {}
    )

    spotted =
      Spotted::Client.new(
        base_url: "http://localhost",
        client_id: "My Client ID",
        client_secret: "My Client Secret"
      )

    assert_raises(Spotted::Errors::InternalServerError) do
      spotted.albums.retrieve(
        "4aawyAB9vmqN3uQ7FjRGTy",
        request_options: {extra_headers: {"x-stainless-retry-count" => "42"}}
      )
    end

    assert_requested(:any, /./, headers: {"x-stainless-retry-count" => "42"}, times: 3)
  end

  def test_client_redirect_307
    stub_token_endpoint
    stub_request(:get, "http://localhost/albums/4aawyAB9vmqN3uQ7FjRGTy").to_return_json(
      status: 307,
      headers: {"location" => "/redirected"},
      body: {}
    )
    stub_request(:any, "http://localhost/redirected").to_return(
      status: 307,
      headers: {"location" => "/redirected"}
    )

    spotted =
      Spotted::Client.new(
        base_url: "http://localhost",
        client_id: "My Client ID",
        client_secret: "My Client Secret"
      )

    assert_raises(Spotted::Errors::APIConnectionError) do
      spotted.albums.retrieve("4aawyAB9vmqN3uQ7FjRGTy", request_options: {extra_headers: {}})
    end

    assert_requested(:get, "http://localhost/redirected", times: Spotted::Client::MAX_REDIRECTS)
  end

  def test_client_redirect_303
    stub_token_endpoint
    stub_request(:get, "http://localhost/albums/4aawyAB9vmqN3uQ7FjRGTy").to_return_json(
      status: 303,
      headers: {"location" => "/redirected"},
      body: {}
    )
    stub_request(:get, "http://localhost/redirected").to_return(
      status: 303,
      headers: {"location" => "/redirected"}
    )

    spotted =
      Spotted::Client.new(
        base_url: "http://localhost",
        client_id: "My Client ID",
        client_secret: "My Client Secret"
      )

    assert_raises(Spotted::Errors::APIConnectionError) do
      spotted.albums.retrieve("4aawyAB9vmqN3uQ7FjRGTy", request_options: {extra_headers: {}})
    end

    assert_requested(:get, "http://localhost/redirected", times: Spotted::Client::MAX_REDIRECTS) do
      headers = _1.headers.keys.map(&:downcase)
      refute_includes(headers, "content-type")
      assert_nil(_1.body)
    end
  end

  def test_client_redirect_auth_keep_same_origin
    stub_token_endpoint
    stub_request(:get, "http://localhost/albums/4aawyAB9vmqN3uQ7FjRGTy").to_return_json(
      status: 307,
      headers: {"location" => "/redirected"},
      body: {}
    )
    stub_request(:any, "http://localhost/redirected").to_return(
      status: 307,
      headers: {"location" => "/redirected"}
    )

    spotted =
      Spotted::Client.new(
        base_url: "http://localhost",
        client_id: "My Client ID",
        client_secret: "My Client Secret"
      )

    assert_raises(Spotted::Errors::APIConnectionError) do
      spotted.albums.retrieve(
        "4aawyAB9vmqN3uQ7FjRGTy",
        request_options: {extra_headers: {"authorization" => "Bearer xyz"}}
      )
    end

    assert_requested(
      :any,
      "http://localhost/redirected",
      times: Spotted::Client::MAX_REDIRECTS,
      headers: {"authorization" => "Bearer xyz"}
    )
  end

  def test_client_redirect_auth_strip_cross_origin
    stub_token_endpoint
    stub_request(:get, "http://localhost/albums/4aawyAB9vmqN3uQ7FjRGTy").to_return_json(
      status: 307,
      headers: {"location" => "https://example.com/redirected"},
      body: {}
    )
    stub_request(:any, "https://example.com/redirected").to_return(
      status: 307,
      headers: {"location" => "https://example.com/redirected"}
    )

    spotted =
      Spotted::Client.new(
        base_url: "http://localhost",
        client_id: "My Client ID",
        client_secret: "My Client Secret"
      )

    assert_raises(Spotted::Errors::APIConnectionError) do
      spotted.albums.retrieve(
        "4aawyAB9vmqN3uQ7FjRGTy",
        request_options: {extra_headers: {"authorization" => "Bearer xyz"}}
      )
    end

    assert_requested(:any, "https://example.com/redirected", times: Spotted::Client::MAX_REDIRECTS) do
      headers = _1.headers.keys.map(&:downcase)
      refute_includes(headers, "authorization")
    end
  end

  def test_default_headers
    stub_token_endpoint
    stub_request(:get, "http://localhost/albums/4aawyAB9vmqN3uQ7FjRGTy").to_return_json(
      status: 200,
      body: {}
    )

    spotted =
      Spotted::Client.new(
        base_url: "http://localhost",
        client_id: "My Client ID",
        client_secret: "My Client Secret"
      )

    spotted.albums.retrieve("4aawyAB9vmqN3uQ7FjRGTy")

    assert_requested(:get, "http://localhost/albums/4aawyAB9vmqN3uQ7FjRGTy") do |req|
      headers = req.headers.transform_keys(&:downcase).fetch_values("accept", "content-type")
      headers.each { refute_empty(_1) }
    end
  end
end
