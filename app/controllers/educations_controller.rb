class EducationsController < ApplicationController
  def index
    educations = Education.all
    render json: educations.as_json
  end

  def show
  end

  def create
  end

  def update
  end

  def destroy
  end
end
