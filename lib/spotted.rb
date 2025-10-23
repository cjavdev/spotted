# frozen_string_literal: true

# Standard libraries.
# rubocop:disable Lint/RedundantRequireStatement
require "English"
require "base64"
require "cgi"
require "date"
require "erb"
require "etc"
require "json"
require "net/http"
require "pathname"
require "rbconfig"
require "securerandom"
require "set"
require "stringio"
require "thread"
require "time"
require "uri"
# rubocop:enable Lint/RedundantRequireStatement

# We already ship the preferred sorbet manifests in the package itself.
# `tapioca` currently does not offer us a way to opt out of unnecessary compilation.
if Object.const_defined?(:Tapioca) &&
   caller.chain([$PROGRAM_NAME]).chain(ARGV).any?(/tapioca/) &&
   ARGV.none?(/dsl/)
  return
end

# Gems.
require "connection_pool"

# Package files.
require_relative "spotted/version"
require_relative "spotted/internal/util"
require_relative "spotted/internal/type/converter"
require_relative "spotted/internal/type/unknown"
require_relative "spotted/internal/type/boolean"
require_relative "spotted/internal/type/file_input"
require_relative "spotted/internal/type/enum"
require_relative "spotted/internal/type/union"
require_relative "spotted/internal/type/array_of"
require_relative "spotted/internal/type/hash_of"
require_relative "spotted/internal/type/base_model"
require_relative "spotted/internal/type/base_page"
require_relative "spotted/internal/type/request_parameters"
require_relative "spotted/internal"
require_relative "spotted/request_options"
require_relative "spotted/file_part"
require_relative "spotted/errors"
require_relative "spotted/internal/transport/base_client"
require_relative "spotted/internal/transport/pooled_net_requester"
require_relative "spotted/client"
require_relative "spotted/internal/oauth2"
require_relative "spotted/internal/cursor_url_page"
require_relative "spotted/models/playlist_user_object"
require_relative "spotted/models/album_list_params"
require_relative "spotted/models/album_list_response"
require_relative "spotted/models/album_restriction_object"
require_relative "spotted/models/album_retrieve_params"
require_relative "spotted/models/album_retrieve_response"
require_relative "spotted/models/artist_object"
require_relative "spotted/models/author_object"
require_relative "spotted/models/chapter_restriction_object"
require_relative "spotted/models/copyright_object"
require_relative "spotted/models/episode_object"
require_relative "spotted/models/episode_restriction_object"
require_relative "spotted/models/external_id_object"
require_relative "spotted/models/external_url_object"
require_relative "spotted/models/followers_object"
require_relative "spotted/models/image_object"
require_relative "spotted/models/linked_track_object"
require_relative "spotted/models/narrator_object"
require_relative "spotted/models/paging_playlist_object"
require_relative "spotted/models/playlist_track_object"
require_relative "spotted/models/playlist_tracks_ref_object"
require_relative "spotted/models/resume_point_object"
require_relative "spotted/models/simplified_artist_object"
require_relative "spotted/models/simplified_episode_object"
require_relative "spotted/models/simplified_playlist_object"
require_relative "spotted/models/simplified_track_object"
require_relative "spotted/models/track_object"
require_relative "spotted/models/track_restriction_object"
require_relative "spotted/models"
require_relative "spotted/resources/albums"
