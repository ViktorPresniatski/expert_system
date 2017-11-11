class ProblemRequestsController < ApplicationController
  before_action :authenticate_user!, only: [:add_response]

  def index
    @problem_requests = ProblemRequest.all
  end

  def show
    @problem_request = ProblemRequest.find(params[:id])
  end

  def add_response
    @problem_request = ProblemRequest.find(params[:problem_request_id])
    @expert_response = @problem_request.add_response(expert_response_params, current_user)
    if !@expert_response.valid?
      expert_response_error_message = ''
      @expert_response.errors.full_messages.each do |error|
        expert_response_error_message += "#{error[:message]}\n"
      end
      flash[:expert_response_error_message] = expert_response_error_message
    end
    redirect_to @problem_request
  end

  private

  def expert_response_params
    params.require('expert_response').permit('response_text')
  end
end
