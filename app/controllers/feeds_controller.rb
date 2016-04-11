class FeedsController < ApplicationController
  def index
    @feed = Feed.all
  end

  def show
   @feed = Feed.find(params[:id])
  end

  def new
    @feed = Feed.new
  end

  def edit
    @feed = Feed.find(params[:id])
  end

  def create
    @feed = Feed.new(feed_params)

    if @feed.save
      redirect_to @feed
    else
      render 'new'
    end
  end

  def update
    @feed = feed.find(params[:id])

    if @feed.update(feed_params)
      redirect_to @feed
    else
      render 'edit'
    end
  end

  def destroy
    @feed = feed.find(params[:id])
    @feed.destroy

    redirect_to feed_path
  end

  private
    def feed_params
      params.require(:feed).permit(:title, :text)
    end
end
