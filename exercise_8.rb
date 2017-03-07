# @param {Integer[]} nums
# @return {Integer}
# 給定一個包含整數的陣列，所有的元素都重複兩次但有一個例外，找出那個沒有重複的元素。

def single_number(n)
    
	a = n.sort
	b = []

	for i in 0..a.length - 1

		if a[i] == a[i+1]
			b.push(a[i])
		else
		end
	end

	c = a - b

	return c[0]
end

n = [1,1,2,2,-1,-1,3]

puts single_number(n)