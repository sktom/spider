
require 'open-uri'
require './issue'

class Spider < Thread
	def initialize issue
		@issue = issue
		super do
			hunt
		end
	end

	def hunt
		open(@issue).readlines.each do |line|
			parse line
		end

end


