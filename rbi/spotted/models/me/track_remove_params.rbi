# typed: strong

module Spotted
  module Models
    module Me
      class TrackRemoveParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Spotted::Me::TrackRemoveParams, Spotted::Internal::AnyHash)
          end

        # A JSON array of the
        # [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example:
        # `["4iV5W9uYEdYUVa79Axb7Rh", "1301WleyT98MSxVHPZCA6M"]`<br/>A maximum of 50 items
        # can be specified in one request. _**Note**: if the `ids` parameter is present in
        # the query string, any IDs listed here in the body will be ignored._
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :ids

        sig { params(ids: T::Array[String]).void }
        attr_writer :ids

        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :published

        sig { params(published: T::Boolean).void }
        attr_writer :published

        sig do
          params(
            ids: T::Array[String],
            published: T::Boolean,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A JSON array of the
          # [Spotify IDs](/documentation/web-api/concepts/spotify-uris-ids). For example:
          # `["4iV5W9uYEdYUVa79Axb7Rh", "1301WleyT98MSxVHPZCA6M"]`<br/>A maximum of 50 items
          # can be specified in one request. _**Note**: if the `ids` parameter is present in
          # the query string, any IDs listed here in the body will be ignored._
          ids: nil,
          # The playlist's public/private status (if it should be added to the user's
          # profile or not): `true` the playlist will be public, `false` the playlist will
          # be private, `null` the playlist status is not relevant. For more about
          # public/private status, see
          # [Working with Playlists](/documentation/web-api/concepts/playlists)
          published: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              ids: T::Array[String],
              published: T::Boolean,
              request_options: Spotted::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
