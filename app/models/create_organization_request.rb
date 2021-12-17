class CreateOrganizationRequest < ApplicationRecord
  belongs_to :city
  belongs_to :status
  belongs_to :activity_sector
  belongs_to :user
end
