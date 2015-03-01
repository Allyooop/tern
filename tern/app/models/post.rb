class Post < ActiveRecord::Base
    # t.string   "title"
    # t.string   "image"
    # t.string   "author"
    # t.text     "body"

  validates :title, :author, :body, presence: true

end
