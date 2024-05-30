class ApplicationService
  TIME_ZONE = 'Asia/Ho_Chi_Minh'.freeze

  def self.call(*args, &block)
    new.call(*args, &block)
  end

  def call
    raise(NotImplementedError, "You must define `call` as instance method in #{self.class.name} class")
  end
end

class ServiceResponse
  attr_accessor :payload, :errors

  def initialize(payload: nil, errors: [])
    @payload = payload
    @errors = errors
  end

  def fail?
    errors.any?
  end

  def success?
    !fail?
  end
end
