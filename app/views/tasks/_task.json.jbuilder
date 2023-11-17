json.extract! task, :id, :name, :due, :complete, :project_id, :created_at, :updated_at
json.url task_url(task, format: :json)
