json.extract! ticket, :id, :comment, :submitted_by, :user_id, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)