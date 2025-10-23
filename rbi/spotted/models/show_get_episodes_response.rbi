# typed: strong

module Spotted
  module Models
    class ShowGetEpisodesResponse < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Spotted::Models::ShowGetEpisodesResponse,
            Spotted::Internal::AnyHash
          )
        end

      # A link to the Web API endpoint returning the full result of the request
      sig { returns(String) }
      attr_accessor :href

      sig { returns(T::Array[Spotted::Models::ShowGetEpisodesResponse::Item]) }
      attr_accessor :items

      # The maximum number of items in the response (as set in the query or by default).
      sig { returns(Integer) }
      attr_accessor :limit

      # URL to the next page of items. ( `null` if none)
      sig { returns(T.nilable(String)) }
      attr_accessor :next_

      # The offset of the items returned (as set in the query or by default)
      sig { returns(Integer) }
      attr_accessor :offset

      # URL to the previous page of items. ( `null` if none)
      sig { returns(T.nilable(String)) }
      attr_accessor :previous

      # The total number of items available to return.
      sig { returns(Integer) }
      attr_accessor :total

      sig do
        params(
          href: String,
          items:
            T::Array[Spotted::Models::ShowGetEpisodesResponse::Item::OrHash],
          limit: Integer,
          next_: T.nilable(String),
          offset: Integer,
          previous: T.nilable(String),
          total: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # A link to the Web API endpoint returning the full result of the request
        href:,
        items:,
        # The maximum number of items in the response (as set in the query or by default).
        limit:,
        # URL to the next page of items. ( `null` if none)
        next_:,
        # The offset of the items returned (as set in the query or by default)
        offset:,
        # URL to the previous page of items. ( `null` if none)
        previous:,
        # The total number of items available to return.
        total:
      )
      end

      sig do
        override.returns(
          {
            href: String,
            items: T::Array[Spotted::Models::ShowGetEpisodesResponse::Item],
            limit: Integer,
            next_: T.nilable(String),
            offset: Integer,
            previous: T.nilable(String),
            total: Integer
          }
        )
      end
      def to_hash
      end

      class Item < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::ShowGetEpisodesResponse::Item,
              Spotted::Internal::AnyHash
            )
          end

        # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
        # episode.
        sig { returns(String) }
        attr_accessor :id

        # A URL to a 30 second preview (MP3 format) of the episode. `null` if not
        # available.
        sig { returns(T.nilable(String)) }
        attr_accessor :audio_preview_url

        # A description of the episode. HTML tags are stripped away from this field, use
        # `html_description` field in case HTML tags are needed.
        sig { returns(String) }
        attr_accessor :description

        # The episode length in milliseconds.
        sig { returns(Integer) }
        attr_accessor :duration_ms

        # Whether or not the episode has explicit content (true = yes it does; false = no
        # it does not OR unknown).
        sig { returns(T::Boolean) }
        attr_accessor :explicit

        # External URLs for this episode.
        sig do
          returns(Spotted::Models::ShowGetEpisodesResponse::Item::ExternalURLs)
        end
        attr_reader :external_urls

        sig do
          params(
            external_urls:
              Spotted::Models::ShowGetEpisodesResponse::Item::ExternalURLs::OrHash
          ).void
        end
        attr_writer :external_urls

        # A link to the Web API endpoint providing full details of the episode.
        sig { returns(String) }
        attr_accessor :href

        # A description of the episode. This field may contain HTML tags.
        sig { returns(String) }
        attr_accessor :html_description

        # The cover art for the episode in various sizes, widest first.
        sig do
          returns(
            T::Array[Spotted::Models::ShowGetEpisodesResponse::Item::Image]
          )
        end
        attr_accessor :images

        # True if the episode is hosted outside of Spotify's CDN.
        sig { returns(T::Boolean) }
        attr_accessor :is_externally_hosted

        # True if the episode is playable in the given market. Otherwise false.
        sig { returns(T::Boolean) }
        attr_accessor :is_playable

        # A list of the languages used in the episode, identified by their
        # [ISO 639-1](https://en.wikipedia.org/wiki/ISO_639) code.
        sig { returns(T::Array[String]) }
        attr_accessor :languages

        # The name of the episode.
        sig { returns(String) }
        attr_accessor :name

        # The date the episode was first released, for example `"1981-12-15"`. Depending
        # on the precision, it might be shown as `"1981"` or `"1981-12"`.
        sig { returns(String) }
        attr_accessor :release_date

        # The precision with which `release_date` value is known.
        sig do
          returns(
            Spotted::Models::ShowGetEpisodesResponse::Item::ReleaseDatePrecision::TaggedSymbol
          )
        end
        attr_accessor :release_date_precision

        # The object type.
        sig do
          returns(
            Spotted::Models::ShowGetEpisodesResponse::Item::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
        # episode.
        sig { returns(String) }
        attr_accessor :uri

        # The language used in the episode, identified by a
        # [ISO 639](https://en.wikipedia.org/wiki/ISO_639) code. This field is deprecated
        # and might be removed in the future. Please use the `languages` field instead.
        sig { returns(T.nilable(String)) }
        attr_reader :language

        sig { params(language: String).void }
        attr_writer :language

        # Included in the response when a content restriction is applied.
        sig do
          returns(
            T.nilable(
              Spotted::Models::ShowGetEpisodesResponse::Item::Restrictions
            )
          )
        end
        attr_reader :restrictions

        sig do
          params(
            restrictions:
              Spotted::Models::ShowGetEpisodesResponse::Item::Restrictions::OrHash
          ).void
        end
        attr_writer :restrictions

        # The user's most recent position in the episode. Set if the supplied access token
        # is a user token and has the scope 'user-read-playback-position'.
        sig do
          returns(
            T.nilable(
              Spotted::Models::ShowGetEpisodesResponse::Item::ResumePoint
            )
          )
        end
        attr_reader :resume_point

        sig do
          params(
            resume_point:
              Spotted::Models::ShowGetEpisodesResponse::Item::ResumePoint::OrHash
          ).void
        end
        attr_writer :resume_point

        sig do
          params(
            id: String,
            audio_preview_url: T.nilable(String),
            description: String,
            duration_ms: Integer,
            explicit: T::Boolean,
            external_urls:
              Spotted::Models::ShowGetEpisodesResponse::Item::ExternalURLs::OrHash,
            href: String,
            html_description: String,
            images:
              T::Array[
                Spotted::Models::ShowGetEpisodesResponse::Item::Image::OrHash
              ],
            is_externally_hosted: T::Boolean,
            is_playable: T::Boolean,
            languages: T::Array[String],
            name: String,
            release_date: String,
            release_date_precision:
              Spotted::Models::ShowGetEpisodesResponse::Item::ReleaseDatePrecision::OrSymbol,
            type:
              Spotted::Models::ShowGetEpisodesResponse::Item::Type::OrSymbol,
            uri: String,
            language: String,
            restrictions:
              Spotted::Models::ShowGetEpisodesResponse::Item::Restrictions::OrHash,
            resume_point:
              Spotted::Models::ShowGetEpisodesResponse::Item::ResumePoint::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
          # episode.
          id:,
          # A URL to a 30 second preview (MP3 format) of the episode. `null` if not
          # available.
          audio_preview_url:,
          # A description of the episode. HTML tags are stripped away from this field, use
          # `html_description` field in case HTML tags are needed.
          description:,
          # The episode length in milliseconds.
          duration_ms:,
          # Whether or not the episode has explicit content (true = yes it does; false = no
          # it does not OR unknown).
          explicit:,
          # External URLs for this episode.
          external_urls:,
          # A link to the Web API endpoint providing full details of the episode.
          href:,
          # A description of the episode. This field may contain HTML tags.
          html_description:,
          # The cover art for the episode in various sizes, widest first.
          images:,
          # True if the episode is hosted outside of Spotify's CDN.
          is_externally_hosted:,
          # True if the episode is playable in the given market. Otherwise false.
          is_playable:,
          # A list of the languages used in the episode, identified by their
          # [ISO 639-1](https://en.wikipedia.org/wiki/ISO_639) code.
          languages:,
          # The name of the episode.
          name:,
          # The date the episode was first released, for example `"1981-12-15"`. Depending
          # on the precision, it might be shown as `"1981"` or `"1981-12"`.
          release_date:,
          # The precision with which `release_date` value is known.
          release_date_precision:,
          # The object type.
          type:,
          # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
          # episode.
          uri:,
          # The language used in the episode, identified by a
          # [ISO 639](https://en.wikipedia.org/wiki/ISO_639) code. This field is deprecated
          # and might be removed in the future. Please use the `languages` field instead.
          language: nil,
          # Included in the response when a content restriction is applied.
          restrictions: nil,
          # The user's most recent position in the episode. Set if the supplied access token
          # is a user token and has the scope 'user-read-playback-position'.
          resume_point: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              audio_preview_url: T.nilable(String),
              description: String,
              duration_ms: Integer,
              explicit: T::Boolean,
              external_urls:
                Spotted::Models::ShowGetEpisodesResponse::Item::ExternalURLs,
              href: String,
              html_description: String,
              images:
                T::Array[Spotted::Models::ShowGetEpisodesResponse::Item::Image],
              is_externally_hosted: T::Boolean,
              is_playable: T::Boolean,
              languages: T::Array[String],
              name: String,
              release_date: String,
              release_date_precision:
                Spotted::Models::ShowGetEpisodesResponse::Item::ReleaseDatePrecision::TaggedSymbol,
              type:
                Spotted::Models::ShowGetEpisodesResponse::Item::Type::TaggedSymbol,
              uri: String,
              language: String,
              restrictions:
                Spotted::Models::ShowGetEpisodesResponse::Item::Restrictions,
              resume_point:
                Spotted::Models::ShowGetEpisodesResponse::Item::ResumePoint
            }
          )
        end
        def to_hash
        end

        class ExternalURLs < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::ShowGetEpisodesResponse::Item::ExternalURLs,
                Spotted::Internal::AnyHash
              )
            end

          # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
          # object.
          sig { returns(T.nilable(String)) }
          attr_reader :spotify

          sig { params(spotify: String).void }
          attr_writer :spotify

          # External URLs for this episode.
          sig { params(spotify: String).returns(T.attached_class) }
          def self.new(
            # The [Spotify URL](/documentation/web-api/concepts/spotify-uris-ids) for the
            # object.
            spotify: nil
          )
          end

          sig { override.returns({ spotify: String }) }
          def to_hash
          end
        end

        class Image < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::ShowGetEpisodesResponse::Item::Image,
                Spotted::Internal::AnyHash
              )
            end

          # The image height in pixels.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :height

          # The source URL of the image.
          sig { returns(String) }
          attr_accessor :url

          # The image width in pixels.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :width

          sig do
            params(
              height: T.nilable(Integer),
              url: String,
              width: T.nilable(Integer)
            ).returns(T.attached_class)
          end
          def self.new(
            # The image height in pixels.
            height:,
            # The source URL of the image.
            url:,
            # The image width in pixels.
            width:
          )
          end

          sig do
            override.returns(
              {
                height: T.nilable(Integer),
                url: String,
                width: T.nilable(Integer)
              }
            )
          end
          def to_hash
          end
        end

        # The precision with which `release_date` value is known.
        module ReleaseDatePrecision
          extend Spotted::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Spotted::Models::ShowGetEpisodesResponse::Item::ReleaseDatePrecision
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          YEAR =
            T.let(
              :year,
              Spotted::Models::ShowGetEpisodesResponse::Item::ReleaseDatePrecision::TaggedSymbol
            )
          MONTH =
            T.let(
              :month,
              Spotted::Models::ShowGetEpisodesResponse::Item::ReleaseDatePrecision::TaggedSymbol
            )
          DAY =
            T.let(
              :day,
              Spotted::Models::ShowGetEpisodesResponse::Item::ReleaseDatePrecision::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Spotted::Models::ShowGetEpisodesResponse::Item::ReleaseDatePrecision::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The object type.
        module Type
          extend Spotted::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Spotted::Models::ShowGetEpisodesResponse::Item::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EPISODE =
            T.let(
              :episode,
              Spotted::Models::ShowGetEpisodesResponse::Item::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Spotted::Models::ShowGetEpisodesResponse::Item::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Restrictions < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::ShowGetEpisodesResponse::Item::Restrictions,
                Spotted::Internal::AnyHash
              )
            end

          # The reason for the restriction. Supported values:
          #
          # - `market` - The content item is not available in the given market.
          # - `product` - The content item is not available for the user's subscription
          #   type.
          # - `explicit` - The content item is explicit and the user's account is set to not
          #   play explicit content.
          #
          # Additional reasons may be added in the future. **Note**: If you use this field,
          # make sure that your application safely handles unknown values.
          sig { returns(T.nilable(String)) }
          attr_reader :reason

          sig { params(reason: String).void }
          attr_writer :reason

          # Included in the response when a content restriction is applied.
          sig { params(reason: String).returns(T.attached_class) }
          def self.new(
            # The reason for the restriction. Supported values:
            #
            # - `market` - The content item is not available in the given market.
            # - `product` - The content item is not available for the user's subscription
            #   type.
            # - `explicit` - The content item is explicit and the user's account is set to not
            #   play explicit content.
            #
            # Additional reasons may be added in the future. **Note**: If you use this field,
            # make sure that your application safely handles unknown values.
            reason: nil
          )
          end

          sig { override.returns({ reason: String }) }
          def to_hash
          end
        end

        class ResumePoint < Spotted::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Spotted::Models::ShowGetEpisodesResponse::Item::ResumePoint,
                Spotted::Internal::AnyHash
              )
            end

          # Whether or not the episode has been fully played by the user.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :fully_played

          sig { params(fully_played: T::Boolean).void }
          attr_writer :fully_played

          # The user's most recent position in the episode in milliseconds.
          sig { returns(T.nilable(Integer)) }
          attr_reader :resume_position_ms

          sig { params(resume_position_ms: Integer).void }
          attr_writer :resume_position_ms

          # The user's most recent position in the episode. Set if the supplied access token
          # is a user token and has the scope 'user-read-playback-position'.
          sig do
            params(
              fully_played: T::Boolean,
              resume_position_ms: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # Whether or not the episode has been fully played by the user.
            fully_played: nil,
            # The user's most recent position in the episode in milliseconds.
            resume_position_ms: nil
          )
          end

          sig do
            override.returns(
              { fully_played: T::Boolean, resume_position_ms: Integer }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
