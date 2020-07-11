require "application_system_test_case"

class Fitness::DisciplinesTest < ApplicationSystemTestCase
  setup do
    @fitness_discipline = fitness_disciplines(:one)
  end

  test "visiting the index" do
    visit fitness_disciplines_url
    assert_selector "h1", text: "Fitness/Disciplines"
  end

  test "creating a Discipline" do
    visit fitness_disciplines_url
    click_on "New Fitness/Discipline"

    check "Enabled" if @fitness_discipline.enabled
    fill_in "Name", with: @fitness_discipline.name
    click_on "Create Discipline"

    assert_text "Discipline was successfully created"
    click_on "Back"
  end

  test "updating a Discipline" do
    visit fitness_disciplines_url
    click_on "Edit", match: :first

    check "Enabled" if @fitness_discipline.enabled
    fill_in "Name", with: @fitness_discipline.name
    click_on "Update Discipline"

    assert_text "Discipline was successfully updated"
    click_on "Back"
  end

  test "destroying a Discipline" do
    visit fitness_disciplines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Discipline was successfully destroyed"
  end
end
