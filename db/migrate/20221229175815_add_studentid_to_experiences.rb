class AddStudentidToExperiences < ActiveRecord::Migration[7.0]
  def change
    def change
      add_column :experiences, :student_id, :integer
    end
  end
end
