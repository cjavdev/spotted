# frozen_string_literal: true

module Spotted
  module Models
    module Playlists
      # @see Spotted::Resources::Playlists::Followers#follow
      class FollowerFollowParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        # @!attribute paths_request_body_content_application_json_schema_properties_published
        #   Defaults to `true`. If `true` the playlist will be included in user's public
        #   playlists (added to profile), if `false` it will remain private. For more about
        #   public/private status, see
        #   [Working with Playlists](/documentation/web-api/concepts/playlists)
        #
        #   @return [Boolean, nil]
        optional :paths_request_body_content_application_json_schema_properties_published,
                 Spotted::Internal::Type::Boolean,
                 api_name: :"$.paths['*'].*.requestBody.content['application/json'].schema.properties.published"

        # @!method initialize(paths_request_body_content_application_json_schema_properties_published: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Playlists::FollowerFollowParams} for more details.
        #
        #   @param paths_request_body_content_application_json_schema_properties_published [Boolean] Defaults to `true`. If `true` the playlist will be included in user's public pla
        #
        #   @param request_options [Spotted::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
