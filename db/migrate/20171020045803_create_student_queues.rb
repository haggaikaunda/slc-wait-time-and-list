class CreateStudentQueues < ActiveRecord::Migration
  def change

    create_table :student_queue do |t|
      #entered by student, visible on tutor form
      add_foreign_key :student_queue, :students, column: :student_sid primary_key: :sid
      t.string :student_sid #should be foreign key.
      t.string :course
      t.integer :tutor_sid
      t.time :start_time

      #*** what will be the values of status? -- "in progress", "waiting" 
      t.boolean :waiting?
      t.timestamps  #sort by create time.
      
    end
  end
end


