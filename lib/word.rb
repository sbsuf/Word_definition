class Word
  attr_reader(:word, :id, :def)

  @@words = []

  def initialize(attributes)
    @word = attributes[:word]
    @id = @@words.length()+1
    @def = []
  end

  def self.all()
    @@words
  end

  def id()
    @id
  end

  def self.clear()
    @@words = []
  end

  def save()
    @@words.push(self)
  end

  def add_def(definition)
    @def.push(definition)
  end

  def self.find(id)
    found_word = nil
    @@words.each() do |word|
     if word.id().eql?(id)
        found_word = word
     end
   end
   found_word
  end


end
