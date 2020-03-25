class FirstController < ApplicationController
  def hello
    # render plain: 'Hello Rails 2'
    # render json: {name: 'frank', age: 18}
    @xxx = 'controller 里面的 @ 变量'
    render 'first/hello'
  end
  def hi
    render 'first/hi'
  end
end
