class QuestionnaresController < ApplicationController
  def show
    @questionnary = Questionnare.find(params[:id])
  end
end