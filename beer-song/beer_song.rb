class BeerSong
  def verses(first, last)
    first.downto(last).map { |i| verse(i) }.join("\n") 
  end

  def verse(num)
    verse = case num
        when 1
          one_verse
        when 0
          final_verse
        else
          [full_verse(num)]
        end
    verse.join("\n") + "\n"
  end

  private 

  def full_verse(num)
    bottles_up = num == 1 ? "bottle" : "bottles"
    bottles_left = (num - 1) == 1 ? "bottle" : "bottles"
    "#{num} #{bottles_up} of beer on the wall, #{num} bottles of beer.\nTake one down and pass it around, #{num-1} #{bottles_left} of beer on the wall."
  end

  def one_verse
    [ "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall." ]
  end

  def final_verse
    [ "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall." ]
  end
end
