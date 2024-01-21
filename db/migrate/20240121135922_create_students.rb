class CreateStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :students do |t|
      t.references :user
      t.references :course

      t.timestamps
    end
  end
end
