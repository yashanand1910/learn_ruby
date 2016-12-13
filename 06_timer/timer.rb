class Timer
	attr_accessor :seconds, :minutes, :hours
	def initialize
		@seconds = 0
		@minutes = 0
		@hours = 0
	end
	def time_string
		s = seconds % 60
		m = (seconds / 60) % 60
		h = ((seconds / 60) / 60) % 24
		s = s.to_s
		m = m.to_s
		h = h.to_s
		if s.length == 1
			s = '0' + s
		end
		if m.length == 1
			m = '0' + m
		end
		if h.length == 1
			h = '0' + h
		end
		string = h + ':' + m + ':' + s
	end

end
