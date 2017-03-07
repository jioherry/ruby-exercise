# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
# 給定一個排序過的陣列和一個目標值
# 如果在陣列中找到和目標值相等的元素，則回傳該元素陣列的 index，沒有的話則回傳它應該放在陣列的哪個位置(index)
# search_insert([1,3,5,6], 5) should return 2.
# search_insert([1,3,5,6], 2) should return 1.
# search_insert([1,3,5,6], 7) should return 4.
# search_insert([1,3,5,6], 0) should return 0.

def search_insert(a, b)

	n = a.sort

	if n.min > b
		return n.index(n.min)
	end

	for i in 0..n.length - 1

		if n[i] = b 
			return n.index(b)
		end
	end

	for i in 0..n.length - 1

		if n[i] > b && n[i+1] < b
			return n.index(n[i+1])
		end 
	end

	x = 0

	if b > n.length - 1
		x = n.length
		return x
	end
end


a = [1,3,5,6]

b = 3

puts search_insert(a, b)


