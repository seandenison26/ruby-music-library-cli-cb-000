module Concerns
  module InstanceMethods


    def save
      self.class.all << self
    end


  end
  module ClassMethods

    def create(name)
          self.new(name).tap { |object|
            object.save
          }
    end


    def destroy_all
      self.all.clear
    end

  end
end
