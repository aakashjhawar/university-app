class CoursesController < ApplicationController
	skip_before_action :require_user

	def home
	end

	def show
		@course = Course.find(params[:id])
		# byebug
	end

	def index
		@courses = Course.all
	end

	def new
	end

end