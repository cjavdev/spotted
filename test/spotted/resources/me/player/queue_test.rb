# frozen_string_literal: true

require_relative "../../../test_helper"

class Spotted::Test::Resources::Me::Player::QueueTest < Spotted::Test::ResourceTest
  def test_add_required_params
    skip("Prism tests are disabled")

    response = @spotted.me.player.queue.add(uri: "spotify:track:4iV5W9uYEdYUVa79Axb7Rh")

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @spotted.me.player.queue.get

    assert_pattern do
      response => Spotted::Models::Me::Player::QueueGetResponse
    end

    assert_pattern do
      response => {
        currently_playing: Spotted::Models::Me::Player::QueueGetResponse::CurrentlyPlaying | nil,
        published: Spotted::Internal::Type::Boolean | nil,
        queue: ^(Spotted::Internal::Type::ArrayOf[union: Spotted::Models::Me::Player::QueueGetResponse::Queue]) | nil
      }
    end
  end
end
