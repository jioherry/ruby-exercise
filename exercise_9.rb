# @param {Integer[]} prices
# @return {Integer}
# 給定一個包含股票股價變動的陣列，第 i 項的元素代表的是該股票第 i 天的股價。
# 請寫出一個 function 找出你能透過買賣該股票得到的最高利潤。
# 你可以買賣任意次，但不能在同一時間交易多次。(在你下一次買進股票前，你一定要先將股票賣出。)
# max_profit( [1,4,3,6,2] ) should return 6. max_profit( [ 1 ] ) should return 0.

def max_profit(a)

	if a.length < 1
		puts "0"
	end

	x = []
	b = 0

	for i in 0..a.length - 2 do

		if a[i] < a[i+1] 
			b = a[i+1] - a[i]
			x.push(b)
		end
	end
	
	s = x.reduce :+
	return s

end

a = [1,4,3,6,2]

puts max_profit(a)