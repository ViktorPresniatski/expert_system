class QuestionnaresController < ApplicationController
  def new
    @questionnary = Questionnare.new
  end

  def create
    #TODO parsing from params
    @questionnary = Questionnare.new(questionnary_params)
    if @questionnary.save
      redirect_to problem_requests_path
    else
      render :new
    end
  end

  def show
    @questionnary = Questionnare.find(params[:id])
  end

  private

  def questionnary_params
    params.require(:questionnary)
  end
end