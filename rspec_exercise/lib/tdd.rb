
class Array
  def my_uniq
    hash = Hash.new(0)

    each do |el|
      hash[el] += 1
    end

    hash.keys
  end

  def two_sums

    pairs = []

    each_with_index do |el, idx|
      each_with_index do |el2, jdx|
        if jdx > idx && (el + el2 == 0)
          pairs << [idx, jdx]
        end
      end
    end
    pairs

  end

  def my_transpose

    result = []

    self[0].count.times do |col|
      columns = []
      self.length.times do |idx|
        columns << self[idx][col]
      end
      result << columns
    end

    result

  end

end

def stock_picker(array)

  most_profitable = []
  profit = 0

  array.each_with_index do |el, idx|
    array.each_with_index do |el2, idx2|
      if idx2 > idx && el2 - el > profit
        most_profitable = [idx, idx2]
        profit = el2 - el
      end
    end
  end
  most_profitable
end
