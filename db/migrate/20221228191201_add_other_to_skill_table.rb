class AddOtherToSkillTable < ActiveRecord::Migration[7.0]
  def change
    add_column :skills, :other, :string
  end
end
