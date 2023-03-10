class StudentsController < ApplicationController
  before_action :authenticate_student, except: [:index, :create, :show]

  def index
    @students = Student.all
    render :index
  end

  def create
    @student_signup = Student.new(
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
      personal_website_url: params[:personal_website_url], password: params[:password],
      password_confirmation: params[:password_confirmation],

    )
    if @student_signup.save
      render json: @student_signup.as_json #{ message: "Successfully Signed up" }
    else
      render json: { errors: @student_signup.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @student = Student.find_by(id: params[:id])
    render :show
  end

  def update
    student = Student.find_by(id: params["id"])
    student.first_name = params["first_name"] || student.first_name
    student.last_name = params["last_name"] || student.last_name
    student.email = params["email"] || student.email
    student.phone_number = params["phone_number"] || student.phone_number
    student.short_bio = params["short_bio"] || student.short_bio
    student.linkedin_url = params["linkedin_url"] || student.linkedin_url
    student.twitter_handle = params["twitter_handle"] || student.twitter_handle
    student.online_resume_url = params["online_resume_url"] || student.online_resume_url
    student.github_url = params["github_url"] || student.github_url
    student.photo_url = params["photo_url"] || student.photo_url
    student.personal_website_url = params["personal_website_url"] || student.personal_website_url
    @student = student
    if student.save
      render json: student
    else
      render json: { errors: student.errors.full_messages }, status: 418
    end
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
