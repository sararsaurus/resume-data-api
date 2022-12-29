class ChangeCsharpInSkills < ActiveRecord::Migration[7.0]
  def change
    rename_column :skills, :Csharp, :csharp
  end
end
