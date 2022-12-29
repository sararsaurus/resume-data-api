class ChangeRInSkills < ActiveRecord::Migration[7.0]
  def change
    rename_column :skills, :R, :r
  end
end
