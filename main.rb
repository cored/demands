require 'rubygems'
require_relative './lib/primes/prime_by_strategy'
require_relative './lib/answers'
require 'sinatra'


configure do
  set :port, 1337
  set :bind, '10.6.6.62'
end

get '/' do
  puts params
  response = Answers.answer_me(params['q'][10..-1])
  puts response
  response
end
