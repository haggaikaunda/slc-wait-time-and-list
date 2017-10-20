class CreateDropInHistories < ActiveRecord::Migration
  def change
    create_table :drop_in_histories do |t|
      #entered by student, visible on tutor form
      t.integer :student_id #should be foreign key.
      t.string :course
      t.integer :tutor_sid
      t.time :start_time
      t.time :end_time #endtime => create time since students are added to the histroy after being seen.
      t.string :tutor_notes

      #*** what will be the values of status? -- "in progress", "waiting" ---> just "no show"?
      t.string :status
      t.timestamps  #sort by create time.
      
      # t.timestamps null: false # not sure what 'null: false' means, maybe true?
      
      # t.time :end_time
      # t.text :notes
      # t.string :request_type //all students in the queue are here for dropin.
    end
  end
end
