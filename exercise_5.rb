# @param {String} s
# @param {String} t
# @return {Boolean}
# 給定兩個字串 s 和 t，寫一個 function 判斷兩者是否互為 "anagram"

def is_anagram(s, t)

	if s = "" || t = "" # 不能是空字串
		return false
	end

    x = s.split('') # 變成字串
    
    y = t.split('')

	if x.length != y.length
		return false
	end

	a = x.sort # 照順序排列

	b = y.sort

	for i in 0..t.length - 1

		if a[i] == b[i] # 以 s 陣列內的 index 為基準，使用迴圈，設立條件比較 t 與 s 內的 index 值是否相等
			return true
		else
			return false
		end
	end
end

s = 'a'
t = 'b'
puts is_anagram(s, t)