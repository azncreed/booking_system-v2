class AddEndTimeToTimeslots < ActiveRecord::Migration[5.1]
  def change
    add_column :timeslots, :end_time, :time
  end
end
