class Part2Controller < ApplicationController
  protect_from_forgery only: []
  def all
    render json: Task.all
  end

  def register_task
    task_id = params[:id]
    # TODO: verify uniq?
    Task.new(id: task_id).save!
    head 201
  end

  def complete_task
    task_id = params[:id]
    # TODO check exists, etc
    task = Task.find(task_id)
    task.set_completed
    head 204
  end

  def get_status
    status = Task.get_recent_status
    render json: status
  end
end
