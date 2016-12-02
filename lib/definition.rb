class Definition
  attr_reader(:def)

  def initialize(attributes)
    @def = attributes.fetch(:def)
  end
end
