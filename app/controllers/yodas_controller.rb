require 'unirest'
require 'nokogiri'
require 'pry'
require 'tts'

class YodasController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
  end

  def create
    @input = params["words"]

     skywalker = Yoda.new(@input)
     result = skywalker.yoda_api

     skywalker.yoda_talks(result)
     redirect_to "/"

  end
end

