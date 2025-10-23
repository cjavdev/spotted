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

  AlbumGetTracksParams = Spotted::Models::AlbumGetTracksParams

  AlbumListParams = Spotted::Models::AlbumListParams

  AlbumRetrieveParams = Spotted::Models::AlbumRetrieveParams

  ArtistListAlbumsParams = Spotted::Models::ArtistListAlbumsParams

  ArtistListParams = Spotted::Models::ArtistListParams

  ArtistListRelatedArtistsParams = Spotted::Models::ArtistListRelatedArtistsParams

  ArtistListTopTracksParams = Spotted::Models::ArtistListTopTracksParams

  ArtistRetrieveParams = Spotted::Models::ArtistRetrieveParams

  AudioAnalysisRetrieveParams = Spotted::Models::AudioAnalysisRetrieveParams

  AudiobookGetChaptersParams = Spotted::Models::AudiobookGetChaptersParams

  AudiobookListParams = Spotted::Models::AudiobookListParams

  AudiobookRetrieveParams = Spotted::Models::AudiobookRetrieveParams

  AudioFeatureListParams = Spotted::Models::AudioFeatureListParams

  AudioFeatureRetrieveParams = Spotted::Models::AudioFeatureRetrieveParams

  Browse = Spotted::Models::Browse

  BrowseGetFeaturedPlaylistsParams = Spotted::Models::BrowseGetFeaturedPlaylistsParams

  BrowseGetNewReleasesParams = Spotted::Models::BrowseGetNewReleasesParams

  ChapterListParams = Spotted::Models::ChapterListParams

  ChapterRetrieveParams = Spotted::Models::ChapterRetrieveParams

  EpisodeListParams = Spotted::Models::EpisodeListParams

  EpisodeRetrieveParams = Spotted::Models::EpisodeRetrieveParams

  MarketListParams = Spotted::Models::MarketListParams

  Me = Spotted::Models::Me

  MeRetrieveParams = Spotted::Models::MeRetrieveParams

  PlaylistRetrieveParams = Spotted::Models::PlaylistRetrieveParams

  Playlists = Spotted::Models::Playlists

  PlaylistUpdateParams = Spotted::Models::PlaylistUpdateParams

  RecommendationGetAvailableGenreSeedsParams = Spotted::Models::RecommendationGetAvailableGenreSeedsParams

  RecommendationGetParams = Spotted::Models::RecommendationGetParams

  SearchRetrieveParams = Spotted::Models::SearchRetrieveParams

  ShowGetEpisodesParams = Spotted::Models::ShowGetEpisodesParams

  ShowListParams = Spotted::Models::ShowListParams

  ShowRetrieveParams = Spotted::Models::ShowRetrieveParams

  TrackListParams = Spotted::Models::TrackListParams

  TrackRetrieveParams = Spotted::Models::TrackRetrieveParams

  UserRetrieveProfileParams = Spotted::Models::UserRetrieveProfileParams

  Users = Spotted::Models::Users
end
