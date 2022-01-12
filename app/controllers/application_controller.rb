class ApplicationController < ActionController::Base
    before_action :get_social_links

    def get_social_links
        @fb_link = PageContent.find_by(PageName: "Facebook Link")
        @insta_link = PageContent.find_by(PageName: "Instagram Link")
    end
end
