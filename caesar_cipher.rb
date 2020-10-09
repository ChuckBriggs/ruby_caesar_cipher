# caesar_cipher.rb
#require 'pry'; binding.pry

def apply_cipher(val, n)
	if val > 96 && val < 123
		val += n
		if val > 122
			val -= 26
		end
		return val
	elsif val > 64 && val < 91
		val += n
		if val > 90
			val -= 26
		end
		return val
	end
	return val
end

def convert_alpha_to_num(alpha_array)
	num_array = alpha_array.map { |char| char.ord } 
	return num_array
end

def convert_num_to_alpha(alpha_array)
	num_array = alpha_array.map { |char| char.ord } 
	return num_array
end

def caesar_cipher(message, cipher)
	cipher = cipher.to_i % 26

	#orig_alpha_array = message.split("")
	#orig_num_array = convert_from_alpha_to_num(orig_alpha_array)
	num_array = convert_alpha_to_num(message.split(""))

	coded_num_array = num_array.map { |char| char = apply_cipher(char, cipher) }

	p coded_num_array

	return num_array 
end


p caesar_cipher("Abcdefg hijk LMNOP Qrs tuv WX Yz.", 4)

