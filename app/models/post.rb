class Post < ActiveRecord::Base
    belongs_to :cate


    def self.search(search)
        if search
            where('content LIKE ?', "%#{search}%")
        else
            all
        end
    end
end