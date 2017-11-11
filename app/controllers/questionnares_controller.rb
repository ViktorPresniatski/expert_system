class QuestionnaresController < ApplicationController
  def new
    @questionnary = Questionnare.new
  end

  def create
    @questionnary = Questionnare.new(form_data: params[formData])
    if @questionnary.save
      redirect_to problem_requests_path
    else
      render :new
    end
  end

  def show
    @questionnary = Questionnare.find(params[:id])
  end

end
