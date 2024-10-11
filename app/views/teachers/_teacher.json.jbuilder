json.extract! teacher, :id, :name, :mail, :pw, :kana, :created_at, :updated_at
json.url teacher_url(teacher, format: :json)
