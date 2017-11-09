class ProblemRequestsController < ApplicationController
  def index
    @problem_requests = ProblemRequest.all
  end
end
