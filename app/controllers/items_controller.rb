class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end

  def display_form
  render({ :template => "item_templates/backdoor_form"})
  end

  def create_item
    # the params hash looks like: {"link_url_param"=>"test", "link_description_param"=>"test", "thumbnail_url_param"=>"1"}
    i = Item.new
    i.link_url = params.fetch("link_url_param")
    i.link_description = params.fetch("link_description_param")
    i.thumbnail_url = params.fetch("thumbnail_url_param")
    i.save
    
  render({ :template => "item_templates/create"})
  end


end
