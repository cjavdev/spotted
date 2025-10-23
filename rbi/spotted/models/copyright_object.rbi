# typed: strong

module Spotted
  module Models
    class CopyrightObject < Spotted::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Spotted::CopyrightObject, Spotted::Internal::AnyHash)
        end

      # The copyright text for this content.
      sig { returns(T.nilable(String)) }
      attr_reader :text

      sig { params(text: String).void }
      attr_writer :text

      # The type of copyright: `C` = the copyright, `P` = the sound recording
      # (performance) copyright.
      sig { returns(T.nilable(String)) }
      attr_reader :type

      sig { params(type: String).void }
      attr_writer :type

      sig { params(text: String, type: String).returns(T.attached_class) }
      def self.new(
        # The copyright text for this content.
        text: nil,
        # The type of copyright: `C` = the copyright, `P` = the sound recording
        # (performance) copyright.
        type: nil
      )
      end

      sig { override.returns({ text: String, type: String }) }
      def to_hash
      end
    end
  end
end
