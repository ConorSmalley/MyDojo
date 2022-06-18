class CreateStyleGrades < ActiveRecord::Migration[6.1]
  def change
    create_table :style_grades do |t|
      t.integer :style_id
      t.integer :grade_id
      t.integer :next_grade
      t.integer :previous_grade

      t.timestamps
    end
  end
end
