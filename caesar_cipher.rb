def caesar_cipher(phrase, num)
	phrase = phrase.split("")
	phrase = phrase.map do |ch| 
		if ch.match(/\w/)
			num.times do
				if ch == "z" # or ch.ord == 122
					ch = "a"
				elsif ch == "Z" # or ch.ord == 90
					ch = "A"
				else
					ch = ch.next
				end
			end
		end
		ch
	end
	phrase
end

puts caesar_cipher("What a string!",5)