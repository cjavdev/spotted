# typed: strong

module Spotted
  module Models
    module Me
      class ShowSaveParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Spotted::Me::ShowSaveParams, Spotted::Internal::AnyHash)
          end

        # A JSON array of the
        # [Spotify IDs](https://developer.spotify.com/documentation/web-api/#spotify-uris-and-ids).
        # A maximum of 50 items can be specified in one request. _Note: if the `ids`
        # parameter is present in the query string, any IDs listed here in the body will
        # be ignored._
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :body_ids

        sig { params(body_ids: T::Array[String]).void }
        attr_writer :body_ids

        sig do
          params(
            body_ids: T::Array[String],
            request_options: Spotted::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A JSON array of the
          # [Spotify IDs](https://developer.spotify.com/documentation/web-api/#spotify-uris-and-ids).
          # A maximum of 50 items can be specified in one request. _Note: if the `ids`
          # parameter is present in the query string, any IDs listed here in the body will
          # be ignored._
          body_ids: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              body_ids: T::Array[String],
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
