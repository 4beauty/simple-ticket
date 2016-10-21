class AddClaimedTimeToTicket < ActiveRecord::Migration[5.0]
  def change
    add_column :tickets, :claimed_on, :datetime
  end
end
