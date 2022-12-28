class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students.as_jsong
  end

  def create
  end

  def show
  end

  def update
  end

  def destroy
  end
end
