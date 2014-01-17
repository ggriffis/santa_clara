class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :short_description
      t.text :full_description
      t.integer :percent_discount
      t.references :business, index: true
    end
  end
end
