class DemoController < ApplicationController
  
  layout false
  
  def index
  	render('index') #default, can be removed
  end

  def hello
  	#render('index')
  	@id = params['id'].to_i
  	@page = params[:page].to_i #same as using string
  	@array = [1,2,3,4,5]
  end

  def other_hello
  	redirect_to(:action =>'index')
  end

  def lynda
  	redirect_to("http://lynda.com")
  end

  def text_helpers

  end

  def escape_output
  end
  
end
