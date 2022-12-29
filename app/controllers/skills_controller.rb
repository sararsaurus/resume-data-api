class SkillsController < ApplicationController
  def index
    skills = Skill.all
    render json: skills
  end

  def show
    skill = Skill.find_by(id: params[:id])
  end

  def create
    skills = Skill.new(
      student_id: current_student.id,
      python: params[:python],
      javascript: params[:javascript],
      Csharp: params[:Csharp],
      C: params[:C],
      Cplus: params[:Cplus],
      swift: params[:swift],
      PHP: params[:Php],
      other: params[:other],
    )
    if skills.save
      render json: skills
    else
      render json: { errors: skills.errors.full_messages }, status: :bad_request
    end
  end

  def update
  end

  def delete
    skill = Skill.find_by(id: params[:id])
    if skill.delete
      render json: { message: "Skill Removed" }
    else
      render json: { errors: skill.errors.full_messages }
    end
  end
end
