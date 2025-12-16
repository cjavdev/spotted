# typed: strong

module Spotted
  module Models
    module Me
      class ContextObject < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Spotted::Me::ContextObject, Spotted::Internal::AnyHash)
          end

        # External URLs for this context.
        sig { returns(T.nilable(Spotted::ExternalURLObject)) }
        attr_reader :external_urls

        sig { params(external_urls: Spotted::ExternalURLObject::OrHash).void }
        attr_writer :external_urls

        # A link to the Web API endpoint providing full details of the track.
        sig { returns(T.nilable(String)) }
        attr_reader :href

        sig { params(href: String).void }
        attr_writer :href

        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :published

        sig { params(published: T::Boolean).void }
        attr_writer :published

        # The object type, e.g. "artist", "playlist", "album", "show".
        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
        # context.
        sig { returns(T.nilable(String)) }
        attr_reader :uri

        sig { params(uri: String).void }
        attr_writer :uri

        sig do
          params(
            external_urls: Spotted::ExternalURLObject::OrHash,
            href: String,
            published: T::Boolean,
            type: String,
            uri: String
          ).returns(T.attached_class)
        end
        def self.new(
          # External URLs for this context.
          external_urls: nil,
          # A link to the Web API endpoint providing full details of the track.
          href: nil,
          # The playlist's public/private status (if it should be added to the user's
          # profile or not): `true` the playlist will be public, `false` the playlist will
          # be private, `null` the playlist status is not relevant. For more about
          # public/private status, see
          # [Working with Playlists](/documentation/web-api/concepts/playlists)
          published: nil,
          # The object type, e.g. "artist", "playlist", "album", "show".
          type: nil,
          # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
          # context.
          uri: nil
        )
        end

        sig do
          override.returns(
            {
              external_urls: Spotted::ExternalURLObject,
              href: String,
              published: T::Boolean,
              type: String,
              uri: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
