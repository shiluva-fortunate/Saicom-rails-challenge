require 'rubygems'
require 'httparty'


class Reqres
	include HTTParty
	base_uri "reqres.in/"

	def posts
		self.class.get('/api/users')
	end
end

req = Reqres.new
	
req.posts.each do |f|
	puts f
end

