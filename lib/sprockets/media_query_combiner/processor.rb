require 'tilt'

module Sprockets
  module MediaQueryCombiner
    class Processor < Tilt::Template
      def prepare
      end

      def evaluate(context, locals, &block)
        queries = Hash.new { |hash, key| hash[key] = '' }
        pretty = true

        filtered_data = data.gsub(/\n?(?<query>@media[^{]+){(?<body>(?<braces>(?:[^{}]+)|({\g<braces>}))*)}\n?/m) do |match|
          queries[$1] << $2
          pretty &&= /\n$/m === match
          ''
        end

        combined = queries.map { |query, body| "#{query}{#{body}}" }.
          join(("\n\n" if pretty))
        "#{filtered_data}#{"\n" if pretty}#{combined}\n"
      end
    end
  end
end
