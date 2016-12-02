require('rspec')
require('definition')

describe('#def') do
  it("returns the definition of the word") do
    test_definition = Definition.new({:def => "happy feeling"})
    expect(test_definition.def()).to(eq("happy feeling"))
  end
end
