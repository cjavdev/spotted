# frozen_string_literal: true

require_relative "../../test_helper"

class Spotted::Test::Resources::Me::FollowingTest < Spotted::Test::ResourceTest
  def test_list_required_params
    skip("Prism tests are disabled")

    response = @spotted.me.following.list(type: :artist)

    assert_pattern do
      response => Spotted::Models::Me::FollowingListResponse
    end

    assert_pattern do
      response => {
        artists: Spotted::Models::Me::FollowingListResponse::Artists
      }
    end
  end

  def test_check_required_params
    skip("Prism tests are disabled")

    response =
      @spotted.me.following.check(
        ids: "2CIMQHirSU0MQqyYHq0eOx,57dN52uHvrHOxijzpIgu3E,1vCWHaC5f2uS3yhpwWbIA6",
        type: :artist
      )

    assert_pattern do
      response => ^(Spotted::Internal::Type::ArrayOf[Spotted::Internal::Type::Boolean])
    end
  end

  def test_follow_required_params
    skip("Prism tests are disabled")

    response = @spotted.me.following.follow(ids: ["string"])

    assert_pattern do
      response => nil
    end
  end

  def test_unfollow
    skip("Prism tests are disabled")

    response = @spotted.me.following.unfollow

    assert_pattern do
      response => nil
    end
  end
end
