class PuppiesController < ApplicationController
    def hello
        render text: 'Hello CodingDojo!'
    end
    def sayHello
        render text: 'Saying Hello!'
    end
    def helloJoe
        render text: 'Saying Hello Joe!'
    end
    def helloMichael
        redirect_to '/say/hello/joe'
    end
    def index
        render text: 'What do you want me to say???'
    end
    def times
        session[:times] = session[:times]? session[:times] += 1 : 1
        render plain: "You visited this url #{session[:times]} time(s)."
    end
    def restart
        session.delete(:times)
        render plain: 'Session has been cleared!' 
    end
end
