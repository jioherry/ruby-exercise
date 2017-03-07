# 給入一個含有數字的陣列，寫出一個 function 將所有的 0 都移到陣列的最後面，但同時須保持所有其他非零數字的相對先後順序不變。

def move_zeroes(a) 
    
    x = 0
    
    y = []

	for i in 0..a.length - 1 do # 將陣列用 for 迴圈帶入

        if a[i] == x # 如果 index 0 的數值為 0
			y.push(0)  # "複製"有 0 的 index
		end
	end

	a.delete(0)
    a.concat(y)
	return a

end



	






