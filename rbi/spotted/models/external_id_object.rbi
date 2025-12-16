# typed: strong

module Spotted
  module Models
    class ExternalIDObject < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Spotted::ExternalIDObject, Spotted::Internal::AnyHash)
        end

      # [International Article Number](http://en.wikipedia.org/wiki/International_Article_Number_%28EAN%29)
      sig { returns(T.nilable(String)) }
      attr_reader :ean

      sig { params(ean: String).void }
      attr_writer :ean

      # [International Standard Recording Code](http://en.wikipedia.org/wiki/International_Standard_Recording_Code)
      sig { returns(T.nilable(String)) }
      attr_reader :isrc

      sig { params(isrc: String).void }
      attr_writer :isrc

      # The playlist's public/private status (if it should be added to the user's
      # profile or not): `true` the playlist will be public, `false` the playlist will
      # be private, `null` the playlist status is not relevant. For more about
      # public/private status, see
      # [Working with Playlists](/documentation/web-api/concepts/playlists)
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :published

      sig { params(published: T::Boolean).void }
      attr_writer :published

      # [Universal Product Code](http://en.wikipedia.org/wiki/Universal_Product_Code)
      sig { returns(T.nilable(String)) }
      attr_reader :upc

      sig { params(upc: String).void }
      attr_writer :upc

      sig do
        params(
          ean: String,
          isrc: String,
          published: T::Boolean,
          upc: String
        ).returns(T.attached_class)
      end
      def self.new(
        # [International Article Number](http://en.wikipedia.org/wiki/International_Article_Number_%28EAN%29)
        ean: nil,
        # [International Standard Recording Code](http://en.wikipedia.org/wiki/International_Standard_Recording_Code)
        isrc: nil,
        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        published: nil,
        # [Universal Product Code](http://en.wikipedia.org/wiki/Universal_Product_Code)
        upc: nil
      )
      end

      sig do
        override.returns(
          { ean: String, isrc: String, published: T::Boolean, upc: String }
        )
      end
      def to_hash
      end
    end
  end
end
