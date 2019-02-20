class Skill < ApplicationRecord
  belongs_to :parent, class_name: 'Skill', optional: true
  has_many :children, class_name: 'Skill', foreign_key: 'parent_id'
end
