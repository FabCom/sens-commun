require "application_system_test_case"

class CreateOrganizationRequestsTest < ApplicationSystemTestCase
  setup do
    @create_organization_request = create_organization_requests(:one)
  end

  test "visiting the index" do
    visit create_organization_requests_url
    assert_selector "h1", text: "Create Organization Requests"
  end

  test "creating a Create organization request" do
    visit create_organization_requests_url
    click_on "New Create Organization Request"

    fill_in "Activity sector", with: @create_organization_request.activity_sector_id
    fill_in "Address", with: @create_organization_request.address
    fill_in "Address complement", with: @create_organization_request.address_complement
    fill_in "City", with: @create_organization_request.city_id
    fill_in "Creation date", with: @create_organization_request.creation_date
    fill_in "Description", with: @create_organization_request.description
    fill_in "Email", with: @create_organization_request.email
    fill_in "Logo url", with: @create_organization_request.logo_url
    fill_in "Naf ape", with: @create_organization_request.naf_ape
    fill_in "Name", with: @create_organization_request.name
    fill_in "Nickname", with: @create_organization_request.nickname
    fill_in "Phone number", with: @create_organization_request.phone_number
    fill_in "Siren", with: @create_organization_request.siren
    fill_in "Status", with: @create_organization_request.status_id
    fill_in "User", with: @create_organization_request.user_id
    check "Validation" if @create_organization_request.validation
    fill_in "Website url", with: @create_organization_request.website_url
    fill_in "Zip code", with: @create_organization_request.zip_code
    click_on "Create Create organization request"

    assert_text "Create organization request was successfully created"
    click_on "Back"
  end

  test "updating a Create organization request" do
    visit create_organization_requests_url
    click_on "Edit", match: :first

    fill_in "Activity sector", with: @create_organization_request.activity_sector_id
    fill_in "Address", with: @create_organization_request.address
    fill_in "Address complement", with: @create_organization_request.address_complement
    fill_in "City", with: @create_organization_request.city_id
    fill_in "Creation date", with: @create_organization_request.creation_date
    fill_in "Description", with: @create_organization_request.description
    fill_in "Email", with: @create_organization_request.email
    fill_in "Logo url", with: @create_organization_request.logo_url
    fill_in "Naf ape", with: @create_organization_request.naf_ape
    fill_in "Name", with: @create_organization_request.name
    fill_in "Nickname", with: @create_organization_request.nickname
    fill_in "Phone number", with: @create_organization_request.phone_number
    fill_in "Siren", with: @create_organization_request.siren
    fill_in "Status", with: @create_organization_request.status_id
    fill_in "User", with: @create_organization_request.user_id
    check "Validation" if @create_organization_request.validation
    fill_in "Website url", with: @create_organization_request.website_url
    fill_in "Zip code", with: @create_organization_request.zip_code
    click_on "Update Create organization request"

    assert_text "Create organization request was successfully updated"
    click_on "Back"
  end

  test "destroying a Create organization request" do
    visit create_organization_requests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Create organization request was successfully destroyed"
  end
end
