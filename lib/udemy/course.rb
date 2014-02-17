module Udemy
  class Course
    # Fetches a course and creates a course object with its default fields
    #
    # @return <Hashie:::Mash> a course object
    # @see https://developers.udemy.com/#model-course
    def self.findOne(id)
      raise Udemy::Error.new("ID is required") if id.blank?

      return Client.new.get("/courses/#{id}")
    end
  end
end