json.extract! timeslot, :id, :date, :start_time, :advisor, :created_at, :updated_at
json.url timeslot_url(timeslot, format: :json)
