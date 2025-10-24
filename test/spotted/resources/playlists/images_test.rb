# frozen_string_literal: true

require_relative "../../test_helper"

class Spotted::Test::Resources::Playlists::ImagesTest < Spotted::Test::ResourceTest
  def test_update_required_params
    skip("Prism tests are disabled")

    # Ignore Layout/LineLength
    # rubocop:disable Layout/LineLength
    response =
      @spotted.playlists.images.update(
        "3cEYpjA9oz9GiPac4AsH4n",
        body: "/9j/2wCEABoZGSccJz4lJT5CLy8vQkc9Ozs9R0dHR0dHR0dHR0dHR0dHR0dHR0dHR0dHR0dHR0dHR0dHR0dHR0dHR0dHR0cBHCcnMyYzPSYmPUc9Mj1HR0dEREdHR0dHR0dHR0dHR0dHR0dHR0dHR0dHR0dHR0dHR0dHR0dHR0dHR0dHR0dHR//dAAQAAf/uAA5BZG9iZQBkwAAAAAH/wAARCAABAAEDACIAAREBAhEB/8QASwABAQAAAAAAAAAAAAAAAAAAAAYBAQAAAAAAAAAAAAAAAAAAAAAQAQAAAAAAAAAAAAAAAAAAAAARAQAAAAAAAAAAAAAAAAAAAAD/2gAMAwAAARECEQA/AJgAH//Z"
      )
    # rubocop:enable Layout/LineLength

    assert_pattern do
      response => nil
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @spotted.playlists.images.list("3cEYpjA9oz9GiPac4AsH4n")

    assert_pattern do
      response => ^(Spotted::Internal::Type::ArrayOf[Spotted::ImageObject])
    end
  end
end
