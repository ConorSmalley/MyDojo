class CreateGrades < ActiveRecord::Migration[6.1]
  def change
    create_table :grades do |t|
      t.string :name
      t.string :colour
      t.string :tag

      t.timestamps
    end
  end
end
