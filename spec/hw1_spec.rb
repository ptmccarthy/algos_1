require_relative './spec_helper'

describe Array do
  let(:unsorted1) { [] }
  let(:unsorted2) { [3] }
  let(:unsorted3) { [8, 14, 95, 1, 3, 6, 11, 10, 4, 22, 23, 24]}
  let(:unsorted4) { [9, 13, 44, 22, 7] }

  it 'returns itself if empty' do
    unsorted1.merge_sort.should == unsorted1.sort
  end

  it 'returns itself if contains 1 element' do
    unsorted2.merge_sort.should == unsorted2.sort
  end

  it 'returns a properly sorted array containing even elements' do
    unsorted3.merge_sort.should == unsorted3.sort
  end

  it 'returns a properly sorted array containing odd elements' do
    unsorted4.merge_sort.should == unsorted4.sort
  end

end
