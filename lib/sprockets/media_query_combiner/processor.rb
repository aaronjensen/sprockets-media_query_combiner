require 'tilt'

module Sprockets
  module MediaQueryCombiner
    class Processor < Tilt::Template
      def prepare
      end

      def evaluate(context, locals, &block)
        queries = Hash.new { |hash, key| hash[key] = '' }
        filtered_data = data.gsub(/@media(?<query>[^{]+){(?<body>(?<braces>(?:[^{}]+)|({\g<braces>}))*)}\n?/m) do |match|
          queries[$1.strip] << $2.strip; ''
        end

        "#{filtered_data}#{queries.map { |query, body| "@media #{query}{#{body}}" }.join}\n"
      end
    end
  end
end
