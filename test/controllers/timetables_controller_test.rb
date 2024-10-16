require "test_helper"

class TimetablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @timetable = timetables(:one)
  end

  test "should get index" do
    get timetables_url
    assert_response :success
  end

  test "should get new" do
    get new_timetable_url
    assert_response :success
  end

  test "should create timetable" do
    assert_difference('Timetable.count') do
      post timetables_url, params: { timetable: { grade_id: @timetable.grade_id, hr_teacher_id1: @timetable.hr_teacher_id1, hr_teacher_id2: @timetable.hr_teacher_id2, input: @timetable.input, subject_id1: @timetable.subject_id1, subject_id2: @timetable.subject_id2, subject_id3: @timetable.subject_id3, subject_id4: @timetable.subject_id4, subject_id5: @timetable.subject_id5, subject_id6: @timetable.subject_id6, subject_id7: @timetable.subject_id7, teacher_id1: @timetable.teacher_id1, teacher_id2: @timetable.teacher_id2, teacher_id3: @timetable.teacher_id3, teacher_id4: @timetable.teacher_id4, teacher_id5: @timetable.teacher_id5, teacher_id6: @timetable.teacher_id6, teacher_id7: @timetable.teacher_id7 } }
    end

    assert_redirected_to timetable_url(Timetable.last)
  end

  test "should show timetable" do
    get timetable_url(@timetable)
    assert_response :success
  end

  test "should get edit" do
    get edit_timetable_url(@timetable)
    assert_response :success
  end

  test "should update timetable" do
    patch timetable_url(@timetable), params: { timetable: { grade_id: @timetable.grade_id, hr_teacher_id1: @timetable.hr_teacher_id1, hr_teacher_id2: @timetable.hr_teacher_id2, input: @timetable.input, subject_id1: @timetable.subject_id1, subject_id2: @timetable.subject_id2, subject_id3: @timetable.subject_id3, subject_id4: @timetable.subject_id4, subject_id5: @timetable.subject_id5, subject_id6: @timetable.subject_id6, subject_id7: @timetable.subject_id7, teacher_id1: @timetable.teacher_id1, teacher_id2: @timetable.teacher_id2, teacher_id3: @timetable.teacher_id3, teacher_id4: @timetable.teacher_id4, teacher_id5: @timetable.teacher_id5, teacher_id6: @timetable.teacher_id6, teacher_id7: @timetable.teacher_id7 } }
    assert_redirected_to timetable_url(@timetable)
  end

  test "should destroy timetable" do
    assert_difference('Timetable.count', -1) do
      delete timetable_url(@timetable)
    end

    assert_redirected_to timetables_url
  end
end
