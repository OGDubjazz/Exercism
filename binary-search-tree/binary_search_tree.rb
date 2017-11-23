class Bst
   attr_reader :data, :left, :right

  def initialize(data)
    @data = data
    @left = nil
    @right = nil
  end

  def insert(data)
    if data <= @data
      insert_left(data)
    else
      insert_right(data)
    end
  end

  def each(&block)
    return enum_for(:each) unless block_given?

    @left.each(&block) if @left
    yield @data
    @right.each(&block) if @right
  end

  private

  def insert_left(data)
    if @left.nil?
      @left = Bst.new(data)
    else
      @left.insert(data)
    end
  end

  def insert_right(data)
    if @right.nil?
      @right = Bst.new(data)
    else
      @right.insert(data)
    end
  end
end
