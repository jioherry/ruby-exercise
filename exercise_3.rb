# 寫一個 function 判斷一個給入的數是否為 "Ugly number"。
# 若一個正整數的質因數只包含 2、3 或 5 的話為"Ugly number"，其他則否。
# 但 1 須被判定為 "Ugly number"。

def is_ugly(n)

	if n <= 0 # 如果 n 隨機數是 0或者負數，回傳false，編程結束
		return false
	elsif n == 1 # 如果隨機數 n 是 1，編程結束
		return true
	end

	while n > 1
		if n % 2 == 0 # 如果 n 可以被 2 整除的餘數為0，則判斷 n 為 2 的質因數，但電腦不能判斷 n 是否只包含 2 或 3 或 5 的質因數
			n = n / 2
		elsif n % 3 == 0 || n % 5 == 0 # 設立一個 n 可以被 3 或 5 整除的餘數為0，讓 n 可以繼續執行其他迴圈，檢查是否包含質因數 3 或 5 
			break
		else 
			return false
		end
	end

	while n > 1
		if n % 3 == 0 # 如果 n 可以被 3 整除的餘數為0，則判斷 n 為 3 的質因數，編程結束
			n = n / 3
		elsif n % 2 == 0 || n % 5 == 0 # 設立一個 n 可以被 2 或 5 整除的餘數為0，讓 n 可以繼續執行其他迴圈，檢查是否包含質因數 2 或 5
			break
		else
			return false
		end
	end

	while n > 1
		if n % 5 == 0 # 如果 n 可以被 5 整除的餘數為0，則判斷 n 為 5 的質因數，編程結束
			n = n / 5
		elsif n % 2 == 0 || n % 3 == 0 # 設立一個 n 可以被 2 或 3 整除的餘數為0，讓 n 可以繼續執行其他迴圈，檢查是否包含質因數 2 或 3
			break
		else
			return false
		end
	end
	return true
end

puts is_ugly(35)
