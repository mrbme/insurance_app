class CreateProspects < ActiveRecord::Migration[5.2]
  def change
    create_table :prospects do |t|
      t.string :zipcode
      t.string :gender
      t.string :age
      t.string :tobacco
      t.string :height
      t.string :weight
      t.string :disease
      t.string :familydisease

      t.timestamps
    end
  end
end
