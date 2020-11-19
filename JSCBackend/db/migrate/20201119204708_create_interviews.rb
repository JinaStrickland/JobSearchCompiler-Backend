class CreateInterviews < ActiveRecord::Migration[6.0]
  def change
    create_table :interviews do |t|
      t.datetime :interview_date
      t.text :information
      t.integer :job_application_id

      t.timestamps
    end
  end
end
