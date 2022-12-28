class AddDefaultValueFalse < ActiveRecord::Migration[7.0]
  def change
    change_column :skills, :python, :boolean, default: false
    change_column :skills, :javascript, :boolean, default: false
    change_column :skills, :java, :boolean, default: false
    change_column :skills, :c, :boolean, default: false
    change_column :skills, :C, :boolean, default: false
    change_column :skills, :Cplus, :boolean, default: false
    change_column :skills, :GO, :boolean, default: false
    change_column :skills, :R, :boolean, default: false
    change_column :skills, :swift, :boolean, default: false
    change_column :skills, :PHP, :boolean, default: false
  end
end
