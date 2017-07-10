class RemoveStatusFromTimeslots < ActiveRecord::Migration[5.1]
  def change
    remove_column :timeslots, :status, :integer
  end
end
