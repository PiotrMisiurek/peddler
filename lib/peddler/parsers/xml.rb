require 'peddler/parsers/base'

module Peddler
  module Parsers
    class XML < Base
      def self.xml?
        true
      end

      def text_at_xpath(path)
        node = at_xpath(path)
        node.text if node
      end

      def at_xpath(path)
        document.at_xpath(add_namespace(path))
      end

      def xpath(path)
        document.xpath(add_namespace(path))
      end

      def xml_namespace
        'xmlns:'
      end

      private

      def add_namespace(path)
        path.split('/').map { |attr| "#{xml_namespace}#{attr}" }.join('/')
      end

      def symbol_to_xpath(symbol)
        symbol.to_s.split('_').map(&:capitalize).join
      end
    end
  end
end
