class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :contact_name
      t.string :contact_email
    end
  end
end
