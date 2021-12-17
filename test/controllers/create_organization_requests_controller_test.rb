require "test_helper"

class CreateOrganizationRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @create_organization_request = create_organization_requests(:one)
  end

  test "should get index" do
    get create_organization_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_create_organization_request_url
    assert_response :success
  end

  test "should create create_organization_request" do
    assert_difference('CreateOrganizationRequest.count') do
      post create_organization_requests_url, params: { create_organization_request: { activity_sector_id: @create_organization_request.activity_sector_id, address: @create_organization_request.address, address_complement: @create_organization_request.address_complement, city_id: @create_organization_request.city_id, creation_date: @create_organization_request.creation_date, description: @create_organization_request.description, email: @create_organization_request.email, logo_url: @create_organization_request.logo_url, naf_ape: @create_organization_request.naf_ape, name: @create_organization_request.name, nickname: @create_organization_request.nickname, phone_number: @create_organization_request.phone_number, siren: @create_organization_request.siren, status_id: @create_organization_request.status_id, user_id: @create_organization_request.user_id, validation: @create_organization_request.validation, website_url: @create_organization_request.website_url, zip_code: @create_organization_request.zip_code } }
    end

    assert_redirected_to create_organization_request_url(CreateOrganizationRequest.last)
  end

  test "should show create_organization_request" do
    get create_organization_request_url(@create_organization_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_create_organization_request_url(@create_organization_request)
    assert_response :success
  end

  test "should update create_organization_request" do
    patch create_organization_request_url(@create_organization_request), params: { create_organization_request: { activity_sector_id: @create_organization_request.activity_sector_id, address: @create_organization_request.address, address_complement: @create_organization_request.address_complement, city_id: @create_organization_request.city_id, creation_date: @create_organization_request.creation_date, description: @create_organization_request.description, email: @create_organization_request.email, logo_url: @create_organization_request.logo_url, naf_ape: @create_organization_request.naf_ape, name: @create_organization_request.name, nickname: @create_organization_request.nickname, phone_number: @create_organization_request.phone_number, siren: @create_organization_request.siren, status_id: @create_organization_request.status_id, user_id: @create_organization_request.user_id, validation: @create_organization_request.validation, website_url: @create_organization_request.website_url, zip_code: @create_organization_request.zip_code } }
    assert_redirected_to create_organization_request_url(@create_organization_request)
  end

  test "should destroy create_organization_request" do
    assert_difference('CreateOrganizationRequest.count', -1) do
      delete create_organization_request_url(@create_organization_request)
    end

    assert_redirected_to create_organization_requests_url
  end
end
