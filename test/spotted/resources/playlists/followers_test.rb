# frozen_string_literal: true

require_relative "../../test_helper"

class Spotted::Test::Resources::Playlists::FollowersTest < Spotted::Test::ResourceTest
  def test_check
    skip("Mock server tests are disabled")

    response = @spotted.playlists.followers.check("3cEYpjA9oz9GiPac4AsH4n")

    assert_pattern do
      response => ^(Spotted::Internal::Type::ArrayOf[Spotted::Internal::Type::Boolean])
    end
  end

  def test_follow
    skip("Mock server tests are disabled")

    response = @spotted.playlists.followers.follow("3cEYpjA9oz9GiPac4AsH4n")

    assert_pattern do
      response => nil
    end
  end

  def test_unfollow
    skip("Mock server tests are disabled")

    response = @spotted.playlists.followers.unfollow("3cEYpjA9oz9GiPac4AsH4n")

    assert_pattern do
      response => nil
    end
  end
end
