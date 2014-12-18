require 'spec_helper'

require_relative '../../lib/helenism'
describe Helenism do
  it 'has a drunk index based on fuck shit word frequency' do
    quote = Helenism.new(quote: 'fuck shit')
    expect(quote.fuck_shit_frequency).to eq(1)
  end

  it 'has a drunk index of .5 when fuck and shit is combined with two others' do
    quote = Helenism.new(quote: 'holy fucking shit man')
    expect(quote.fuck_shit_frequency).to eq(0.5)
  end
end
