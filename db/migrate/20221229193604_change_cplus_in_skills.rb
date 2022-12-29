class ChangeCplusInSkills < ActiveRecord::Migration[7.0]
  def change
    rename_column :skills, :Cplus, :cplus
  end
end
