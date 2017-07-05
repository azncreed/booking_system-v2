class AddAdvisorToTimeslots < ActiveRecord::Migration[5.1]
  def change
    add_reference :timeslots, :advisor, foreign_key: true
  end
end
