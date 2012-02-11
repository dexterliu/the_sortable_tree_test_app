class PagesController < ApplicationController
  include TheSortableTreeController::Rebuild

  def index
    @pages = Page.nested_set.all
  end

  def manage
    @pages = Page.nested_set.all
  end

end
