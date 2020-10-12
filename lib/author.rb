class Author

def self.post_count
    Post.all.uniq.count
end 

attr_accessor :name, :posts

def initialize(name)
    @name = name 
end 
    
def posts
    Post.all
end

def add_post(post)
    post.author = self
end 

def add_post_by_title(title)
    post = Post.new(title)
    self.posts << post
    add_post(post)
end

end