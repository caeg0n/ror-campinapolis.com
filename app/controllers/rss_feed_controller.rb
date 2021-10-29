class RssFeedController < ApplicationController

  def index
    #ahoy.track_visit unless current_visit
    #ahoy.track_visit "rss", {info: "rssfeedcontroller#index"}
    @id = rss[:id]
    @type = rss[:type]

    if not request.referrer.nil?
      if not request.referrer.upcase["FACEBOOK"].nil?
        redirect_to root_path+"categorias"
      end
    end
    set_up_cliente
  end


  def rss
   params.permit(:type,:id)
  end

  def set_up_cliente
    if @type == "cliente"
      @cliente = Admin::Cliente.find(@id)
    end
  end

end
