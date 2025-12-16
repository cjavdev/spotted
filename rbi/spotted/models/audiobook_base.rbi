# typed: strong

module Spotted
  module Models
    class AudiobookBase < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Spotted::AudiobookBase, Spotted::Internal::AnyHash)
        end

      # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
      # audiobook.
      sig { returns(String) }
      attr_accessor :id

      # The author(s) for the audiobook.
      sig { returns(T::Array[Spotted::AuthorObject]) }
      attr_accessor :authors

      # A list of the countries in which the audiobook can be played, identified by
      # their [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)
      # code.
      sig { returns(T::Array[String]) }
      attr_accessor :available_markets

      # The copyright statements of the audiobook.
      sig { returns(T::Array[Spotted::CopyrightObject]) }
      attr_accessor :copyrights

      # A description of the audiobook. HTML tags are stripped away from this field, use
      # `html_description` field in case HTML tags are needed.
      sig { returns(String) }
      attr_accessor :description

      # Whether or not the audiobook has explicit content (true = yes it does; false =
      # no it does not OR unknown).
      sig { returns(T::Boolean) }
      attr_accessor :explicit

      # External URLs for this audiobook.
      sig { returns(Spotted::ExternalURLObject) }
      attr_reader :external_urls

      sig { params(external_urls: Spotted::ExternalURLObject::OrHash).void }
      attr_writer :external_urls

      # A link to the Web API endpoint providing full details of the audiobook.
      sig { returns(String) }
      attr_accessor :href

      # A description of the audiobook. This field may contain HTML tags.
      sig { returns(String) }
      attr_accessor :html_description

      # The cover art for the audiobook in various sizes, widest first.
      sig { returns(T::Array[Spotted::ImageObject]) }
      attr_accessor :images

      # A list of the languages used in the audiobook, identified by their
      # [ISO 639](https://en.wikipedia.org/wiki/ISO_639) code.
      sig { returns(T::Array[String]) }
      attr_accessor :languages

      # The media type of the audiobook.
      sig { returns(String) }
      attr_accessor :media_type

      # The name of the audiobook.
      sig { returns(String) }
      attr_accessor :name

      # The narrator(s) for the audiobook.
      sig { returns(T::Array[Spotted::NarratorObject]) }
      attr_accessor :narrators

      # The publisher of the audiobook.
      sig { returns(String) }
      attr_accessor :publisher

      # The number of chapters in this audiobook.
      sig { returns(Integer) }
      attr_accessor :total_chapters

      # The object type.
      sig { returns(Symbol) }
      attr_accessor :type

      # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
      # audiobook.
      sig { returns(String) }
      attr_accessor :uri

      # The edition of the audiobook.
      sig { returns(T.nilable(String)) }
      attr_reader :edition

      sig { params(edition: String).void }
      attr_writer :edition

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
          id: String,
          authors: T::Array[Spotted::AuthorObject::OrHash],
          available_markets: T::Array[String],
          copyrights: T::Array[Spotted::CopyrightObject::OrHash],
          description: String,
          explicit: T::Boolean,
          external_urls: Spotted::ExternalURLObject::OrHash,
          href: String,
          html_description: String,
          images: T::Array[Spotted::ImageObject::OrHash],
          languages: T::Array[String],
          media_type: String,
          name: String,
          narrators: T::Array[Spotted::NarratorObject::OrHash],
          publisher: String,
          total_chapters: Integer,
          uri: String,
          edition: String,
          published: T::Boolean,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the
        # audiobook.
        id:,
        # The author(s) for the audiobook.
        authors:,
        # A list of the countries in which the audiobook can be played, identified by
        # their [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)
        # code.
        available_markets:,
        # The copyright statements of the audiobook.
        copyrights:,
        # A description of the audiobook. HTML tags are stripped away from this field, use
        # `html_description` field in case HTML tags are needed.
        description:,
        # Whether or not the audiobook has explicit content (true = yes it does; false =
        # no it does not OR unknown).
        explicit:,
        # External URLs for this audiobook.
        external_urls:,
        # A link to the Web API endpoint providing full details of the audiobook.
        href:,
        # A description of the audiobook. This field may contain HTML tags.
        html_description:,
        # The cover art for the audiobook in various sizes, widest first.
        images:,
        # A list of the languages used in the audiobook, identified by their
        # [ISO 639](https://en.wikipedia.org/wiki/ISO_639) code.
        languages:,
        # The media type of the audiobook.
        media_type:,
        # The name of the audiobook.
        name:,
        # The narrator(s) for the audiobook.
        narrators:,
        # The publisher of the audiobook.
        publisher:,
        # The number of chapters in this audiobook.
        total_chapters:,
        # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the
        # audiobook.
        uri:,
        # The edition of the audiobook.
        edition: nil,
        # The playlist's public/private status (if it should be added to the user's
        # profile or not): `true` the playlist will be public, `false` the playlist will
        # be private, `null` the playlist status is not relevant. For more about
        # public/private status, see
        # [Working with Playlists](/documentation/web-api/concepts/playlists)
        published: nil,
        # The object type.
        type: :audiobook
      )
      end

      sig do
        override.returns(
          {
            id: String,
            authors: T::Array[Spotted::AuthorObject],
            available_markets: T::Array[String],
            copyrights: T::Array[Spotted::CopyrightObject],
            description: String,
            explicit: T::Boolean,
            external_urls: Spotted::ExternalURLObject,
            href: String,
            html_description: String,
            images: T::Array[Spotted::ImageObject],
            languages: T::Array[String],
            media_type: String,
            name: String,
            narrators: T::Array[Spotted::NarratorObject],
            publisher: String,
            total_chapters: Integer,
            type: Symbol,
            uri: String,
            edition: String,
            published: T::Boolean
          }
        )
      end
      def to_hash
      end
    end
  end
end
