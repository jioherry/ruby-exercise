# @param {Integer[]} nums
# @return {Integer}
# 給定一個排序過的陣列，將重複的元素移除使得所有的元素都只出現過一次，並回傳陣列的新長度。
# 不能在 function 裡創造一個新陣列，必須利用同一個陣列完成。

def remove_duplicates(n)
    
	a = n.sort

	x = a.uniq

	y = x.length

	return y

end

n = [1,1,1,2,2,3]

puts remove_duplicates(n)