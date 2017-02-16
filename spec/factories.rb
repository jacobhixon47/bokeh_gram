FactoryGirl.define do
  factory(:image) do
    caption('picture test 1')
    picture('./test-img.jpg')
  end
  factory(:user) do
    email('joedirt25@nascar.com')
    username('joedirt25')
  end
end
