class Array

  # split array recursively until single-element arrays
  def merge_sort
    return self if self.length <= 1

    mid = (self.length / 2).to_i
    left = self.take(mid).merge_sort
    right = self.drop(mid).merge_sort

    merge(left, right)
  end

  # merge the split arrays ino order recursively
  def merge(left, right)
    if left.empty?
      right
    elsif right.empty?
      left
    elsif left.first < right.first
      [left.shift] + merge(left, right)
    else
      [right.shift] + merge(left, right)
    end
  end
end

class CountInversions
  attr_reader :inversions
  def count_inversions(array)
    @inversions = 0
    sort_and_count_inv(array)
    @inversions
  end

  private
  def sort_and_count_inv(array)
    return array if array.length <= 1
    mid = (array.length / 2)
    left = sort_and_count_inv(array.take(mid))
    right = sort_and_count_inv(array.drop(mid))

    merge_and_count_inversions(left, right)
  end

  def merge_and_count_inversions(left, right)
    merged = []

    until left.empty? || right.empty?
      if left.first <= right.first
        merged << left.shift
      else
        merged << right.shift
        @inversions += left.size
      end
    end

    merged + left + right
  end
end

a = []
File.open('IntegerArray.txt').each do |line|
  a << line.to_i
end

foo = CountInversions.new

puts foo.count_inversions(a)
