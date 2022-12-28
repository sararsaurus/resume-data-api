class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students.as_json
  end

  def create
    students = Student.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      short_bio: params[:short_bio],
      linkedin_url: params[:linkedin_url],
      twitter_handle: params[:twitter_handle],
      online_resume_url: params[:online_resume_url],
      github_url: params[:github_url],
      photo_url: params[:photo_url],
      personal_website_url: params[:personal_website_url],

    )
    if students.save
      render json: students
    else
      render json: { errors: students.errors.full_messages }, status: :bad_request
    end
  end

  def show
    student = Student.find_by(id: params[:id])
    render json: student.as_json
  end

  def update
  end

  def destroy
    student = Student.find_by(id: params[:id])
    if student.delete
      render json: { message: "Student Succesfully Removed" }
    else
      render json: { errors: student.errors.full_messages }, status: :bad_request
    end
  end
end
