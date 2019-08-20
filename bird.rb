require_relative('./accoutrements.rb')
require_relative('./paperwork_module.rb')

class Bird < Accoutrements
  include PaperWork 
  attr_accessor :name, :owner

  def initialize(attributes)
    attributes.each {|key, value| self.send(("#{key}="), value)}
  end

end