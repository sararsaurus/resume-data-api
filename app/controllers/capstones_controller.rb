class CapstonesController < ApplicationController
  before_action :authenticate_student, except: [:index, :show]

  def index
    @capstones = Capstone.all
    render :index
  end

  def show
    @capstone = Capstone.find_by(id: params[:id])
    render :show
  end

  def create
    capstone = Capstone.create(
      student_id: current_student.id,
      capstone_name: params[:capstone_name],
      capstone_description: params[:capstone_description],
      capstone_url: params[:capstone_url],
      capstone_screenshot: params[:capstone_screenshot],
    )
    if capstone.save
      render json: capstone.as_json
    else
      render json: { errors: @capstone.errors.full_messages }, status: 418
    end
  end

  def update
    capstone = Capstone.find_by(id: params[:id])
    capstone.update(
      capstone_name: params[:capstone_name] || capstone.capstone_name,
      capstone_description: params[:capstone_description] || capstone.capstone_description,
      capstone_url: params[:capstone_url] || capstone.capstone_url,
      capstone_screenshot: params[:capstone_screenshot] || capstone.capstone_screenshot,
    )
    if capstone.save
      render json: capstone.as_json
    else
      render json: { errors: @capstone.errors.full_messages }, status: 418
    end
  end

  def destroy
    capstone = Capstone.find_by(id: params[:id])
    capstone.destroy
    render json: { message: "Capstone destroyed successfully" }
  end
end
