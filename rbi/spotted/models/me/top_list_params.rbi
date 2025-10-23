# typed: strong

module Spotted
  module Models
    module Me
      class TopListParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Spotted::Me::TopListParams, Spotted::Internal::AnyHash)
          end

        # The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # The index of the first item to return. Default: 0 (the first item). Use with
        # limit to get the next set of items.
        sig { returns(T.nilable(Integer)) }
        attr_reader :offset

        sig { params(offset: Integer).void }
        attr_writer :offset

        # Over what time frame the affinities are computed. Valid values: `long_term`
        # (calculated from ~1 year of data and including all new data as it becomes
        # available), `medium_term` (approximately last 6 months), `short_term`
        # (approximately last 4 weeks). Default: `medium_term`
        sig { returns(T.nilable(String)) }
        attr_reader :time_range

        sig { params(time_range: String).void }
        attr_writer :time_range

        sig do
          params(
            limit: Integer,
            offset: Integer,
            time_range: String,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The maximum number of items to return. Default: 20. Minimum: 1. Maximum: 50.
          limit: nil,
          # The index of the first item to return. Default: 0 (the first item). Use with
          # limit to get the next set of items.
          offset: nil,
          # Over what time frame the affinities are computed. Valid values: `long_term`
          # (calculated from ~1 year of data and including all new data as it becomes
          # available), `medium_term` (approximately last 6 months), `short_term`
          # (approximately last 4 weeks). Default: `medium_term`
          time_range: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              limit: Integer,
              offset: Integer,
              time_range: String,
              request_options: Spotted::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The type of entity to return. Valid values: `artists` or `tracks`
        module Type
          extend Spotted::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Spotted::Me::TopListParams::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ARTISTS =
            T.let(:artists, Spotted::Me::TopListParams::Type::TaggedSymbol)
          TRACKS =
            T.let(:tracks, Spotted::Me::TopListParams::Type::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Spotted::Me::TopListParams::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
