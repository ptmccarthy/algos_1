class Quicksort
  attr_accessor :comparisons

  def quicksort!(array, pivot_selection)
    return array if array.length <= 1
    @pivot_method = pivot_selection
    @comparisons = 0

    qsort(array, 0, array.length - 1)
    puts 'comparisons: ' + @comparisons.to_s
    array
  end

  private

  def qsort(array, left, right)
    @comparisons += (right-left)-1
    if right > left
      if @pivot_method == 'left'
        pIndex = left
      elsif @pivot_method == 'right'
        pIndex = right
      elsif @pivot_method == 'median'
        pIndex = median_of_three(array, left, right)
      end

      newPivotIndex = partition(array, left, right, pIndex)
      qsort(array, left, newPivotIndex-1)
      qsort(array, newPivotIndex+1, right)
    end
  end

  def partition(array, left, right, pIndex)
    if left < right
      pivot = array[pIndex]
      swap(array, left, pIndex)
      i = left + 1
      j = left + 1
      until j > right do
        if array[j] < pivot
          swap(array, i, j)
          i += 1
        end
        j += 1
      end
      swap(array, left, i-1)
    end
    # return new index of pivot
    i-1
  end

  def median_of_three(a, left, right)
    mid = ((right-left)/2).floor

    vals = { left => a[left], mid => a[mid], right => a[right] }

    vals = vals.sort_by { |name, value| value }
    vals[1][0]
  end

  def swap(array, i, j)
    array[i], array[j] = array[j], array[i]
  end

end

a = []
File.open('QuickSort.txt').each do |line|
  a << line.to_i
end
qs = Quicksort.new

qs.quicksort!(a, 'median').to_s

