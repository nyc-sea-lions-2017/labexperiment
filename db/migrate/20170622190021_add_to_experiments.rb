class AddToExperiments < ActiveRecord::Migration[5.1]
  def change
    add_column :experiments, :title, :string
    add_column :experiments, :state, :string
    change_column_null :experiments, :conclusions, true
    change_column_null :experiments, :results, true
  end
end
