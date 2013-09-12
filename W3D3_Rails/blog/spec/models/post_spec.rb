require 'spec_helper'

describe Post do
  it "should require a title" do
  	post = Post.create :title => "title", :body => "the body"
  	expect(post).to be_valid
  end
end


# other way to do it

#require 'spec_helper'

#describe Post do
#  it "should require a title" do
#  	post = Post.create
#  	post.title = "title"
#  	expect(post).to be_valid
#  end
#end

