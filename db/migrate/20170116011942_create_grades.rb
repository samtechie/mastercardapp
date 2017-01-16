class CreateGrades < ActiveRecord::Migration[5.0]
  def change
    create_table :grades do |t|
      t.string :course
      t.string :grade
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :grades, [:user_id, :created_at]
  end
end
