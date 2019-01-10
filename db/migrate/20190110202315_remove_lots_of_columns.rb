class RemoveLotsOfColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :students, :course_id
    remove_column :students, :cohort_id
    remove_column :instructors, :course_id
    remove_column :instructors, :cohort_id
    remove_column :courses, :cohort_id

  end
end
