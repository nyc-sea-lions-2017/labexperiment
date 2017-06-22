class CreateObservations < ActiveRecord::Migration[5.1]
  def change
    create_table :observations do |t|
      t.references :user, foreign_key: true
      t.string :body
      t.references :observable, polymorphic: true

      t.timestamps
    end
  end
end
