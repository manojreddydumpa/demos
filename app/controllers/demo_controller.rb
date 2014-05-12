class DemoController < ApplicationController
  
  layout 'application'
  
  def index
  end
  
  def hello
    # render('index')
    @array  = [1,2,3,4,5]
    @id = params['id'].to_i
    @page = params[:page].to_i
  end
  
  def other_hello
    redirect_to(:controller => 'demo',:action => 'hello')
  end
  
  def google
    redirect_to("https://google.com")
  end
  
  def text_helpers    
  end
  
  def escape_output    
  end
  
  def login
  end
  
  def attempt_login
    if params[:username].present? && params[:password].present?
      if params[:username] == "admin" && params[:password] == "admin"
        redirect_to("index")
      end
    end
  end
  
end
