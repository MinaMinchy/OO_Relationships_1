# OO_Relationships_1
# OO Relationships 1 (Forwarding, Polymorphism)

Learn to

Apply two kinds of OO class relationship:
Forwarding
Polymorphism
Introduction

We've covered a bit about how we can control complexity in our codebases by breaking our programs up using encapsulation — in our case with classes and objects.

Object Oriented Programming has introduced many powerful ways of relating these classes and objects to each other. We are going to cover two today.

Exercise 2

Consider this code:

class User
  def initialize(name, bio, age, password)
    @name = name
    @bio = bio
    @age = age
    @password = password
  end

  def authenticate(candidate_password)
    return true if candidate_password == @password
    false
  end

  def profile
    "#{@name}, born in #{birth_year}: #{@bio}"
  end

  private

  def birth_year
    Time.new.year - @age
  end
end


# Exercise 4

Consider this code:

class ScrambledDiary
  def initialize(contents)
    @contents = contents
  end

  def read
    @contents
  end

  def scramble_by_advancing_chars(steps)
    plain_chars = @contents.chars
    scrambled_chars = plain_chars.map do |char|
      (char.ord + steps).chr
    end
    @contents = scrambled_chars.join
  end

  def unscramble_by_advancing_chars(steps)
    scrambled_chars = @contents.chars
    plain_chars = scrambled_chars.map do |char|
      (char.ord - steps).chr
    end
    @contents = plain_chars.join
  end

  def scramble_by_reversing
    @contents = @contents.reverse
  end

  def unscramble_by_reversing
    @contents = @contents.reverse
  end
end
