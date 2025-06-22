class AddPauseFieldsToSubscriptions < ActiveRecord::Migration[6.1]
  def change
    add_column :subscriptions, :paused_at, :datetime
    add_column :subscriptions, :resumed_at, :datetime
    add_column :subscriptions, :next_charge_at, :datetime
    add_column :subscriptions, :paused, :boolean, default: false, null: false
  end
end
