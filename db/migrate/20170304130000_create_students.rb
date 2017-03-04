class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :resume_headline
      t.string :email
      t.string :phone_number
      t.string :designation
      t.string :experience
      t.string :location
      t.string :key_skills

      t.timestamps
    end
  end
end
