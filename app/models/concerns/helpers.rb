module Helpers
  extend ActiveSupport::Concern

  def detailed?
    @instance_options[:detailed] == true
  end

  module ClassMethods
    def conditional_attributes(*args, condition)
      args.each { |attr_name| attribute attr_name, condition }
    end
  end
end
