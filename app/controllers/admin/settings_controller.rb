class Admin::SettingsController < ApplicationController
  def index
    @settings_hash = Setting.load_settings
    respond_to  do |format|
      format.html 
    end
  end
  
  def update
    if request.method == :post && params[:setting]
      Setting.save_settings(params[:setting])
      flash[:notice] = 'Settings Saved!'
    end
    
    respond_to  do |format|
      format.html {redirect_to admin_settings_url}
    end  
  end
  
  alias create update

end
