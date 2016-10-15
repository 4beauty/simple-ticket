class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.string :comment
      t.string :submitted_by
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
