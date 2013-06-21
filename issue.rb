
class Issue
	attr :uri,  :id
	def initialize uri
		@uri = uri
		@id = uri.split('.').last
	end

	def self.from uri
	end

	def to_s
		@id
	end
	alias :to_str :to_s


end


