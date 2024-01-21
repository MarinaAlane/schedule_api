class CreateCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :courses do |t|
      t.numeric :total_vacancies
      t.numeric :available_vacancies
      t.date :time_start
      t.references :user
      t.references :modality
=
      t.timestamps
    end
  end
end
