class RemoveAdvisorFromTimeslots < ActiveRecord::Migration[5.1]
  def change
    remove_column :timeslots, :advisor, :string
  end
end
