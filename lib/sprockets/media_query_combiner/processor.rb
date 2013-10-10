require 'tilt'
require 'sass/media_query_combiner/combiner'

module Sprockets
  module MediaQueryCombiner
    class Processor < Tilt::Template
      def prepare
      end

      def evaluate(context, locals, &block)
        Sass::MediaQueryCombiner::Combiner.combine(data)
      end
    end
  end
end
