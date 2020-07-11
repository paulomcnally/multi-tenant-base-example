class CreateAccountCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :account_companies do |t|
      t.string :name, null: false, default: ''
      t.string :phone_number, null: false, default: ''
      t.string :tenant, null: false, default: ''
      t.boolean :enabled

      t.timestamps
    end
  end
end
