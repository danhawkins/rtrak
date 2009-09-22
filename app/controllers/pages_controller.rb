class PagesController < ApplicationController

  def index
 
  end
  
  def show
      @content_for_title ||= params[:path].join(' ')
      @page_class = params[:path].last
      render_path = params[:path].join('/')

      render :action => render_path
      
    rescue
      render :file => "#{RAILS_ROOT}/public/404_#{APP_CONFIG[:site]}.html", :layout => false, :status => 404
  end

end