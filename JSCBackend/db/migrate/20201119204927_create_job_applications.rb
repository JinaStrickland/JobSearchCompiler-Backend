class CreateJobApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :job_applications do |t|
      t.string :communication_type
      t.date :resume_sent
      t.string :resume
      t.string :cover_letter
      t.string :status
      t.text :notes
      t.string :applied_location
      t.string :application_name
      t.integer :interest_level
      t.integer :user_id
      t.integer :company_id
      t.integer :contact_id
      t.integer :follow_up_id
      t.integer :interview_id
      t.integer :job_contact_id

      t.timestamps
    end
  end
end
