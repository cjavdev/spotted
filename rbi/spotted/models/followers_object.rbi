# typed: strong

module Spotted
  module Models
    class FollowersObject < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Spotted::FollowersObject, Spotted::Internal::AnyHash)
        end

      # This will always be set to null, as the Web API does not support it at the
      # moment.
      sig { returns(T.nilable(String)) }
      attr_accessor :href

      # The total number of followers.
      sig { returns(T.nilable(Integer)) }
      attr_reader :total

      sig { params(total: Integer).void }
      attr_writer :total

      sig do
        params(href: T.nilable(String), total: Integer).returns(
          T.attached_class
        )
      end
      def self.new(
        # This will always be set to null, as the Web API does not support it at the
        # moment.
        href: nil,
        # The total number of followers.
        total: nil
      )
      end

      sig { override.returns({ href: T.nilable(String), total: Integer }) }
      def to_hash
      end
    end
  end
end
