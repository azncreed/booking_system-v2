class AddBookedAtToTimeslots < ActiveRecord::Migration[5.1]
  def change
    add_column :timeslots, :booked_at, :datetime
  end
end
