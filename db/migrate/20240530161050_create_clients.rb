class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :state
      t.boolean :active

      t.timestamps
    end
  end
end
