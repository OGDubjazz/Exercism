class Array
  def accumulate
    new_trans_array = []
    each do |index|
      new_trans_array << (yield index)
    end
    new_trans_array 
  end
end