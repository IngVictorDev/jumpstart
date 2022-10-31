require "test_helper"

class AccountVerificationDocumentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @account_verification_document = account_verification_documents(:one)
  end

  test "should get index" do
    get account_verification_documents_url
    assert_response :success
  end

  test "should get new" do
    get new_account_verification_document_url
    assert_response :success
  end

  test "should create account_verification_document" do
    assert_difference('AccountVerificationDocument.count') do
      post account_verification_documents_url, params: { account_verification_document: { image_data: @account_verification_document.image_data, title: @account_verification_document.title } }
    end

    assert_redirected_to account_verification_document_url(AccountVerificationDocument.last)
  end

  test "should show account_verification_document" do
    get account_verification_document_url(@account_verification_document)
    assert_response :success
  end

  test "should get edit" do
    get edit_account_verification_document_url(@account_verification_document)
    assert_response :success
  end

  test "should update account_verification_document" do
    patch account_verification_document_url(@account_verification_document), params: { account_verification_document: { image_data: @account_verification_document.image_data, title: @account_verification_document.title } }
    assert_redirected_to account_verification_document_url(@account_verification_document)
  end

  test "should destroy account_verification_document" do
    assert_difference('AccountVerificationDocument.count', -1) do
      delete account_verification_document_url(@account_verification_document)
    end

    assert_redirected_to account_verification_documents_url
  end
end
