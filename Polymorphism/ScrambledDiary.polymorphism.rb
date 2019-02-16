class ScrambledDiary
  #initialize
  #read
  #scramble
  #unscramble
 def initialize(contents, scrambler)
    @contents = contents
    @scrambler = scrambler
  end

  def read
    @contests
  end

  def scramble
    @contents = @scrambler.scramble(@contents)
  end

  def unscramble
    @contents = @scrambler.unscramble(@contest)
  end
end



class Advanced
  #initialize
  #scramble
  #unscramble
  def initialize(steps)
    @steps = steps
  end

  def scramble(contest)
   plain_chars = contents.chars
   scrambled_chars = plain_chars.map do |char|
     (char.ord + @steps).chr
  end
   scrambled_chars.join
end

  def unscramble(contents)
    scrambled_chars = contents.chars
    plain_chars = scrambled_chars.map do |char|
      (char.ord - @steps).chr
  end
    plain_chars.join
  end
end


 class Reversed
   #scramble
   #unscramble

  def scramble(contents)
    contents.reverse
  end

  def unscramble(contents)
    contents.reverse
  end

end
