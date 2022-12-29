class ChangeCtoCsharp < ActiveRecord::Migration[7.0]
  def change
    rename_column :skills, :c, :Csharp
  end
end
