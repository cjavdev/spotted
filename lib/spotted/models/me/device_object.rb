# frozen_string_literal: true

module Spotted
  module Models
    module Me
      class DeviceObject < Spotted::Internal::Type::BaseModel
        # @!attribute id
        #   The device ID. This ID is unique and persistent to some extent. However, this is
        #   not guaranteed and any cached `device_id` should periodically be cleared out and
        #   refetched as necessary.
        #
        #   @return [String, nil]
        optional :id, String, nil?: true

        # @!attribute is_active
        #   If this device is the currently active device.
        #
        #   @return [Boolean, nil]
        optional :is_active, Spotted::Internal::Type::Boolean

        # @!attribute is_private_session
        #   If this device is currently in a private session.
        #
        #   @return [Boolean, nil]
        optional :is_private_session, Spotted::Internal::Type::Boolean

        # @!attribute is_restricted
        #   Whether controlling this device is restricted. At present if this is "true" then
        #   no Web API commands will be accepted by this device.
        #
        #   @return [Boolean, nil]
        optional :is_restricted, Spotted::Internal::Type::Boolean

        # @!attribute name
        #   A human-readable name for the device. Some devices have a name that the user can
        #   configure (e.g. \"Loudest speaker\") and some devices have a generic name
        #   associated with the manufacturer or device model.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute published
        #   The playlist's public/private status (if it should be added to the user's
        #   profile or not): `true` the playlist will be public, `false` the playlist will
        #   be private, `null` the playlist status is not relevant. For more about
        #   public/private status, see
        #   [Working with Playlists](/documentation/web-api/concepts/playlists)
        #
        #   @return [Boolean, nil]
        optional :published, Spotted::Internal::Type::Boolean

        # @!attribute supports_volume
        #   If this device can be used to set the volume.
        #
        #   @return [Boolean, nil]
        optional :supports_volume, Spotted::Internal::Type::Boolean

        # @!attribute type
        #   Device type, such as "computer", "smartphone" or "speaker".
        #
        #   @return [String, nil]
        optional :type, String

        # @!attribute volume_percent
        #   The current volume in percent.
        #
        #   @return [Integer, nil]
        optional :volume_percent, Integer, nil?: true

        # @!method initialize(id: nil, is_active: nil, is_private_session: nil, is_restricted: nil, name: nil, published: nil, supports_volume: nil, type: nil, volume_percent: nil)
        #   Some parameter documentations has been truncated, see
        #   {Spotted::Models::Me::DeviceObject} for more details.
        #
        #   @param id [String, nil] The device ID. This ID is unique and persistent to some extent. However, this is
        #
        #   @param is_active [Boolean] If this device is the currently active device.
        #
        #   @param is_private_session [Boolean] If this device is currently in a private session.
        #
        #   @param is_restricted [Boolean] Whether controlling this device is restricted. At present if this is "true" then
        #
        #   @param name [String] A human-readable name for the device. Some devices have a name that the user can
        #
        #   @param published [Boolean] The playlist's public/private status (if it should be added to the user's profil
        #
        #   @param supports_volume [Boolean] If this device can be used to set the volume.
        #
        #   @param type [String] Device type, such as "computer", "smartphone" or "speaker".
        #
        #   @param volume_percent [Integer, nil] The current volume in percent.
      end
    end
  end
end
