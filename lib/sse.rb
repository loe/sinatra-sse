require 'sinatra/base'

class Sse < Sinatra::Base
  set :logging, true
  set :dump_errors, true

  get '/', :provides => 'text/event-stream' do
    stream :keep_open do |out|
      EventMachine::PeriodicTimer.new(1) { out << "#{Time.now}\n" }
    end
  end
end
