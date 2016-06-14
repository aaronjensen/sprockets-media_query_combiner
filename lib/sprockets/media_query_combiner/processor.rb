require 'sass/media_query_combiner/combiner'

module Sprockets
  module MediaQueryCombiner
    class Processor
      def self.call(input)
        Sass::MediaQueryCombiner::Combiner.combine input[:data]
      end
    end
  end
end
