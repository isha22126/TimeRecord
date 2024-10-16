class Timetable < ApplicationRecord
  belongs_to :subject1 ,class_name: 'Subject',foreign_key: 'subject_id1'
  belongs_to :subject2 ,class_name: 'Subject',foreign_key: 'subject_id2'
  belongs_to :subject3 ,class_name: 'Subject',foreign_key: 'subject_id3'
  belongs_to :subject4 ,class_name: 'Subject',foreign_key: 'subject_id4'
  belongs_to :subject5 ,class_name: 'Subject',foreign_key: 'subject_id5'
  belongs_to :subject6 ,class_name: 'Subject',foreign_key: 'subject_id6'
  belongs_to :subject7 ,class_name: 'Subject',foreign_key: 'subject_id7'
  
  belongs_to :teacher1 ,class_name: 'Teacher',foreign_key: 'teacher_id1'
  belongs_to :teacher2 ,class_name: 'Teacher',foreign_key: 'teacher_id2'
  belongs_to :teacher3 ,class_name: 'Teacher',foreign_key: 'teacher_id3'
  belongs_to :teacher4 ,class_name: 'Teacher',foreign_key: 'teacher_id4'
  belongs_to :teacher5 ,class_name: 'Teacher',foreign_key: 'teacher_id5'
  belongs_to :teacher6 ,class_name: 'Teacher',foreign_key: 'teacher_id6'
  belongs_to :teacher7 ,class_name: 'Teacher',foreign_key: 'teacher_id7'
  belongs_to :hr_teacher1 ,class_name: 'Teacher',foreign_key: 'hr_teacher_id1'
  belongs_to :hr_teacher2 ,class_name: 'Teacher',foreign_key: 'hr_teacher_id2'
end
