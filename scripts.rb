module Enumerable 

	# Returns each value in array
	def my_each
		for x in 0..self.size-1
			yield(self[x])
		end
	end

	#returns each index value
	def my_each_index
		for x in 0..self.size-1
			yield(x)
		end
	end

	# Returns array of values that pass conditional
	def my_select
		return_array = []
		for x in 0..self.size-1
			if yield(self[x])
				return_array << self[x]
			end
		end
		return_array
	end

	# Returns true if all values pass conditional
	def my_all?
		for x in 0..self.size-1
			if !yield(self[x])
				return false
			end
		end
		true
	end

	# Returns true if any value in array passes conditional
	def my_any?
		for x in 0..self.size-1
			if yield(self[x])
				return true
			end
		end
		false
	end

	# Returns true if no values in array pass conditional
	def my_none?
		for x in 0..self.size-1
			if yield(self[x])
				return false
			end
		end
		true
	end

	# Returns count of indexes in array that pass conditional
	def my_count
		count = 0
		for x in 0..self.size-1
			if yield(self[x])
				count += 1
			end
		end
		count
	end

	# Returns new modified array
	def my_map
		new_array = []
		for x in 0..self.size-1
			new_array << yield(self[x])
		end
		new_array
	end

	# Returns a single value reduced from a collection of values
	def my_inject(start_value)
		for x in 0..self.size-1
			start_value = yield(start_value, self[x])
		end
		start_value
	end

end