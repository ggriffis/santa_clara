class AddTimestampsToConsumer < ActiveRecord::Migration
  def change
      add_column(:consumers, :created_at, :datetime)
      add_column(:consumers, :updated_at, :datetime)
  end
end
