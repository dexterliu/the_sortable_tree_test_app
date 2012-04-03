class Admin::PagesController < ApplicationController
  include TheSortableTreeController::Rebuild

  def index
    @pages = Page.nested_set.all
  end

  def manage
    @pages = Page.nested_set.all
  end

  def first_root_manage
    @root  = Page.root
    @pages = @root.descendants.nested_set.all
  end
end
