require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a factory" do
    user = FactoryGirl.build(
      :user,
    )

  end
end
