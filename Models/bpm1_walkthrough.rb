Create the migration files as well as the models for the application above.


Implement the following validations:

require the presence of name and description for the blog.
    class Blog < ApplicationRecord
        has_many :posts, dependent: :destroy
        validates :name, :description, presence: true
    end

require the presence of title and content for the posts, require the title to be at least 7 characters long.
    class Post < ApplicationRecord
        belongs_to :blog
        has_many :messages
        validates :title, :content, presence: true
        validates :title, length: { minimum: 7 }
    end
require author and message for the messages. Require the message to be at least 15 characters long.
    class Message < ApplicationRecord
        belongs_to :post
        validates :author, :message, presence: true
        validates :message, length: { minimum: 15 }
    end

Using the console:

create 5 new blogs.
    blog1 = Blog.create(name:"What do you want to eat?", description:"I don't know.")
    blog2 = Blog.create(name:"I Need More Sleep.", description:"Doesn't go to sleep early.")
    blog3 = Blog.create(name:"Are We There Yet?", description:"A roadtrip with kids.")
    blog4 = Blog.create(name:"All I Want For Christmas is You", description:"Please make it stop.")
    blog5 = Blog.create(name:"I Want It", description:"A story of being house broke.")

create several posts for each blog.
    post1 = Post.create(title:"Pizza!?", content:"Pizza hut has stuffed crust.", blog: Blog.find(1))
    post2 = Post.create(title:"Panda!?", content:"We had that yesterday...", blog: Blog.find(1))
    post3 = Post.create(title:"Taco Bell!?", content:"I don't want fast food.", blog: Blog.find(1))

    post1 = Post.create(title:"Pizza!?", content:"Pizza hut has stuffed crust.", blog: Blog.find(2))
    post2 = Post.create(title:"Panda!?", content:"We had that yesterday...", blog: Blog.find(2))
    post3 = Post.create(title:"Taco Bell!?", content:"I don't want fast food.", blog: Blog.find(2))

    post1 = Post.create(title:"Louis Vuitton", content:"South Bank Besace - $1400", blog: Blog.find(5))
    post2 = Post.create(title:"iPhone 11 Pro", content:"Silver - 256 GB", blog: Blog.last)
    post3 = Post.create(title:"Puppies", content:"All the puppies.", blog: Blog.last)

create several messages for the first post.
    message1 = Message.create(author:"Judy", message:"Pineapple is good on pizza.", post:Post.first)
    message2 = Message.create(author:"Jacob", message:"Ranch is gross. It's only good on chicken.", post: Post.find(1))
    message3 = Message.create(author:"Minnie", message:"I love all food. All food doesn't love me.", post: Post.find(1))

know how to retrieve all posts for the first blog.
    Post.where(blog:Blog.first)

know how to retrieve all posts for the last blog (sorted by title in the DESC order).
    Post.where(blog:Blog.last).order(title: :desc)

know how to update the first post title.
    Post.find(1).update(title: "New Title")

know how to delete the third post (have the model automatically delete all messages associated with the third post when you delete the third post).
    Post.find(3).destroy
    class Post < ApplicationRecord
        # belongs_to :blog
        has_many :messages, dependent: :destroy
        # validates :title, :content, presence: true
        # validates :title, length: { minimum: 7 }
    end
    
know how to retrieve all blogs.
    Blog.all

know how to retrieve all blogs whose id is less than 5.
    Blog.where("id < ?", 5)



FOOT NOTES:
2.3.1 :007 > exit
vagrant@vagrant-ubuntu-trusty-64:/vagrant/Rails_Fundamentals/Models/blogs_posts_messages$ rake db:drop
Dropped database 'db/development.sqlite3'
Database 'db/test.sqlite3' does not exist
vagrant@vagrant-ubuntu-trusty-64:/vagrant/Rails_Fundamentals/Models/blogs_posts_messages$ rake db:create
Created database 'db/development.sqlite3'
Created database 'db/test.sqlite3'
vagrant@vagrant-ubuntu-trusty-64:/vagrant/Rails_Fundamentals/Models/blogs_posts_messages$ rake db:migrate