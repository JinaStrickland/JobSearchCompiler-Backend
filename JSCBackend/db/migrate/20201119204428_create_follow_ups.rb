class CreateFollowUps < ActiveRecord::Migration[6.0]
  def change
    create_table :follow_ups do |t|
      t.date :follow_up_date
      t.string :contact_type
      t.integer :job_application_id

      t.timestamps
    end
  end
end
