# == Schema Information
#
# Table name: pets
#
#  id               :bigint(8)        not null, primary key
#  chip_number      :string           not null
#  mixed_breed      :boolean          default(TRUE)
#  name             :string
#  primary_breed    :string
#  primary_color    :string
#  privacy_settings :integer          default(0)
#  secondary_breed  :string
#  secondary_color  :string
#  species          :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :bigint(8)
#
# Indexes
#
#  index_pets_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

require 'rails_helper'

RSpec.describe Pet, type: :model do
  it { should belong_to(:user) }
  it { should validate_presence_of(:chip_number) }
  it { should validate_presence_of(:species) }
end
