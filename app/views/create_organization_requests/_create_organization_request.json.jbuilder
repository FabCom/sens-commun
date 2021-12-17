json.extract! create_organization_request, :id, :name, :nickname, :creation_date, :address, :address_complement, :zip_code, :city_id, :email, :phone_number, :status_id, :siren, :description, :activity_sector_id, :naf_ape, :logo_url, :website_url, :validation, :user_id, :created_at, :updated_at
json.url create_organization_request_url(create_organization_request, format: :json)
