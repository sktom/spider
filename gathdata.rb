
require './spider'

issues = Issue.from RESOURCE_URI
spiders = issues.map{|i| Spider.new i}

period = Time.mktime(2000, 1, 1)..Time.now
spiders.each do |spider|
	spider.run period
end

