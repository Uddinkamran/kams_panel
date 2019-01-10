class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :course_name
      t.string :hours
      t.string :user_id
      t.references :cohort

      t.timestamps
    end
  end
end
