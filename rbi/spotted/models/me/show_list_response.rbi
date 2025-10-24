# typed: strong

module Spotted
  module Models
    module Me
      class ShowListResponse < Spotted::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Spotted::Models::Me::ShowListResponse,
              Spotted::Internal::AnyHash
            )
          end

        # The date and time the show was saved. Timestamps are returned in ISO 8601 format
        # as Coordinated Universal Time (UTC) with a zero offset: YYYY-MM-DDTHH:MM:SSZ. If
        # the time is imprecise (for example, the date/time of an album release), an
        # additional field indicates the precision; see for example, release_date in an
        # album object.
        sig { returns(T.nilable(Time)) }
        attr_reader :added_at

        sig { params(added_at: Time).void }
        attr_writer :added_at

        # Information about the show.
        sig { returns(T.nilable(Spotted::ShowBase)) }
        attr_reader :show

        sig { params(show: Spotted::ShowBase::OrHash).void }
        attr_writer :show

        sig do
          params(added_at: Time, show: Spotted::ShowBase::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(
          # The date and time the show was saved. Timestamps are returned in ISO 8601 format
          # as Coordinated Universal Time (UTC) with a zero offset: YYYY-MM-DDTHH:MM:SSZ. If
          # the time is imprecise (for example, the date/time of an album release), an
          # additional field indicates the precision; see for example, release_date in an
          # album object.
          added_at: nil,
          # Information about the show.
          show: nil
        )
        end

        sig { override.returns({ added_at: Time, show: Spotted::ShowBase }) }
        def to_hash
        end
      end
    end
  end
end
