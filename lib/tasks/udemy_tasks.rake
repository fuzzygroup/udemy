# desc "Explaining what the task does"
# task :udemy do
#   # Task goes here
# end

namespace :udemy do 
  # bundle exec rake udemy:test_client --trace
  task :test_client => :environment do
    
    Udemy.client_key = 'mesVKgiyLiEM6AwQtbQdKtYEwRjoxaL0N261TaY5'
    Udemy.client_secret = 'Yz0p34xAlrvLRlrnvkZQdBNh8Pb1vNkU6qpq0cGN8dpxUDaL7jM3oQNMaZ7Kn0Nfap2MpsD6fnDxrXkXhyJ1IgjD7q3uK60ODDpk6Yuc8swRBN0RT6Phl8jmKslqLZdw'

#Fetching a course by ID

    course = Udemy::Course.findOne(5816)
    
    puts course.inspect
    
  end
end
