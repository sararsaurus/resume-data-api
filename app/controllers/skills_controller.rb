class SkillsController < ApplicationController
  before_action :authenticate_student, except: [:index, :show]

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
      csharp: params[:csharp],
      c: params[:c],
      go: params[:go],
      cplus: params[:cplus],
      swift: params[:swift],
      php: params[:php],
      other: params[:other],
    )
    if skills.save
      render json: skills
    else
      render json: { errors: skills.errors.full_messages }, status: :bad_request
    end
  end

  def toggle_enable_status
    skill.toggle!(:enabled)
  end

  def update
    skill = Skill.find_by(id: params["id"])

    if skill.python != params[:python]
      skill.toggle!(:python)
    end
    if skill.javascript != params[:javascript]
      skill.toggle!(:javascript)
    end
    if skill.java != params[:java]
      skill.toggle!(:java)
    end
    if skill.csharp != params[:csharp]
      skill.toggle!(:csharp)
    end
    if skill.go != params[:go]
      skill.toggle!(:go)
    end
    if skill.r != params[:r]
      skill.toggle!(:r)
    end
    if skill.swift != params[:swift]
      skill.toggle!(:swift)
    end
    if skill.php != params[:php]
      skill.toggle!(:php)
    end
    skill.other = params["other"]
    if skill.save
      render json: skill.as_json
    else
      ender json: { errors: skill.errors.full_messages }, status: 418
    end
  end

  def destroy
    skill = Skill.find_by(id: params[:id])
    if skill.delete
      render json: { message: "Skill Removed" }
    else
      render json: { errors: skill.errors.full_messages }
    end
  end
end
