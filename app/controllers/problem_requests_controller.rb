class ProblemRequestsController < ApplicationController
  def index
    if params[:category_id].present?
      ids = Category.find_by(id: params[:category_id]).children.ids
      ids << params[:category_id].to_i
      @problem_requests = ProblemRequest.joins(:category).where('categories.id IN (?)', ids)
    else
      @problem_requests = ProblemRequest.all
    end
  end

  def show
    @problem_request = ProblemRequest.find(params[:id])
  end
end
