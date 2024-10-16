json.extract! student, :id, :name, :mail, :pw, :grade_id, :kana, :created_at, :updated_at
json.url student_url(student, format: :json)
