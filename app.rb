require('sinatra')
  require('sinatra/reloader')
  require('./lib/word_count')
  also_reload('lib/**/*.rb')


  get('/') do
    erb(:index)
  end

  get('/word_count_input_page') do
    erb(:word_count_input_page)
  end

  get('/word_count_partial_input_page') do
    erb(:word_count_partial_input_page)
  end
