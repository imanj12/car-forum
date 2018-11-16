require 'spec_helper'

describe 'Category' do
  it 'is defined' do
    expect(Category).to be_a(Class)
  end

  describe '#total_threads' do
    it 'has a total threads method' do
      hello = Category.new
      expect(hello).to respond_to(:total_threads)
    end
  end

end
