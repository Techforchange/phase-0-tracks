# module Shout
  
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
  
#   def self.yelling(words)
#   	"yay!" + " " + words
#   end

# end

# p Shout.yell_angrily("shoot")
# p Shout.yelling("shoot")

module Shout

  def yell_angrily(words)
    words + "!!!" + " :("
  end
  
  def yelling(words)
  	"yay!" + " " + words
  end

end

class Teachers
	include Shout
end

class Parents
	include Shout
end

new_teacher = Teachers.new
p new_teacher.yelling("heck")
p new_teacher.yell_angrily("omg")