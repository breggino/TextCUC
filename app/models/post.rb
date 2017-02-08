class Post < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 } # Los texts son de 140 caracteres
  default_scope -> { order(created_at: :desc)  } # texts nuevos / post primeros
  
end
