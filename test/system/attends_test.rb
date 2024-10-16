require "application_system_test_case"

class AttendsTest < ApplicationSystemTestCase
  setup do
    @attend = attends(:one)
  end

  test "visiting the index" do
    visit attends_url
    assert_selector "h1", text: "Attends"
  end

  test "creating a Attend" do
    visit attends_url
    click_on "New Attend"

    check "Attend1" if @attend.attend1
    check "Attend2" if @attend.attend2
    check "Attend3" if @attend.attend3
    check "Attend4" if @attend.attend4
    check "Attend5" if @attend.attend5
    check "Attend6" if @attend.attend6
    check "Attend7" if @attend.attend7
    fill_in "Comment1", with: @attend.comment1
    fill_in "Comment2", with: @attend.comment2
    fill_in "Comment3", with: @attend.comment3
    fill_in "Comment4", with: @attend.comment4
    fill_in "Comment5", with: @attend.comment5
    fill_in "Comment6", with: @attend.comment6
    fill_in "Comment7", with: @attend.comment7
    check "Hr attend1" if @attend.hr_attend1
    check "Hr attend2" if @attend.hr_attend2
    fill_in "Hr comment1", with: @attend.hr_comment1
    fill_in "Hr comment2", with: @attend.hr_comment2
    fill_in "Input", with: @attend.input
    fill_in "Student", with: @attend.student_id
    click_on "Create Attend"

    assert_text "Attend was successfully created"
    click_on "Back"
  end

  test "updating a Attend" do
    visit attends_url
    click_on "Edit", match: :first

    check "Attend1" if @attend.attend1
    check "Attend2" if @attend.attend2
    check "Attend3" if @attend.attend3
    check "Attend4" if @attend.attend4
    check "Attend5" if @attend.attend5
    check "Attend6" if @attend.attend6
    check "Attend7" if @attend.attend7
    fill_in "Comment1", with: @attend.comment1
    fill_in "Comment2", with: @attend.comment2
    fill_in "Comment3", with: @attend.comment3
    fill_in "Comment4", with: @attend.comment4
    fill_in "Comment5", with: @attend.comment5
    fill_in "Comment6", with: @attend.comment6
    fill_in "Comment7", with: @attend.comment7
    check "Hr attend1" if @attend.hr_attend1
    check "Hr attend2" if @attend.hr_attend2
    fill_in "Hr comment1", with: @attend.hr_comment1
    fill_in "Hr comment2", with: @attend.hr_comment2
    fill_in "Input", with: @attend.input
    fill_in "Student", with: @attend.student_id
    click_on "Update Attend"

    assert_text "Attend was successfully updated"
    click_on "Back"
  end

  test "destroying a Attend" do
    visit attends_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Attend was successfully destroyed"
  end
end
