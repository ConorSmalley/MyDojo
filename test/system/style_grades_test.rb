require "application_system_test_case"

class StyleGradesTest < ApplicationSystemTestCase
  setup do
    @style_grade = style_grades(:one)
  end

  test "visiting the index" do
    visit style_grades_url
    assert_selector "h1", text: "Style Grades"
  end

  test "creating a Style grade" do
    visit style_grades_url
    click_on "New Style Grade"

    fill_in "Grade", with: @style_grade.grade_id
    fill_in "Next grade", with: @style_grade.next_grade
    fill_in "Previous grade", with: @style_grade.previous_grade
    fill_in "Style", with: @style_grade.style_id
    click_on "Create Style grade"

    assert_text "Style grade was successfully created"
    click_on "Back"
  end

  test "updating a Style grade" do
    visit style_grades_url
    click_on "Edit", match: :first

    fill_in "Grade", with: @style_grade.grade_id
    fill_in "Next grade", with: @style_grade.next_grade
    fill_in "Previous grade", with: @style_grade.previous_grade
    fill_in "Style", with: @style_grade.style_id
    click_on "Update Style grade"

    assert_text "Style grade was successfully updated"
    click_on "Back"
  end

  test "destroying a Style grade" do
    visit style_grades_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Style grade was successfully destroyed"
  end
end
