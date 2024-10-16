require "application_system_test_case"

class TimetablesTest < ApplicationSystemTestCase
  setup do
    @timetable = timetables(:one)
  end

  test "visiting the index" do
    visit timetables_url
    assert_selector "h1", text: "Timetables"
  end

  test "creating a Timetable" do
    visit timetables_url
    click_on "New Timetable"

    fill_in "Grade", with: @timetable.grade_id
    fill_in "Hr teacher id1", with: @timetable.hr_teacher_id1
    fill_in "Hr teacher id2", with: @timetable.hr_teacher_id2
    fill_in "Input", with: @timetable.input
    fill_in "Subject id1", with: @timetable.subject_id1
    fill_in "Subject id2", with: @timetable.subject_id2
    fill_in "Subject id3", with: @timetable.subject_id3
    fill_in "Subject id4", with: @timetable.subject_id4
    fill_in "Subject id5", with: @timetable.subject_id5
    fill_in "Subject id6", with: @timetable.subject_id6
    fill_in "Subject id7", with: @timetable.subject_id7
    fill_in "Teacher id1", with: @timetable.teacher_id1
    fill_in "Teacher id2", with: @timetable.teacher_id2
    fill_in "Teacher id3", with: @timetable.teacher_id3
    fill_in "Teacher id4", with: @timetable.teacher_id4
    fill_in "Teacher id5", with: @timetable.teacher_id5
    fill_in "Teacher id6", with: @timetable.teacher_id6
    fill_in "Teacher id7", with: @timetable.teacher_id7
    click_on "Create Timetable"

    assert_text "Timetable was successfully created"
    click_on "Back"
  end

  test "updating a Timetable" do
    visit timetables_url
    click_on "Edit", match: :first

    fill_in "Grade", with: @timetable.grade_id
    fill_in "Hr teacher id1", with: @timetable.hr_teacher_id1
    fill_in "Hr teacher id2", with: @timetable.hr_teacher_id2
    fill_in "Input", with: @timetable.input
    fill_in "Subject id1", with: @timetable.subject_id1
    fill_in "Subject id2", with: @timetable.subject_id2
    fill_in "Subject id3", with: @timetable.subject_id3
    fill_in "Subject id4", with: @timetable.subject_id4
    fill_in "Subject id5", with: @timetable.subject_id5
    fill_in "Subject id6", with: @timetable.subject_id6
    fill_in "Subject id7", with: @timetable.subject_id7
    fill_in "Teacher id1", with: @timetable.teacher_id1
    fill_in "Teacher id2", with: @timetable.teacher_id2
    fill_in "Teacher id3", with: @timetable.teacher_id3
    fill_in "Teacher id4", with: @timetable.teacher_id4
    fill_in "Teacher id5", with: @timetable.teacher_id5
    fill_in "Teacher id6", with: @timetable.teacher_id6
    fill_in "Teacher id7", with: @timetable.teacher_id7
    click_on "Update Timetable"

    assert_text "Timetable was successfully updated"
    click_on "Back"
  end

  test "destroying a Timetable" do
    visit timetables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Timetable was successfully destroyed"
  end
end
