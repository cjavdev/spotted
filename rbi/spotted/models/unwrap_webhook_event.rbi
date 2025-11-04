# typed: strong

module Spotted
  module Models
    UnwrapWebhookEvent = T.let(T.anything, Spotted::Internal::Type::Converter)
  end
end
