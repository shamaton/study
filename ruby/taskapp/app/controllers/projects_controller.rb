class ProjectsController < ApplicationController

	# 先に実行される
	before_action :set_project, only: [:show, :edit, :update, :destroy]

	def index
		# データを全部取得
		@projects = Project.all
	end

	def show
		# befor_actionだけ呼ばれている
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)
		# 成功ならtrue
		if @project.save()
			redirect_to projects_path
		else
			render 'new'
		end
	end

	def edit
		# befor_actionだけ呼ばれている
	end

	def update
		# befor_actionが呼ばれている
		if @project.update(project_params)
			redirect_to projects_path
		else
			render 'edit'
		end
	end

	def destroy
		# befor_actionが呼ばれている
		@project.destroy()
		redirect_to projects_path
	end

	# 必要なパラメしか取らないように
	private
		def project_params
			params[:project].permit(:title)
		end

		def set_project
			@project = Project.find(params[:id])
		end
end
