require '../bank_account'

FactoryGirl.define do
  # struct for fake data
  factory :bank_account do
    # configuring object
    amount 200
  end
end
