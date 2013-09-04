class HomeController < ApplicationController
	# convention says to show this page by default.
	def index
		@date = Time.now()
		@model = Hello.new
	end

	def show
		@info = params

	end

end
