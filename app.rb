require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word.rb')
require('./lib/definition.rb')
require('pry')

get '/' do
  erb(:index)
end

get('/words') do
  @words = Word.all()
  erb(:words)
end

post('/words') do
  word = params.fetch('word')
  Word.new({:word=>word}).save()
  @words = Word.all()
  erb(:words)
end

get('/words/:id/definitions/new') do
    @word = Word.find(params.fetch('id').to_i())
    erb(:word_definition_form)
end

get('/words/:id') do
  @word = Word.find(params.fetch('id').to_i())
  @def = @word.def()
  erb(:word)
end

post('/definitions') do
  @word = Word.find(params.fetch('word_id').to_i())
  definition = params.fetch('definition')
  @word.add_def(Definition.new({:def => definition}))
  @def = @word.def()
  erb(:definition_display)
end
