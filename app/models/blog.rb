class Blog < ApplicationRecord
    belongs_to :user
    has_many :blogcomments, dependent: :destroy
end
