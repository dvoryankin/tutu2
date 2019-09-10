json.extract! ticket, :id, :number, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
