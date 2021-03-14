class AddClientRefToPet < ActiveRecord::Migration[6.1]
  def change
    add_reference :pets, :client, null: false, foreign_key: true
  end
end
