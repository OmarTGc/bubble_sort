def bubble_sort(array)
	i = 0
	while i < (array.size - 1)
		new_array = array.each_index do |idx|
			unless idx - 1 < 0
				if array[idx - 1] > array[idx]
					array[idx - 1], array[idx] = array[idx], array[idx - 1]
				end
			end
		end
		i += 1
	end
	new_array
end

def bubble_sort_by(array)
	i = 0
	while i < (array.size - 1)
		new_array = array.each_index do |idx|
			value = yield array[idx-1], array[idx]
			next if (idx - 1) < 0
			if value > 0
				array[idx - 1], array[idx] = array[idx], array[idx - 1]
			end
		end
		i += 1
	end
	new_array
end