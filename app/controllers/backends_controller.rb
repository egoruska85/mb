class BackendsController < ApplicationController
  def index
    @backend = Backend.last
    @sitedetail = Sitedetail.last
    @contact = Contact.new
    @page_title = t('about.about')
  end
end
