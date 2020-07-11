require 'test_helper'

class Account::CompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @account_company = account_companies(:one)
  end

  test "should get index" do
    get account_companies_url
    assert_response :success
  end

  test "should get new" do
    get new_account_company_url
    assert_response :success
  end

  test "should create account_company" do
    assert_difference('Account::Company.count') do
      post account_companies_url, params: { account_company: { enabled: @account_company.enabled, name: @account_company.name, phone_number: @account_company.phone_number } }
    end

    assert_redirected_to account_company_url(Account::Company.last)
  end

  test "should show account_company" do
    get account_company_url(@account_company)
    assert_response :success
  end

  test "should get edit" do
    get edit_account_company_url(@account_company)
    assert_response :success
  end

  test "should update account_company" do
    patch account_company_url(@account_company), params: { account_company: { enabled: @account_company.enabled, name: @account_company.name, phone_number: @account_company.phone_number } }
    assert_redirected_to account_company_url(@account_company)
  end

  test "should destroy account_company" do
    assert_difference('Account::Company.count', -1) do
      delete account_company_url(@account_company)
    end

    assert_redirected_to account_companies_url
  end
end
