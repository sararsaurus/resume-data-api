class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students.as_json
  end

  def create
    @students = Student.new(
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
    @students.save
    if @students.save
    end
  end

  def show
  end

  def update
  end

  def destroy
  end
end
