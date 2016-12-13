class Book

attr_accessor :title

def title= text
	@title = text.split ' '
	@title.length.times do |i|
		@title[i].capitalize!
		if @title[i] =~ /\band\b|\bor\b/i
			@title[i].downcase!
		end
		if @title[i] =~ /\bin\b|\bof\b/i
			@title[i].downcase!
		end
		if @title[i] =~ /\bthe\b|\ba\b|\ban\b/i
			@title[i].downcase!
		end
		if i == 0
			@title[i].capitalize!
		end
	end
	@title = @title.join ' '
end

end
