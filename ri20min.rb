#!/user/bin/env ruby

class MegaGreeter
	attr_accessor :names
   
	#create the object
	def initialize(names = "World")
		@names = names
	end
   
	#say hi to everyone
	def say_hi
		if @name.nil?
			puts "..."
		elsif @names.respond_to("each")
			# @names is a list of some kind, iterate!
			@names.each do |name|
				puts "Hello #{name}!"
			end
		else
			puts "Hello #{@names}!"
		end
	end
	
	#say bye to everyone
	def say_bye
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("join")	
			#join the list elements with commas
			puts "Goodbye #{@names.join(",")}. come back son!"
		else
			puts "Goodbye #{@names}. come back soon"
		end
	end
	
end


if __FILE__ == $0
	mg = MegaGreeter.new
	mg.say_hi
	mg.say_bye
	
	#change name to be zeke
	mg.names = "Zeke"
	mg.say_hi
	mg.say_bye
	
	#change the name to an array of names
	mg.names = ["Albert", "Brenda", "Charles", "Dave", "Engelbert"]
	mg.say_hi
	mg.say_bye
	
	#chagne to nil
	mg.names = nil
	mg.say_hi
	mg.say_bye
	
end