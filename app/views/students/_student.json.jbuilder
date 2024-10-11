json.extract! student, :id, :name, :kana, :mail, :pw, :created_at, :updated_at
json.url student_url(student, format: :json)
