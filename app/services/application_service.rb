class ApplicationService
  TIME_ZONE = 'Asia/Ho_Chi_Minh'.freeze

  def self.call(*, &) = new.call(*, &)

  def call = raise(NotImplementedError, "You must define `call` as instance method in #{self.class.name} class")
end

class ServiceResponse
  attr_accessor :payload, :errors

  def initialize(payload: nil, errors: [])
    @payload = payload
    @errors = errors
  end

  def fail? = errors.any?
  def success? = !fail?
end
