class AddToExperiments < ActiveRecord::Migration[5.1]
  def change
    add_column :experiments, :title, :string
    change_column_null :experiments, :conclusions, false
    change_column_null :experiments, :results, false
  end
end
