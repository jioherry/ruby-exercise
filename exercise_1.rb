# 請寫出一個 function，當給入一個整數時，判斷它是不是二的次方。

def is_power_of_two(n) # n 是隨機數

    if n <= 0 # 如果隨機數是0，編程結束

    	return false

    elsif n ==  1 # 如果隨機數是0，編程結束
    	
    	return true
    end


	while n > 1

		if n % 2 == 0 # 讓隨機數被 2 整除，判斷整除後的餘數是否為0，是，0就是偶數，但不知道是否為2的次方

			n = n / 2 # n這個隨機數被2整除的動作

		else 
			return 	false
		end
	end		
		return true
end

puts is_power_of_two(9)
