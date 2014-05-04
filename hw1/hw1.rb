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
      [left.first] + merge(left[1..left.length], right)
    else
      [right.first] + merge(left, right[1..right.length])
    end
  end

end
