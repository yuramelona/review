class HomeController < ApplicationController
	def main
		@Post=Post.all
	end
end
