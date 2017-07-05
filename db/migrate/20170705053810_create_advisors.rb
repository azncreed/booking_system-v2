class CreateAdvisors < ActiveRecord::Migration[5.1]
  def change
    create_table :advisors do |t|
      t.string :name
      t.time :duration
      t.string :description

      t.timestamps
    end
  end
end
