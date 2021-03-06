class TasksController < ApplicationController

	before_filter :load

	def load
		@tasks = Task.all
		@task = Task.new
	end

	def index
	end

	def create
		@task = Task.new(tasks_params) #form on new page passes through user specified params in tasks_params here otherwise it will all just be nil
		# render partial: 'tasks/_task.json.bldr'
		if @task.save
			render @task
		else
			render nothing: true
		end
	end

	def destroy
		@task = Task.find(params[:id])
		if @task.destroy
			respond_to do |format|
				format.js { render json: @task }
				format.html { redirect_to tasks_path}
			end
		end
	end

	def edit
		@task = Task.find(params[:id])
	end

	def update
		@task = Task.find(params[:id])
		if @task.update_attributes(tasks_params)
			@tasks = Task.all
		end
	end

	private

	def tasks_params
		params.require(:task).permit(:name,:description,:do_by_datetime,:urgency,:importance, :created_at,:updated_at, :category_id)
	end


end
