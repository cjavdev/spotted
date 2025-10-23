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

  AlbumListParams = Spotted::Models::AlbumListParams

  AlbumRestrictionObject = Spotted::Models::AlbumRestrictionObject

  AlbumRetrieveParams = Spotted::Models::AlbumRetrieveParams

  ArtistObject = Spotted::Models::ArtistObject

  AuthorObject = Spotted::Models::AuthorObject

  ChapterRestrictionObject = Spotted::Models::ChapterRestrictionObject

  CopyrightObject = Spotted::Models::CopyrightObject

  EpisodeObject = Spotted::Models::EpisodeObject

  EpisodeRestrictionObject = Spotted::Models::EpisodeRestrictionObject

  ExternalIDObject = Spotted::Models::ExternalIDObject

  ExternalURLObject = Spotted::Models::ExternalURLObject

  FollowersObject = Spotted::Models::FollowersObject

  ImageObject = Spotted::Models::ImageObject

  LinkedTrackObject = Spotted::Models::LinkedTrackObject

  NarratorObject = Spotted::Models::NarratorObject

  PagingPlaylistObject = Spotted::Models::PagingPlaylistObject

  PlaylistTrackObject = Spotted::Models::PlaylistTrackObject

  PlaylistTracksRefObject = Spotted::Models::PlaylistTracksRefObject

  PlaylistUserObject = Spotted::Models::PlaylistUserObject

  ResumePointObject = Spotted::Models::ResumePointObject

  SimplifiedArtistObject = Spotted::Models::SimplifiedArtistObject

  SimplifiedEpisodeObject = Spotted::Models::SimplifiedEpisodeObject

  SimplifiedPlaylistObject = Spotted::Models::SimplifiedPlaylistObject

  SimplifiedTrackObject = Spotted::Models::SimplifiedTrackObject

  TrackObject = Spotted::Models::TrackObject

  TrackRestrictionObject = Spotted::Models::TrackRestrictionObject
end
