class Array
  def keep(&to_keep)
    kept = []
    self.each { |item| kept << item if to_keep.call(item) }
    kept
  end

  def discard(&to_discard)
    kept = []
    self.each { |item| kept << item unless to_discard.call(item) }
    kept
  end
end
