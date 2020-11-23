class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts

    def five_most_recent_posts
        #self.posts.slice(max(posts.length - 5, 1))
        self.posts.reverse[0..4]
    end

    def featured_post
        self.posts.max_by{|p| p.likes }
    end

    def average_age
        unique_bloggers = self.bloggers.uniq
        x = unique_bloggers.map{|b|b.age}
        x = x.sum / x.length
    end

end


