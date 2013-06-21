
class Thrd < Thread
	def initialize
		super do
			pr
		end
	end
	def pr
		p 'pr'
	end
	def to_str
		'tttthhhhrrrd'
	end
end

thrd = Thrd.new
p 'abc'
thrd.run
p '123'
File.open thrd, 'w'do end
puts thrd
