class Api::StyleSurveysController < ApiController
  before_action :authenticated?

  def create

  end

  def destroy
    begin
      style_survey = StyleSurvey.find(params[:id])
      style_survey.destroy
      render json: {}, status: :no_content
    rescue ActiveRecord::RecordNotFound
      render json: {}, status: :not_found
    end
  end
end
