class ChangeCInSkills < ActiveRecord::Migration[7.0]
  def change
    rename_column :skills, :C, :c
  end
end
