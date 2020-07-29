class AboutMeController < ApplicationController
  def index
    @about_me = PageContent.find_by(PageName: "About Me")
    @packages = Package.all
  end
end
