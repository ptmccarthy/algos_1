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

describe CountInversions do
  let(:unsorted1) { [] }
  let(:unsorted2) { [3] }
  let(:unsorted3) { [9, 3, 4, 5, 1, 2, 8, 7, 6, 10] }
  let(:unsorted4) { [4, 2, 6, 8] }
  let(:subject) { CountInversions.new }

  it 'returns the number of inversions in an empty array' do
    subject.count_inversions(unsorted1).should == 0
  end

  it 'returns the number of inversions in an array of 1' do
    subject.count_inversions(unsorted2).should == 0
  end

  it 'returns the correct number of inversions' do
    subject.count_inversions(unsorted3).should == 17
  end

  it 'returns the correct number of inversions' do
    subject.count_inversions(unsorted4).should == 1
  end
end
