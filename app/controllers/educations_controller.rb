class EducationsController < ApplicationController
  before_action :authenticate_student, except: [:index, :show]

  def index
    @educations = Education.all
    render :index
  end

  def show
    @education = Education.find_by(id: params[:id])
    render :show
  end

  def create
    education = Education.create(
      start_date: params[:start_date],
      end_date: params[:end_date],
      degree: params[:degree],
      university_name: params[:university_name],
      details: params[:details],
    )
    if education.save
      render json: education.as_json
    else
      ender json: { errors: @product.errors.full_messages }, status: 418
    end
  end

  def update
    education = Education.find_by(id: params[:id])
    education.update(
      start_date: params[:start_date] || education.start_date,
      end_date: params[:end_date] || education.end_date,
      degree: params[:degree] || education.degree,
      university_name: params[:university_name] || education.university_name,
      details: params[:details] || education.details,
    )
    if education.save
      render json: education.as_json
    else
      ender json: { errors: @product.errors.full_messages }, status: 418
    end
  end

  def destroy
    education = Education.find_by(id: params[:id])
    education.destroy
    render json: { message: "Education destroyed successfully" }
  end
end
