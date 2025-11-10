# frozen_string_literal: true

module Spotted
  [Spotted::Internal::Type::BaseModel, *Spotted::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, Spotted::Internal::AnyHash) } }
  end

  Spotted::Internal::Util.walk_namespaces(Spotted::Models).each do |mod|
    case mod
    in Spotted::Internal::Type::Enum | Spotted::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  Spotted::Internal::Util.walk_namespaces(Spotted::Models)
                         .lazy
                         .grep(Spotted::Internal::Type::Union)
                         .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  AlbumBulkRetrieveParams = Spotted::Models::AlbumBulkRetrieveParams

  AlbumListTracksParams = Spotted::Models::AlbumListTracksParams

  AlbumRestrictionObject = Spotted::Models::AlbumRestrictionObject

  AlbumRetrieveParams = Spotted::Models::AlbumRetrieveParams

  ArtistBulkRetrieveParams = Spotted::Models::ArtistBulkRetrieveParams

  ArtistListAlbumsParams = Spotted::Models::ArtistListAlbumsParams

  ArtistListRelatedArtistsParams = Spotted::Models::ArtistListRelatedArtistsParams

  ArtistListTopTracksParams = Spotted::Models::ArtistListTopTracksParams

  ArtistObject = Spotted::Models::ArtistObject

  ArtistRetrieveParams = Spotted::Models::ArtistRetrieveParams

  AudioAnalysisRetrieveParams = Spotted::Models::AudioAnalysisRetrieveParams

  AudiobookBase = Spotted::Models::AudiobookBase

  AudiobookBulkRetrieveParams = Spotted::Models::AudiobookBulkRetrieveParams

  AudiobookListChaptersParams = Spotted::Models::AudiobookListChaptersParams

  AudiobookRetrieveParams = Spotted::Models::AudiobookRetrieveParams

  AudioFeatureBulkRetrieveParams = Spotted::Models::AudioFeatureBulkRetrieveParams

  AudioFeatureRetrieveParams = Spotted::Models::AudioFeatureRetrieveParams

  AuthorObject = Spotted::Models::AuthorObject

  Browse = Spotted::Models::Browse

  BrowseGetFeaturedPlaylistsParams = Spotted::Models::BrowseGetFeaturedPlaylistsParams

  BrowseGetNewReleasesParams = Spotted::Models::BrowseGetNewReleasesParams

  ChapterBulkRetrieveParams = Spotted::Models::ChapterBulkRetrieveParams

  ChapterRestrictionObject = Spotted::Models::ChapterRestrictionObject

  ChapterRetrieveParams = Spotted::Models::ChapterRetrieveParams

  CopyrightObject = Spotted::Models::CopyrightObject

  EpisodeBulkRetrieveParams = Spotted::Models::EpisodeBulkRetrieveParams

  EpisodeObject = Spotted::Models::EpisodeObject

  EpisodeRestrictionObject = Spotted::Models::EpisodeRestrictionObject

  EpisodeRetrieveParams = Spotted::Models::EpisodeRetrieveParams

  ExternalIDObject = Spotted::Models::ExternalIDObject

  ExternalURLObject = Spotted::Models::ExternalURLObject

  FollowersObject = Spotted::Models::FollowersObject

  ImageObject = Spotted::Models::ImageObject

  LinkedTrackObject = Spotted::Models::LinkedTrackObject

  MarketListParams = Spotted::Models::MarketListParams

  Me = Spotted::Models::Me

  MeRetrieveParams = Spotted::Models::MeRetrieveParams

  NarratorObject = Spotted::Models::NarratorObject

  PagingPlaylistObject = Spotted::Models::PagingPlaylistObject

  PlaylistRetrieveParams = Spotted::Models::PlaylistRetrieveParams

  Playlists = Spotted::Models::Playlists

  PlaylistTrackObject = Spotted::Models::PlaylistTrackObject

  PlaylistTracksRefObject = Spotted::Models::PlaylistTracksRefObject

  PlaylistUpdateParams = Spotted::Models::PlaylistUpdateParams

  PlaylistUserObject = Spotted::Models::PlaylistUserObject

  RecommendationGetParams = Spotted::Models::RecommendationGetParams

  RecommendationListAvailableGenreSeedsParams =
    Spotted::Models::RecommendationListAvailableGenreSeedsParams

  ResumePointObject = Spotted::Models::ResumePointObject

  SearchSearchParams = Spotted::Models::SearchSearchParams

  ShowBase = Spotted::Models::ShowBase

  ShowBulkRetrieveParams = Spotted::Models::ShowBulkRetrieveParams

  ShowListEpisodesParams = Spotted::Models::ShowListEpisodesParams

  ShowRetrieveParams = Spotted::Models::ShowRetrieveParams

  SimplifiedArtistObject = Spotted::Models::SimplifiedArtistObject

  SimplifiedChapterObject = Spotted::Models::SimplifiedChapterObject

  SimplifiedEpisodeObject = Spotted::Models::SimplifiedEpisodeObject

  SimplifiedPlaylistObject = Spotted::Models::SimplifiedPlaylistObject

  SimplifiedTrackObject = Spotted::Models::SimplifiedTrackObject

  TimeIntervalObject = Spotted::Models::TimeIntervalObject

  TrackBulkRetrieveParams = Spotted::Models::TrackBulkRetrieveParams

  TrackObject = Spotted::Models::TrackObject

  TrackRestrictionObject = Spotted::Models::TrackRestrictionObject

  TrackRetrieveParams = Spotted::Models::TrackRetrieveParams

  UserRetrieveProfileParams = Spotted::Models::UserRetrieveProfileParams

  Users = Spotted::Models::Users
end
