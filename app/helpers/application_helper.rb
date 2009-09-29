# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  include TagsHelper
  
  def commentable_url
    commenter = controller.contoller_name.singularize
    comments_path(:commentable_type => commenter, :commentable_id => controller.instance_variable_get("@#{commenter}").id)
  end
end
