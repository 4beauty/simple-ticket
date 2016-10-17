class AddDepartmentToTicket < ActiveRecord::Migration[5.0]
  def change
    add_reference :tickets, :department, foreign_key: true
  end
end
