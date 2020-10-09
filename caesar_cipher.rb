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
	return alpha_array.map { |char| char.ord }
end

def convert_num_to_alpha(num_array)
	return num_array.map { |val| val.chr }
end

def caesar_cipher(message, cipher)
	num_array = convert_alpha_to_num(message.split(""))
	num_array.map! { |char| char = apply_cipher(char, cipher) }
	return convert_num_to_alpha(num_array).join

##	orig_alpha_array = message.split("")
##	orig_num_array = convert_from_alpha_to_num(orig_alpha_array)
#	num_array = convert_alpha_to_num(message.split(""))
#
#	coded_num_array = num_array.map { |char| char = apply_cipher(char, cipher) }
#	coded_alpha_array = convert_num_to_alpha(coded_num_array)
#
#	return coded_alpha_array.join
end

puts "Enter your message to encode: "
message = gets.chomp
puts "Enter your numeric cipher: " 
cipher = gets.chomp.to_i % 26

puts "Encoded message: "
puts caesar_cipher(message, cipher)

