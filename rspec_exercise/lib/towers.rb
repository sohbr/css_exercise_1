class Game
  attr_accessor :stacks

  def initialize
    @stacks = [[3,2,1],[],[]]
  end

  def move_disk(start_pos,end_pos)

    if valid_move?(start_pos,end_pos)
      @stacks[end_pos] << @stacks[start_pos].pop
    end

  end

  def valid_move?(start_pos, end_pos)

    #can't pull from empty
    if @stacks[start_pos] == []
      raise "Not a valid move!"
    end

    #can't pull from nonexistent

    if @stacks[start_pos].nil? || @stacks[end_pos].nil?
      raise "Not a valid move!"
    end

    #can't put larger on smaller
    if @stacks[end_pos].last && @stacks[start_pos].last > @stacks[end_pos].last
      raise "Not a valid move!"
    end

    true
  end

  def won?
    @stacks[1] == [3,2,1] || @stacks[2] == [3,2,1]
  end

  



end
