require_relative './spec_helper'

describe Quicksort do
  let(:unsorted1) { [] }
  let(:unsorted2) { [3] }
  let(:unsorted3) { [8, 14, 95, 1, 3, 6, 11, 10, 4, 22, 23, 24]}
  let(:unsorted4) { [9, 13, 44, 22, 7] }
  let(:qs) { Quicksort.new }

  it 'returns itself if empty' do
    qs.quicksort!(unsorted1).should == unsorted1.sort
  end

  it 'returns itself if contains 1 element' do
    qs.quicksort!(unsorted2).should == unsorted2.sort
  end

  it 'returns a properly sorted array containing even elements' do
    qs.quicksort!(unsorted3).should == unsorted3.sort
  end

  it 'returns a properly sorted array containing odd elements' do
    qs.quicksort!(unsorted4).should == unsorted4.sort
  end

end
