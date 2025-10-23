# frozen_string_literal: true

require_relative "../../test_helper"

class Spotted::Test::Resources::Me::PlayerTest < Spotted::Test::ResourceTest
  def test_get_currently_playing
    skip("Prism tests are disabled")

    response = @spotted.me.player.get_currently_playing

    assert_pattern do
      response => Spotted::Models::Me::PlayerGetCurrentlyPlayingResponse
    end

    assert_pattern do
      response => {
        actions: Spotted::Models::Me::PlayerGetCurrentlyPlayingResponse::Actions | nil,
        context: Spotted::Me::ContextObject | nil,
        currently_playing_type: String | nil,
        device: Spotted::Me::DeviceObject | nil,
        is_playing: Spotted::Internal::Type::Boolean | nil,
        item: Spotted::Models::Me::PlayerGetCurrentlyPlayingResponse::Item | nil,
        progress_ms: Integer | nil,
        repeat_state: String | nil,
        shuffle_state: Spotted::Internal::Type::Boolean | nil,
        timestamp: Integer | nil
      }
    end
  end

  def test_get_devices
    skip("Prism tests are disabled")

    response = @spotted.me.player.get_devices

    assert_pattern do
      response => Spotted::Models::Me::PlayerGetDevicesResponse
    end

    assert_pattern do
      response => {
        devices: ^(Spotted::Internal::Type::ArrayOf[Spotted::Me::DeviceObject])
      }
    end
  end

  def test_get_state
    skip("Prism tests are disabled")

    response = @spotted.me.player.get_state

    assert_pattern do
      response => Spotted::Models::Me::PlayerGetStateResponse
    end

    assert_pattern do
      response => {
        actions: Spotted::Models::Me::PlayerGetStateResponse::Actions | nil,
        context: Spotted::Me::ContextObject | nil,
        currently_playing_type: String | nil,
        device: Spotted::Me::DeviceObject | nil,
        is_playing: Spotted::Internal::Type::Boolean | nil,
        item: Spotted::Models::Me::PlayerGetStateResponse::Item | nil,
        progress_ms: Integer | nil,
        repeat_state: String | nil,
        shuffle_state: Spotted::Internal::Type::Boolean | nil,
        timestamp: Integer | nil
      }
    end
  end

  def test_list_recently_played
    skip("Prism tests are disabled")

    response = @spotted.me.player.list_recently_played

    assert_pattern do
      response => Spotted::Internal::CursorURLPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Spotted::Models::Me::PlayerListRecentlyPlayedResponse
    end

    assert_pattern do
      row => {
        context: Spotted::Me::ContextObject | nil,
        played_at: Time | nil,
        track: Spotted::TrackObject | nil
      }
    end
  end

  def test_pause_playback
    skip("Prism tests are disabled")

    response = @spotted.me.player.pause_playback

    assert_pattern do
      response => nil
    end
  end

  def test_seek_to_position_required_params
    skip("Prism tests are disabled")

    response = @spotted.me.player.seek_to_position(position_ms: 25_000)

    assert_pattern do
      response => nil
    end
  end

  def test_set_repeat_mode_required_params
    skip("Prism tests are disabled")

    response = @spotted.me.player.set_repeat_mode(state: "context")

    assert_pattern do
      response => nil
    end
  end

  def test_set_volume_required_params
    skip("Prism tests are disabled")

    response = @spotted.me.player.set_volume(volume_percent: 50)

    assert_pattern do
      response => nil
    end
  end

  def test_skip_next
    skip("Prism tests are disabled")

    response = @spotted.me.player.skip_next

    assert_pattern do
      response => nil
    end
  end

  def test_skip_previous
    skip("Prism tests are disabled")

    response = @spotted.me.player.skip_previous

    assert_pattern do
      response => nil
    end
  end

  def test_start_playback
    skip("Prism tests are disabled")

    response = @spotted.me.player.start_playback

    assert_pattern do
      response => nil
    end
  end

  def test_toggle_shuffle_required_params
    skip("Prism tests are disabled")

    response = @spotted.me.player.toggle_shuffle(state: true)

    assert_pattern do
      response => nil
    end
  end

  def test_transfer_required_params
    skip("Prism tests are disabled")

    response = @spotted.me.player.transfer(device_ids: ["74ASZWbe4lXaubB36ztrGX"])

    assert_pattern do
      response => nil
    end
  end
end
