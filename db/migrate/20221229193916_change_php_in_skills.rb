class ChangePhpInSkills < ActiveRecord::Migration[7.0]
  def change
    rename_column :skills, :PHP, :php
  end
end
