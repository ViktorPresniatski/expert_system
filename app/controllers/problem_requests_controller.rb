class ProblemRequestsController < ApplicationController
  def index
    @problem_requests = ProblemRequest.all
  end

  def show
  end
  
end
