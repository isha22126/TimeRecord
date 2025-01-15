# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Room.delete_all
Teacher.delete_all
Grade.delete_all
Student.delete_all
Subject.delete_all
Timetable.delete_all
Attend.delete_all
Schedule.delete_all
# 教室
r1 = Room.create(name: "職員室")
r2 = Room.create(name: "商業センター")
r3 = Room.create(name: "進路指導室")
r4 = Room.create(name: "生徒指導室")
r5 = Room.create(name: "保健室")

# 教員
t1 = Teacher.create(name: "吉田", mail: "yoshida@xxx.com",   pw: "yoshida",   kana: "よしだ",   room_id: r3.id)
t2 = Teacher.create(name: "大野", mail: "oono@xxx.com",      pw: "oono",      kana: "おおの",   room_id: r1.id)
t3 = Teacher.create(name: "竹崎", mail: "takesaki@xxx.com",  pw: "takesaki",  kana: "たけさき", room_id: r3.id)
t4 = Teacher.create(name: "永田", mail: "nagata@xxx.com",    pw: "nagata",    kana: "ながた",   room_id: r2.id)
t5 = Teacher.create(name: "安食", mail: "aziki@xxx.com",     pw: "aziki",     kana: "あじき",   room_id: r3.id)
t6 = Teacher.create(name: "青木", mail: "aoki@xxx.com",    pw: "aoki",    kana: "あおき",   room_id: r5.id)
t7 = Teacher.create(name: "松本", mail: "matsumoto@xxx.com", pw: "matsumoto", kana: "まつもと", room_id: r4.id)
t8 = Teacher.create(name: "周藤", mail: "sutou@xxx.com",     pw: "sutou",     kana: "すとう",   room_id: r4.id)
t9 = Teacher.create(name: "松田", mail: "matsuda@xxx.com",   pw: "matsuda",   kana: "まつだ",   room_id: r4.id)


# 学年・クラス
c11 = Grade.create(grade_name: "1", class_name: "1")
c12 = Grade.create(grade_name: "1", class_name: "2") 
c13 = Grade.create(grade_name: "1", class_name: "3")
c14 = Grade.create(grade_name: "1", class_name: "4")
c21 = Grade.create(grade_name: "2", class_name: "1")
c22 = Grade.create(grade_name: "2", class_name: "2")
c23 = Grade.create(grade_name: "2", class_name: "3")
c24 = Grade.create(grade_name: "2", class_name: "4")
c31 = Grade.create(grade_name: "3", class_name: "1")
c32 = Grade.create(grade_name: "3", class_name: "2")
c33 = Grade.create(grade_name: "3", class_name: "3")
c34 = Grade.create(grade_name: "3", class_name: "4")

# 生徒
s1 = Student.create(name: "安達 康浩", mail: "isha22121@xxx.com", pw: "adachi",   kana: "あだちやすひろ",   grade_id: c34.id)
s2 = Student.create(name: "石田 健人", mail: "isha22122@xxx.com", pw: "ishida",   kana: "いしだけんと",   grade_id: c34.id)
s3 = Student.create(name: "和泉 海音", mail: "isha22123@xxx.com", pw: "izumi",    kana: "いずみかいと",   grade_id: c34.id)
s4 = Student.create(name: "伊藤 颯人", mail: "isha22124@xxx.com", pw: "itou",     kana: "いとうはやと",   grade_id: c11.id)
s5 = Student.create(name: "井上 優弥", mail: "isha22125@xxx.com", pw: "inoue",    kana: "いのうえゆうや", grade_id: c11.id)
s6 = Student.create(name: "岩成 歩", mail: "isha22126@xxx.com", pw: "iwanari",  kana: "いわなりあゆむ", grade_id: c11.id)
s7 = Student.create(name: "江角 花音", mail: "isha22127@xxx.com", pw: "esumi",    kana: "えすみかのん",   grade_id: c34.id)

