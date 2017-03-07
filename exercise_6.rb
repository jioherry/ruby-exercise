# @param {Integer[]} nums
# @return {Integer}
# 給定一個含有 n 個元素的陣列，請找出它的多數為哪一個元素。
# 出現超過 n / 2 次的元素即為多數。
# 你可以假設陣列一定不為空陣列，且陣列中一定存在多數。

def majority_element(n)

	a = n.sort
	x = a.length

	z = x / 2

	return a[z]
end

n = [1,1,1,2,3]

puts majority_element(n)