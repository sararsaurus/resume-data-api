class ExperiencesController < ApplicationController
  before_action :authenticate_student, except: [:index, :show]

  def index
    experiences = Experience.all
    render json: experiences.as_json
  end

  def show
    experience = Experience.find_by(id: params[:id])
    render json: experience.as_json
  end

  def create
    experience = Experience.create(
      start_date: params[:start_date],
      end_date: params[:end_date],
      job_title: params[:job_title],
      company_name: params[:company_name],
      details: params[:details],
    )
    if experience.save
      render json: experience.as_json
    else
      render json: { errors: experience.errors.full_messages }, status: 418
    end
  end

  def update
    experience = Experience.find_by(id: params[:id])
    experience.update(
      start_date: params[:start_date] || experience.start_date,
      end_date: params[:end_date] || experience.end_date,
      job_title: params[:job_title] || experience.job_title,
      company_name: params[:company_name] || experience.company_name,
      details: params[:details] || experience.details,
    )
    if experience.save
      render json: experience.as_json
    else
      render json: { errors: experience.errors.full_messages }, status: 418
    end
  end

  def destroy
    experience = Experience.find_by(id: params[:id])
    experience.destroy
    render json: { message: "experience destroyed successfully" }
  end
end
