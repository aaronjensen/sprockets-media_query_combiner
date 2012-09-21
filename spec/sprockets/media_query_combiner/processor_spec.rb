require 'spec_helper'
require 'sprockets/media_query_combiner/processor'

module Sprockets::MediaQueryCombiner
  describe Processor do
    it "should work" do
      combiner = Processor.new do
<<CSS
h3 {
  color: orange
}
@media (max-width: 480px) {
  h1 {
    color: red
  }
}
@media (max-width: 980px) {
  h4 {
    color: black
  }
}
@media (max-width: 480px) {
  h2 {
    color: blue
  }
}
CSS
      end
      combiner.evaluate(nil, nil).should == <<CSS
h3 {
  color: orange
}
@media (max-width: 480px){h1 {
    color: red
  }h2 {
    color: blue
  }}@media (max-width: 980px){h4 {
    color: black
  }}
CSS
    end

  end
end
