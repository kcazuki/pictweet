class TweetsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
 
 # 中略
 
   def show
     @tweet = Tweet.find(params[:id])
   end
 
   private
   def tweet_params
     params.permit(:image, :text)
   end
 
   def move_to_index
     redirect_to :action => "index" unless user_signed_in?
   end
 end
