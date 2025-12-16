# frozen_string_literal: true

module Spotted
  module Models
    class AlbumRestrictionObject < Spotted::Internal::Type::BaseModel
      # @!attribute published
      #   The playlist's public/private status (if it should be added to the user's
      #   profile or not): `true` the playlist will be public, `false` the playlist will
      #   be private, `null` the playlist status is not relevant. For more about
      #   public/private status, see
      #   [Working with Playlists](/documentation/web-api/concepts/playlists)
      #
      #   @return [Boolean, nil]
      optional :published, Spotted::Internal::Type::Boolean

      # @!attribute reason
      #   The reason for the restriction. Albums may be restricted if the content is not
      #   available in a given market, to the user's subscription type, or when the user's
      #   account is set to not play explicit content. Additional reasons may be added in
      #   the future.
      #
      #   @return [Symbol, Spotted::Models::AlbumRestrictionObject::Reason, nil]
      optional :reason, enum: -> { Spotted::AlbumRestrictionObject::Reason }

      # @!method initialize(published: nil, reason: nil)
      #   Some parameter documentations has been truncated, see
      #   {Spotted::Models::AlbumRestrictionObject} for more details.
      #
      #   @param published [Boolean] The playlist's public/private status (if it should be added to the user's profil
      #
      #   @param reason [Symbol, Spotted::Models::AlbumRestrictionObject::Reason] The reason for the restriction. Albums may be restricted if the content is not a

      # The reason for the restriction. Albums may be restricted if the content is not
      # available in a given market, to the user's subscription type, or when the user's
      # account is set to not play explicit content. Additional reasons may be added in
      # the future.
      #
      # @see Spotted::Models::AlbumRestrictionObject#reason
      module Reason
        extend Spotted::Internal::Type::Enum

        MARKET = :market
        PRODUCT = :product
        EXPLICIT = :explicit

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
