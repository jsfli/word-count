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

  get('/word_count_output_page') do
    @sentence1_input = params.fetch('sentence1')
    @word1_input = params.fetch('word1')
    @output1 = @sentence1_input.word_count(@word1_input)
    erb(:word_count_output_page)
  end

  get('/word_count_partial_output_page') do
    @sentence2_input = params.fetch('sentence2')
    @word2_input = params.fetch('word2')
    @output2 = @sentence2_input.word_count_partial(@word2_input)
    erb(:word_count_partial_output_page)
  end
