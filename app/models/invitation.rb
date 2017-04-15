class Invitation < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'created_by_user'
  belongs_to :user, class_name: 'User', foreign_key: 'claimed_by_user'
end
