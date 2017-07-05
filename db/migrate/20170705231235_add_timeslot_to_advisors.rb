class AddTimeslotToAdvisors < ActiveRecord::Migration[5.1]
  def change
    add_reference :advisors, :timeslot, foreign_key: true
  end
end
