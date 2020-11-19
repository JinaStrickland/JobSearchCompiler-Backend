class CreateJobContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :job_contacts do |t|
      t.integer :job_application_id
      t.integer :contact_id

      t.timestamps
    end
  end
end
