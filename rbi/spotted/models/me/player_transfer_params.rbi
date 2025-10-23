# typed: strong

module Spotted
  module Models
    module Me
      class PlayerTransferParams < Spotted::Internal::Type::BaseModel
        extend Spotted::Internal::Type::RequestParameters::Converter
        include Spotted::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Spotted::Me::PlayerTransferParams, Spotted::Internal::AnyHash)
          end

        # A JSON array containing the ID of the device on which playback should be
        # started/transferred.<br/>For
        # example:`{device_ids:["74ASZWbe4lXaubB36ztrGX"]}`<br/>_**Note**: Although an
        # array is accepted, only a single device_id is currently supported. Supplying
        # more than one will return `400 Bad Request`_
        sig { returns(T::Array[String]) }
        attr_accessor :device_ids

        # **true**: ensure playback happens on new device.<br/>**false** or not provided:
        # keep the current playback state.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :play

        sig { params(play: T::Boolean).void }
        attr_writer :play

        sig do
          params(
            device_ids: T::Array[String],
            play: T::Boolean,
            request_options: Spotted::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A JSON array containing the ID of the device on which playback should be
          # started/transferred.<br/>For
          # example:`{device_ids:["74ASZWbe4lXaubB36ztrGX"]}`<br/>_**Note**: Although an
          # array is accepted, only a single device_id is currently supported. Supplying
          # more than one will return `400 Bad Request`_
          device_ids:,
          # **true**: ensure playback happens on new device.<br/>**false** or not provided:
          # keep the current playback state.
          play: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              device_ids: T::Array[String],
              play: T::Boolean,
              request_options: Spotted::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
