require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base

  #get '/' do, which renders the index.erb page.
  get '/' do
    erb :index
  end

  #post '/' do, which receives the form data through params and renders the results page.
  post '/' do
    # text_from_user = params[:user_text]
    @analyzed_text = TextAnalyzer.new(params[:user_text])
    #We now have the instance of TextAnalyzer saved to an instance variable called @analyzed_text. This means that we can call it and its methods from the results.erb view that is being rendered, using erb tags!

    erb :results
  end
end
