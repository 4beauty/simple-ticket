class AddCompletionTimeToTicket < ActiveRecord::Migration[5.0]
  def change
    add_column :tickets, :completed_on, :datetime
  end
end
