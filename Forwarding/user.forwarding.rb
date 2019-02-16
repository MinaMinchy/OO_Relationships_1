
class User
   def initialize(name, bio, age, password)

       @name = name
       @bio = bio
       @age = age
       @password = password
       @authentication = Authentication.new(password)
   end

   def authenticate(candidate_password)
       @authentication.authenticate(candidate_password)
   end


  def profile
       "#{@name}, born in #{birth_year}: #{@bio}"
  end

     private

     def birth_year
       Time.new.year - @age
     end
   end


 class Authentication
   def initialize(password)
     @password = password
   end


   def authenticate(candidate_password)
      return true if candidate_password == @password
         false
    end
  end


   user = User.new( "Amina", "developer", 34, 123)
   puts user.authenticate(123)
   puts user.profile
