def transWord text
	if text[0..1] == 'qu'
		text + text.slice!(0..1) + 'ay'
	elsif text =~ /\A[aeiou]/
		text + 'ay'
	elsif text[0] =~ /[^aeiou]/
		if text[1..2] == 'qu'
			text + text.slice!(0..2) + 'ay'
		elsif text[1] =~ /[^aeiou]/
			if text[2] =~ /[^aeiou]/
				text + text.slice!(0..2) + 'ay'
			else
				text + text.slice!(0..1) + 'ay'
			end
		else
			text + text.slice!(0) + 'ay'
		end
	end
end
def translate text
	text = text.split ' '
	text.length.times do |i|
		text[i] = transWord text[i]
	end
	text.join ' '
end