# 教科
k0 = Subject.create(name: "-")
# k1 = Subject.create(name: "現国")
# k2 = Subject.create(name: "言文")
# k3 = Subject.create(name: "論国")
# k4 = Subject.create(name: "国表")
# k5 = Subject.create(name: "数学")
# k6 = Subject.create(name: "英語")
k7 = Subject.create(name: "英Ｃ")
k8 = Subject.create(name: "表現")
# k9 = Subject.create(name: "簿記")
# k10 = Subject.create(name: "原価")
# k11 = Subject.create(name: "財務")
# k12 = Subject.create(name: "ビ基")
# k13 = Subject.create(name: "プロ")
# k14 = Subject.create(name: "情処")
# k15 = Subject.create(name: "ソ活")
# k16 = Subject.create(name: "ネ活")
k17 = Subject.create(name: "ネ管")
k18 = Subject.create(name: "科人")
# k19 = Subject.create(name: "公共")
# k20 = Subject.create(name: "地理")
k21 = Subject.create(name: "歴史")
k22 = Subject.create(name: "体育")
# k23 = Subject.create(name: "保健")
k24 = Subject.create(name: "家総")
# k25 = Subject.create(name: "芸術")
# k26 = Subject.create(name: "α")
# k27 = Subject.create(name: "β")
# k28 = Subject.create(name: "課")
# k29 = Subject.create(name: "Ｌ")



# 時間割
today = Date.today
tommorow = today + 1
tt1 = Timetable.create(input: today, grade_id: c34.id,
  subject_id1: k21.id, teacher_id1: t2.id,   # 歴史、大野先生
  subject_id2: k7.id, teacher_id2: t3.id,   # 英語、竹崎先生
  subject_id3: k17.id, teacher_id3: t4.id,   # ネ管、永田先生
  subject_id4: k18.id, teacher_id4: t5.id,   # 科人、安食先生
  subject_id5: k8.id, teacher_id5: t6.id,   # 表現、青木先生
  subject_id6: k22.id, teacher_id6: t7.id,   # 体育、松本先生 
  subject_id7: k24.id, teacher_id7: t8.id,   # 家総、周藤先生
  hr_teacher_id1: t1.id, hr_teacher_id2: t9.id
)
tt2 = Timetable.create(input: today, grade_id: c11.id,
  subject_id1: k7.id, teacher_id1: t3.id,
  subject_id2: k17.id, teacher_id2: t4.id,
  subject_id3: k18.id, teacher_id3: t5.id,
  subject_id4: k8.id, teacher_id4: t6.id,
  subject_id5: k22.id, teacher_id5: t7.id,
  subject_id6: k24.id, teacher_id6: t8.id,
  subject_id7: k21.id, teacher_id7: t2.id,
  hr_teacher_id1: t9.id, hr_teacher_id2: t1.id
)
tt3 = Timetable.create(input: tommorow, grade_id: c34.id,
  subject_id1: k1.id, teacher_id1: t2.id,
  subject_id2: k4.id, teacher_id2: t7.id,
  subject_id3: k5.id, teacher_id3: t6.id,
  subject_id4: k7.id, teacher_id4: t3.id,
  subject_id5: k3.id, teacher_id5: t4.id,
  subject_id6: k6.id, teacher_id6: t5.id,
  subject_id7: k2.id, teacher_id7: t8.id,
  hr_teacher_id1: t9.id, hr_teacher_id2: t1.id
)
#出席
a1 = Attend.create(input: today, student_id: s1.id,
  hr_attend1: false, hr_attend2: true,
  attend1: false, attend2: true, attend3: false, attend4: true, attend5: false, attend6: true, attend7: false,
  hr_comment1: "", hr_comment2: "発熱により早退",
  comment1: "", comment2: "腹痛のため保健室",
  comment3: "", comment4: "体育でケガをし保健室",
  comment5: "", comment6: "理科の実験に失敗し保健室",
  comment7: "",
)
a2 = Attend.create(input: today, student_id: s2.id,
  hr_attend1: false, hr_attend2: false,
  attend1: false, attend2: false, attend3: false, attend4: false, attend5: false, attend6: false, attend7: false,
  hr_comment1: "", hr_comment2: "",
  comment1: "", comment2: "",
  comment3: "", comment4: "",
  comment5: "", comment6: "",
  comment7: "",
)
a3 = Attend.create(input: today, student_id: s3.id,
  hr_attend1: false, hr_attend2: false,
  attend1: false, attend2: false, attend3: false, attend4: false, attend5: false, attend6: false, attend7: false,
  hr_comment1: "", hr_comment2: "",
  comment1: "", comment2: "",
  comment3: "", comment4: "",
  comment5: "", comment6: "",
  comment7: "",
)
a4 = Attend.create(input: today, student_id: s4.id,
  hr_attend1: false, hr_attend2: true,
  attend1: false, attend2: false, attend3: false, attend4: true, attend5: true, attend6: true, attend7: true,
  hr_comment1: "", hr_comment2: "",
  comment1: "", comment2: "",
  comment3: "", comment4: "就職試験のため早退",
  comment5: "", comment6: "",
  comment7: "",
)
a5 = Attend.create(input: today, student_id: s5.id,
  hr_attend1: false, hr_attend2: false,
  attend1: false, attend2: false, attend3: false, attend4: false, attend5: false, attend6: false, attend7: false,
  hr_comment1: "", hr_comment2: "",
  comment1: "", comment2: "",
  comment3: "", comment4: "",
  comment5: "", comment6: "",
  comment7: "",
)
a6 = Attend.create(input: today, student_id: s6.id,
  hr_attend1: false, hr_attend2: false,
  attend1: false, attend2: false, attend3: false, attend4: false, attend5: false, attend6: false, attend7: false,
  hr_comment1: "", hr_comment2: "",
  comment1: "", comment2: "",
  comment3: "", comment4: "",
  comment5: "", comment6: "",
  comment7: "",
)

