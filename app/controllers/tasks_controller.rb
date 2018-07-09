class TasksController < ApplicationController
  


def create 
    rows = Task.count
   @task = Task.new
   @task.title = params[:title]
   @task.order = rows +1
 
    @task.save
    redirect_to root_url
end




def destroy
    @task = Task.find(params[:id])
    @task.destroy
   
    redirect_to root_url
  end




private
  def task_params
    params.require(:task).permit(:title)
  end

end
