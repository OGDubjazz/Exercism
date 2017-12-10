class Queens
  def initialize(params)
    raise ArgumentError.new unless params.is_a?(Hash)
    
    if params[:white].is_a?(Array)
      raise ArgumentError.new unless params[:white].count == 2
      @white_col = params[:white][0]
      @while_row = params[:white][1]
      raise ArgumentError.new if @white_col > 7 || @white_col < 0
      raise ArgumentError.new if @while_row > 7 || @while_row < 0
    end
    
    if params[:black].is_a?(Array)
      raise ArgumentError.new unless params[:black].count == 2
      @black_col = params[:black][0]
      @black_row = params[:black][1]
      raise ArgumentError.new if @black_col > 7 || @black_col < 0
      raise ArgumentError.new if @black_row > 7 || @black_row < 0
    end
  end
  
  def attack?
    return true if same_col?
    return true if same_row?
    return true if same_diagonal?
    return false
  end
  
  def same_col?
    @white_col == @black_col
  end
  
  def same_row?
    @while_row == @black_row
  end
  
  def same_diagonal?
    relative_row = (@while_row - @black_row).abs
    relative_col = (@white_col - @black_col).abs
    relative_row == relative_col
  end
end

module BookKeeping
  VERSION = 2
end