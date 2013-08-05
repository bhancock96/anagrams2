get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/' do
  @word = params[:word]
  @anagrams = Word.anagrams(@word)

  erb :index
end
