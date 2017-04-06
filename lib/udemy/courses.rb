module Udemy
  class Courses
    # Fetches a course and creates a course object with its default fields
    #
    # @return <Hashie:::Mash> a course object
    # @see https://developers.udemy.com/#model-course
    def self.search(query)
      raise Udemy::Error.new("Query is required") if query.blank?

      #return Client.new.get("/courses/#{id}")
      return Client.new.get("/api-2.0/courses/?search=#{query}")
    end
  end
end