class Post < ApplicationRecord

belongs_to :user
has_many :postcomments 

validates :title, :body, presence: true
validates :text, format: { with: /[a-zA-Z_#][\w.!?,&|@#$%^:;"-]*/ }
validates :title, length:{ in: 1..10}

end