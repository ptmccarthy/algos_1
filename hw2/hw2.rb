class Quicksort

  def quicksort!(array)
    return array if array.length <= 1

    qsort(array, 0, array.length - 1)
    array
  end

  private

  def qsort(array, left, right)
    if right > left
      pivotIndex = left
      newPivotIndex = partition(array, left, right, pivotIndex)
      qsort(array, left, newPivotIndex-1)
      qsort(array, newPivotIndex+1, right)
    end
  end

  def partition(array, left, right, pIndex)
    if left < right
      pivot = array[pIndex]
      i = left + 1
      j = left + 1
      until j > right do
        if array[j] < pivot
          # swap i and j
          array[i], array[j] = array[j], array[i]
          i += 1
        end
        j += 1
      end
      # swap left and i-1
      array[left], array[i-1] = array[i-1], array[left]
    end
    # return new index of pivot
    i-1
  end

end
