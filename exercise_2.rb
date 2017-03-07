# @param {Integer[]} nums
# @return {Boolean}

# 給定一個包含整數的陣列，請判斷陣列中是否存在重複的整數。
# 若有任何一個整數重複出現，請回傳 true，全部都沒有重複請回傳 false。

def contains_duplicate(a)  

	a.sort # 先將陣列排序
	
	if a.length < 1 # 如果陣列的 index <= 1 編程結束 
	    return false
	end

	for i in 0..a.length-1 # 將 i 帶入 for loop 裡去做陣列的迴圈，測量陣列長度 

		if a[i] - a[i+1] == 0 # 如果 index 0 數值 - index 1 數值，證明其數值相同，編程結束
			return true  
		else 
			return false # 如果不是，回傳 false，編程結束
		end
	end
end