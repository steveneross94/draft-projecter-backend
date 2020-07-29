require 'open-uri'
require 'net/http'
require 'json'

class Api::V1::ArticlesController < ApplicationController
    def show
        article_api_key = ENV['article_api_key']
        article = fetch_url("http://newsapi.org/v2/everything?q=#{params[:id]}&from=2020-07-28&sortBy=popularity&apiKey=#{article_api_key}")
        render json: article
    end 
    
    def fetch_url(url)
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        resp_body = response.body
        json_resp = JSON.parse(resp_body)
    end
    
end