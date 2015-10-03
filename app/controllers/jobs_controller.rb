class JobsController < ApplicationController
	def index
		p 'I am in the index page'
	end


	def new
		@job = Job.new
	end
	 def create
	 	p "all params : #{params}"
	 	p "job params: #{job_params}"
	 	p "jobs_path: #{job_params}"
	 	Job.create(job_params)
	 	redirect_to jobs_path
	 end

	 private
	 def job_params
	 	params.require(:job).permit(:title, :description)
 	end
end