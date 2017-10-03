def caesar_cipher(text, shift)
	# convert text to array
	text_array = text.split("")
	puts text_array.inspect

	text_array = text_array.collect do |var|
		puts var
		if var == " " 
			next
		end
		og_var = var.ord
		new_var = (og_var - shift)	
		if og_var >= 97 and new_var < 97 
			new_var += 26 
		elsif new_var < 65 
			new_var += 26
		end
		var = new_var.chr 
	end
	text_array.each_index do |i|
		text_array[i] = " " if text_array[i].nil?
	end
	text_array = text_array.join("")	
	return text_array
end


def substrings(string, array)
	string = string.downcase
	hash = {}
	array.each do|word|
		how_many_word_array = string.scan(word)
		if how_many_word_array.length != 0
			hash[word] = how_many_word_array.length
		end
	end
	return hash
end

def bubble_sort(array)
	n = array.length
	swapped = true
	while swapped == true do
		swapped = false
		for x in 1..n-1
			if array[x-1] > array[x]
				array[x-1], array[x] = array[x], array[x-1]
				swapped = true
			end
		end
	end
	array
end

public def bubble_sort_by()
	n = self.size
	swapped = true
	while swapped == true do
		swapped = false
		for x in 1..n-1
			if yield(self[x-1], self[x]) > 0
				self[x-1], self[x] = self[x], self[x-1]
				swapped = true
			end
		end
	end
	self
end

array = ["hi", "hello","hey"].bubble_sort_by do |left, right|
	left.length - right.length
end

puts array.inspect
=begin
array = [2,5,6,7,1,3]
puts array.inspect
puts bubble_sort(array).inspect
=end

# puts caesar_cipher("wjat a stringd!", 1)
=begin
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
=end

