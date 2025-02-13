class CheckController < ApplicationController
  def check
    flash[:info] = 'OK'
    # do something
    render :check, status: :accepted
  end
end
