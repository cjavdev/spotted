# frozen_string_literal: true

module Spotted
  module Internal
    # @generic Elem
    #
    # @example
    #   if albums_cursor_url_page.has_next?
    #     albums_cursor_url_page = albums_cursor_url_page.next_page
    #   end
    #
    # @example
    #   albums_cursor_url_page.auto_paging_each do |item|
    #     puts(item)
    #   end
    class AlbumsCursorURLPage
      include Spotted::Internal::Type::BasePage

      # @return [String]
      attr_accessor :next_

      # @return [Array<generic<Elem>>, nil]
      attr_accessor :items

      # @return [Boolean]
      def next_page?
        !items.to_a.empty? && !next_.to_s.empty?
      end

      # @raise [Spotted::HTTP::Error]
      # @return [self]
      def next_page
        unless next_page?
          message = "No more pages available. Please check #next_page? before calling ##{__method__}"
          raise RuntimeError.new(message)
        end

        req = Spotted::Internal::Util.deep_merge(@req, {path: @next_})
        @client.request(req)
      end

      # @param blk [Proc]
      #
      # @yieldparam [generic<Elem>]
      def auto_paging_each(&blk)
        unless block_given?
          raise ArgumentError.new("A block must be given to ##{__method__}")
        end

        page = self
        loop do
          page.items&.each(&blk)

          break unless page.next_page?
          page = page.next_page
        end
      end

      # @api private
      #
      # @param client [Spotted::Internal::Transport::BaseClient]
      # @param req [Hash{Symbol=>Object}]
      # @param headers [Hash{String=>String}]
      # @param page_data [Hash{Symbol=>Object}]
      def initialize(client:, req:, headers:, page_data:)
        super

        @next_ = page_data[:next]
        case page_data
        in {items: Array => items}
          @items = items.map { Spotted::Internal::Type::Converter.coerce(@model, _1) }
        else
        end
      end

      # @api private
      #
      # @return [String]
      def inspect
        model = Spotted::Internal::Type::Converter.inspect(@model, depth: 1)

        "#<#{self.class}[#{model}]:0x#{object_id.to_s(16)} next_=#{next_.inspect}>"
      end
    end
  end
end
