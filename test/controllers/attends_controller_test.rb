require "test_helper"

class AttendsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attend = attends(:one)
  end

  test "should get index" do
    get attends_url
    assert_response :success
  end

  test "should get new" do
    get new_attend_url
    assert_response :success
  end

  test "should create attend" do
    assert_difference('Attend.count') do
      post attends_url, params: { attend: { attend1: @attend.attend1, attend2: @attend.attend2, attend3: @attend.attend3, attend4: @attend.attend4, attend5: @attend.attend5, attend6: @attend.attend6, attend7: @attend.attend7, comment1: @attend.comment1, comment2: @attend.comment2, comment3: @attend.comment3, comment4: @attend.comment4, comment5: @attend.comment5, comment6: @attend.comment6, comment7: @attend.comment7, hr_attend1: @attend.hr_attend1, hr_attend2: @attend.hr_attend2, hr_comment1: @attend.hr_comment1, hr_comment2: @attend.hr_comment2, input: @attend.input } }
    end

    assert_redirected_to attend_url(Attend.last)
  end

  test "should show attend" do
    get attend_url(@attend)
    assert_response :success
  end

  test "should get edit" do
    get edit_attend_url(@attend)
    assert_response :success
  end

  test "should update attend" do
    patch attend_url(@attend), params: { attend: { attend1: @attend.attend1, attend2: @attend.attend2, attend3: @attend.attend3, attend4: @attend.attend4, attend5: @attend.attend5, attend6: @attend.attend6, attend7: @attend.attend7, comment1: @attend.comment1, comment2: @attend.comment2, comment3: @attend.comment3, comment4: @attend.comment4, comment5: @attend.comment5, comment6: @attend.comment6, comment7: @attend.comment7, hr_attend1: @attend.hr_attend1, hr_attend2: @attend.hr_attend2, hr_comment1: @attend.hr_comment1, hr_comment2: @attend.hr_comment2, input: @attend.input } }
    assert_redirected_to attend_url(@attend)
  end

  test "should destroy attend" do
    assert_difference('Attend.count', -1) do
      delete attend_url(@attend)
    end

    assert_redirected_to attends_url
  end
end
