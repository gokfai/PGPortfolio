module DefaultPageContent
    extend ActiveSupport::Concern

  included do
  	before_action :set_page_defaults	
  end

  def configure_permitted_page_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

  def set_page_defaults
  	@page_title = "Portfolio | Phil Grant"
  	@seo_keywords = "Phil Grant portfolio"
  end

end  