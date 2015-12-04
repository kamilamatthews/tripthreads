class StyleSurveysController < ApplicationController
  def new
    @style_survey = StyleSurvey.new
    @destination = Destination.new
    @look = Look.new


  end

  def create
    @style_survey = StyleSurvey.create(style_survey_params)
    @destination = Destination.create(destination_params)
    if @style_survey.save && @destination.save
      flash[:notice] = 'successfully saved'
      redirect_to root_path
    else
      flash[:error] = 'no dice.'
      render :new
    end
  end

  def edit
  end

  def update
  end

  def style_survey_params
    params.require(:style_survey).permit(:style_type, :colors, :patterns, :preferred_brands, :age)
  end

  def destination_params
    params.require(:destination).permit(:name, :climate, :person,  'looks': [:name, :items, :preferred_jeans_types, :preferred_shoes_types, :jewelry_types])
  end
end
