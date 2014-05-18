class TasksController < ApplicationController
	
	def index
		@tasks = Task.all
	end

	def new
		@task = Task.new
	end

	def create
		@task = Task.new(tasks_params) #form on new page passes through user specified params in tasks_params here otherwise it will all just be nil
		if @task.save
			redirect_to tasks_path
		else
			render :new
		end
	end


	# def show
	# 	@task = Task.find(params[:id])
	# end

	def destroy
		@task = Task.find(params[:id])
		if @task.destroy
			redirect_to tasks_path
		end
	end

	def edit
		@task = Task.find(params[:id])
	end

	def update
		@task = Task.find(params[:id])
		if @task.update_attributes(tasks_params)
			redirect_to tasks_path
		end
	end

	private

	def tasks_params
		params.require(:task).permit(:name,:description,:do_by_datetime,:urgency,:importance, :created_at,:updated_at)
	end


end
