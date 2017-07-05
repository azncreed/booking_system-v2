json.extract! session, :id, :contact_name, :email, :phone_number, :timeslot_id, :confirmation, :created_at, :updated_at
json.url session_url(session, format: :json)
