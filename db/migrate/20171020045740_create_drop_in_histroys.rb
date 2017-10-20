class CreateDropInHistroys < ActiveRecord::Migration
  def change
    create_table :drop_in_histroys do |t|
      t.string :student_id

      t.timestamps null: false
    end
  end
end
