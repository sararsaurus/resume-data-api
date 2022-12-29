class ChangeGoInSkills < ActiveRecord::Migration[7.0]
  def change
    rename_column :skills, :GO, :go
  end
end
