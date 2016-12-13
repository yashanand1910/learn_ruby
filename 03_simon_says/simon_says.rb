def echo a
	a
end
def shout a
	a.upcase
end
def repeat a, b=2
	sum = a
	(b-1).times do
		sum += ' ' + a
	end
	sum
end
def start_of_word a, b
	sum = ''
	for i in 0..(b-1)
		sum += a[i]
	end
	sum
end
def first_word a
	i = 0
	sum = ''
	while a[i] != ' '
		sum += a[i]
		i += 1
	end
	sum
end
def titleize a
	b = a.split(' ')
	b.length.times do |i|
		if b[i] != 'and' and b[i] != 'or' and b[i] != 'over' and b[i] != 'the'
			b[i] = b[i].capitalize
		end
	end
	b[0] = b[0].capitalize
	b.join ' '
end