a7 = Attend.create(input: tommorow, student_id: s1.id,
  hr_attend1: false, hr_attend2: false,
  attend1: false, attend2: false, attend3: false, attend4: false, attend5: false, attend6: false, attend7: false,
  hr_comment1: "", hr_comment2: "",
  comment1: "", comment2: "",
  comment3: "", comment4: "",
  comment5: "", comment6: "",
  comment7: "",
)
a8 = Attend.create(input: tommorow, student_id: s2.id,
  hr_attend1: false, hr_attend2: false,
  attend1: false, attend2: false, attend3: false, attend4: false, attend5: false, attend6: false, attend7: false,
  hr_comment1: "", hr_comment2: "",
  comment1: "", comment2: "",
  comment3: "", comment4: "",
  comment5: "", comment6: "",
  comment7: "",
)
a9 = Attend.create(input: tommorow, student_id: s3.id,
hr_attend1: false, hr_attend2: false,
attend1: false, attend2: false, attend3: false, attend4: false, attend5: false, attend6: false, attend7: false,
hr_comment1: "", hr_comment2: "",
comment1: "", comment2: "",
comment3: "", comment4: "",
comment5: "", comment6: "",
comment7: "",
)
# スケジュール
time =Time.current.beginning_of_day
s_date = time.advance(hours: 10)
f_date = time.advance(hours: 11,minutes: 30)
sc1 = Schedule.create(teacher_id: t1.id, input: today,
  start: s_date,finish: f_date,
)
sc2 = Schedule.create(teacher_id: t2.id, input: today,
  start: s_date,finish: f_date,
)
s_date = time.advance(days: 2,hours: 14)
f_date = time.advance(days: 2,hours: 16,minutes: 30)
sc3 = Schedule.create(teacher_id: t1.id, input: today + 2,
  start: s_date,finish: f_date,
)
