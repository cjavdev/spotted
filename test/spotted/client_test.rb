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
    e = assert_raises(ArgumentError) do
      Spotted::Client.new
    end
    assert_match(/is required/, e.message)
  end

  def test_client_default_request_default_retry_attempts
    stub_token_endpoint
    stub_request(:get, "http://localhost/albums/4aawyAB9vmqN3uQ7FjRGTy").to_return_json(
      status: 500,
      body: {}
    )

    spotted = Spotted::Client.new(base_url: "http://localhost", access_token: "My Access Token")

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
      Spotted::Client.new(base_url: "http://localhost", access_token: "My Access Token", max_retries: 3)

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

    spotted = Spotted::Client.new(base_url: "http://localhost", access_token: "My Access Token")

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
      Spotted::Client.new(base_url: "http://localhost", access_token: "My Access Token", max_retries: 3)

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
      Spotted::Client.new(base_url: "http://localhost", access_token: "My Access Token", max_retries: 1)

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
      Spotted::Client.new(base_url: "http://localhost", access_token: "My Access Token", max_retries: 1)

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
      Spotted::Client.new(base_url: "http://localhost", access_token: "My Access Token", max_retries: 1)

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

    spotted = Spotted::Client.new(base_url: "http://localhost", access_token: "My Access Token")

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

    spotted = Spotted::Client.new(base_url: "http://localhost", access_token: "My Access Token")

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

    spotted = Spotted::Client.new(base_url: "http://localhost", access_token: "My Access Token")

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

    spotted = Spotted::Client.new(base_url: "http://localhost", access_token: "My Access Token")

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

    spotted = Spotted::Client.new(base_url: "http://localhost", access_token: "My Access Token")

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

    spotted = Spotted::Client.new(base_url: "http://localhost", access_token: "My Access Token")

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

    spotted = Spotted::Client.new(base_url: "http://localhost", access_token: "My Access Token")

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

    spotted = Spotted::Client.new(base_url: "http://localhost", access_token: "My Access Token")

    spotted.albums.retrieve("4aawyAB9vmqN3uQ7FjRGTy")

    assert_requested(:get, "http://localhost/albums/4aawyAB9vmqN3uQ7FjRGTy") do |req|
      headers = req.headers.transform_keys(&:downcase).fetch_values("accept", "content-type")
      headers.each { refute_empty(_1) }
    end
  end

  def test_authorization_url_with_only_redirect_uri
    spotted =
      Spotted::Client.new(
        client_id: "test_client_id",
        client_secret: "test_client_secret"
      )

    url = spotted.authorization_url(redirect_uri: "http://localhost:3000/callback")
    uri = URI.parse(url)
    params = URI.decode_www_form(uri.query).to_h

    assert_equal("https", uri.scheme)
    assert_equal("accounts.spotify.com", uri.host)
    assert_equal("/authorize", uri.path)
    assert_equal("test_client_id", params["client_id"])
    assert_equal("code", params["response_type"])
    assert_equal("http://localhost:3000/callback", params["redirect_uri"])
    assert_nil(params["scope"])
    assert_nil(params["state"])
    assert_nil(params["show_dialog"])
  end

  def test_authorization_url_with_scope_as_array
    spotted =
      Spotted::Client.new(
        client_id: "test_client_id",
        client_secret: "test_client_secret"
      )

    url = spotted.authorization_url(
      redirect_uri: "http://localhost:3000/callback",
      scope: "user-read-private user-read-email playlist-modify-public"
    )
    uri = URI.parse(url)
    params = URI.decode_www_form(uri.query).to_h

    assert_equal("user-read-private user-read-email playlist-modify-public", params["scope"])
  end

  def test_authorization_url_with_scope_as_string
    spotted =
      Spotted::Client.new(
        client_id: "test_client_id",
        client_secret: "test_client_secret"
      )

    url = spotted.authorization_url(
      redirect_uri: "http://localhost:3000/callback",
      scope: "user-read-private user-read-email"
    )
    uri = URI.parse(url)
    params = URI.decode_www_form(uri.query).to_h

    assert_equal("user-read-private user-read-email", params["scope"])
  end

  def test_authorization_url_with_state
    spotted =
      Spotted::Client.new(
        client_id: "test_client_id",
        client_secret: "test_client_secret"
      )

    url = spotted.authorization_url(
      redirect_uri: "http://localhost:3000/callback",
      state: "random_state_string_123"
    )
    uri = URI.parse(url)
    params = URI.decode_www_form(uri.query).to_h

    assert_equal("random_state_string_123", params["state"])
  end

  def test_authorization_url_with_show_dialog_true
    spotted =
      Spotted::Client.new(
        client_id: "test_client_id",
        client_secret: "test_client_secret"
      )

    url = spotted.authorization_url(
      redirect_uri: "http://localhost:3000/callback",
      show_dialog: true
    )
    uri = URI.parse(url)
    params = URI.decode_www_form(uri.query).to_h

    assert_equal("true", params["show_dialog"])
  end

  def test_authorization_url_with_show_dialog_false
    spotted =
      Spotted::Client.new(
        client_id: "test_client_id",
        client_secret: "test_client_secret"
      )

    url = spotted.authorization_url(
      redirect_uri: "http://localhost:3000/callback",
      show_dialog: false
    )
    uri = URI.parse(url)
    params = URI.decode_www_form(uri.query).to_h

    assert_nil(params["show_dialog"])
  end

  def test_authorization_url_with_all_parameters
    spotted =
      Spotted::Client.new(
        client_id: "test_client_id",
        client_secret: "test_client_secret"
      )

    url = spotted.authorization_url(
      redirect_uri: "http://localhost:3000/callback",
      scope: "user-read-private user-read-email",
      state: "csrf_protection_token",
      show_dialog: true
    )
    uri = URI.parse(url)
    params = URI.decode_www_form(uri.query).to_h

    assert_equal("https", uri.scheme)
    assert_equal("accounts.spotify.com", uri.host)
    assert_equal("/authorize", uri.path)
    assert_equal("test_client_id", params["client_id"])
    assert_equal("code", params["response_type"])
    assert_equal("http://localhost:3000/callback", params["redirect_uri"])
    assert_equal("user-read-private user-read-email", params["scope"])
    assert_equal("csrf_protection_token", params["state"])
    assert_equal("true", params["show_dialog"])
  end

  def test_authorization_url_url_encodes_redirect_uri
    spotted =
      Spotted::Client.new(
        client_id: "test_client_id",
        client_secret: "test_client_secret"
      )

    url = spotted.authorization_url(
      redirect_uri: "http://localhost:3000/callback?foo=bar&baz=qux"
    )
    uri = URI.parse(url)
    params = URI.decode_www_form(uri.query).to_h

    assert_equal("http://localhost:3000/callback?foo=bar&baz=qux", params["redirect_uri"])
  end
end
