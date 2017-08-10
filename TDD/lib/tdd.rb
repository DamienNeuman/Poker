class Array
  def my_unique
    self.uniq
  end

  def two_sum
    results = []
    self.each_index do |idx1|
      ((idx1 + 1)...length).each do |idx2|
        results << [idx1, idx2] if self[idx1] + self[idx2] == 0
      end
    end
    results
  end

  def my_transpose
    result = []

    self[0].length.times do |idx|
        sub_arr = []
        self.each do |arr|
          sub_arr << arr[idx]
        end
        result << sub_arr
    end
    result
  end

  def stock_picker
    range = 0
    buy_sell = []
    self[0..-2].each_with_index do |el1, idx1|
      self[(idx1 + 1)..-1].each_with_index do |el2, idx2|
        if el2 - el1 > range
          range = el2 - el1
          buy_sell = [idx1, (idx2 + idx1 + 1)]
        end
      end
    end
    buy_sell
  end
end
