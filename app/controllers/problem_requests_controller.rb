class ProblemRequestsController < ApplicationController
  def index
    @problem_requests = ProblemRequest.all
  end

  def show
    @problem_request = ProblemRequest.find(params[:id])
  end
end
