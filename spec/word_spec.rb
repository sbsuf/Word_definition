require('rspec')
require('word')
require('definition')


describe(Word)do
  before() do
    Word.clear()
  end

    describe('#word') do
      it("returns the word of the word user inputed") do
        test_word = Word.new({:word =>"love"})
        expect(test_word.word()).to(eq("love"))
      end
    end

    describe('#def') do
      it("returns the definition of the word") do
        test_definition = Definition.new({:def => "happy feeling"})
        expect(test_definition.def()).to(eq("happy feeling"))
      end
    end

    describe('#save') do
      it("save a word to the words array") do
        test_word = Word.new({:word => "crazy"})
        test_word.save()
        expect(Word.all()).to(eq([test_word]))
      end
    end

    describe(".all") do
      it("is empty at first") do
        expect(Word.all()).to(eq([]))
      end
    end

    describe(".clear") do
    it("empties out all of the saved words") do
      Word.new({:word =>"beautiful"}).save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe(".find") do
    it("returns a word by id") do
    test_word = Word.new({:id =>1})
    test_word.save()
    expect(Word.find(test_word.id())).to(eq(test_word))
    end
  end

end
