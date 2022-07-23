class Author < ApplicationRecord
    belongs_to :author
    has_many :posts
end

class PostTag < ApplicationRecord
    belongs_to :post
    belongs_to :tag
  end
  
  class Tag < ApplicationRecord
    has_many :post_tags
    has_many :posts, through: :post_tags
  end

end
