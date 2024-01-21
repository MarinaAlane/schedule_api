class CreateModality < ActiveRecord::Migration[7.1]
  def change
    create_table :modality do |t|
      t.string :modality_name
      t.string :modality_description

      t.timestamps
    end
  end
end
