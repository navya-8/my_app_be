class CreateJoinTableServiceClient < ActiveRecord::Migration[5.2]
  def change
    create_table :clients_services, id: false do |t|
      t.belongs_to :client
      t.belongs_to :service
    end

    add_index :clients_services, [:client_id, :service_id]
  end
end
