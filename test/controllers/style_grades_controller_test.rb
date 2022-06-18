require "test_helper"

class StyleGradesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @style_grade = style_grades(:one)
  end

  test "should get index" do
    get style_grades_url
    assert_response :success
  end

  test "should get new" do
    get new_style_grade_url
    assert_response :success
  end

  test "should create style_grade" do
    assert_difference('StyleGrade.count') do
      post style_grades_url, params: { style_grade: { grade_id: @style_grade.grade_id, next_grade: @style_grade.next_grade, previous_grade: @style_grade.previous_grade, style_id: @style_grade.style_id } }
    end

    assert_redirected_to style_grade_url(StyleGrade.last)
  end

  test "should show style_grade" do
    get style_grade_url(@style_grade)
    assert_response :success
  end

  test "should get edit" do
    get edit_style_grade_url(@style_grade)
    assert_response :success
  end

  test "should update style_grade" do
    patch style_grade_url(@style_grade), params: { style_grade: { grade_id: @style_grade.grade_id, next_grade: @style_grade.next_grade, previous_grade: @style_grade.previous_grade, style_id: @style_grade.style_id } }
    assert_redirected_to style_grade_url(@style_grade)
  end

  test "should destroy style_grade" do
    assert_difference('StyleGrade.count', -1) do
      delete style_grade_url(@style_grade)
    end

    assert_redirected_to style_grades_url
  end
end
