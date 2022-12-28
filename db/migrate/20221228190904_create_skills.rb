class CreateSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :skills do |t|
      t.boolean :python
      t.boolean :javascript
      t.boolean :java
      t.boolean :c #
      t.boolean :C
      t.boolean :Cplus
      t.boolean :GO
      t.boolean :R
      t.boolean :swift
      t.boolean :PHP

      t.timestamps
    end
  end
end
