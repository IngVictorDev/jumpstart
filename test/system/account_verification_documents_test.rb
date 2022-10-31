require "application_system_test_case"

class AccountVerificationDocumentsTest < ApplicationSystemTestCase
  setup do
    @account_verification_document = account_verification_documents(:one)
  end

  test "visiting the index" do
    visit account_verification_documents_url
    assert_selector "h1", text: "Account Verification Documents"
  end

  test "creating a Account verification document" do
    visit account_verification_documents_url
    click_on "New Account Verification Document"

    fill_in "Image data", with: @account_verification_document.image_data
    fill_in "Title", with: @account_verification_document.title
    click_on "Create Account verification document"

    assert_text "Account verification document was successfully created"
    click_on "Back"
  end

  test "updating a Account verification document" do
    visit account_verification_documents_url
    click_on "Edit", match: :first

    fill_in "Image data", with: @account_verification_document.image_data
    fill_in "Title", with: @account_verification_document.title
    click_on "Update Account verification document"

    assert_text "Account verification document was successfully updated"
    click_on "Back"
  end

  test "destroying a Account verification document" do
    visit account_verification_documents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Account verification document was successfully destroyed"
  end
end
