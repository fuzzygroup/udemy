module Udemy
  class Course
    def self.findOne(id)
      raise Udemy::Error.new("ID is required") if id.blank?

      return Client.new.get("/courses/#{id}")
    end
  end
end