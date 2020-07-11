require "application_system_test_case"

class Account::CompaniesTest < ApplicationSystemTestCase
  setup do
    @account_company = account_companies(:one)
  end

  test "visiting the index" do
    visit account_companies_url
    assert_selector "h1", text: "Account/Companies"
  end

  test "creating a Company" do
    visit account_companies_url
    click_on "New Account/Company"

    check "Enabled" if @account_company.enabled
    fill_in "Name", with: @account_company.name
    fill_in "Phone number", with: @account_company.phone_number
    click_on "Create Company"

    assert_text "Company was successfully created"
    click_on "Back"
  end

  test "updating a Company" do
    visit account_companies_url
    click_on "Edit", match: :first

    check "Enabled" if @account_company.enabled
    fill_in "Name", with: @account_company.name
    fill_in "Phone number", with: @account_company.phone_number
    click_on "Update Company"

    assert_text "Company was successfully updated"
    click_on "Back"
  end

  test "destroying a Company" do
    visit account_companies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Company was successfully destroyed"
  end
end
