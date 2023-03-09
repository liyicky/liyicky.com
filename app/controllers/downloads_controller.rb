class DownloadsController < ApplicationController

    def animalization_assets
        send_file "#{Rails.root}/app/assets/docs/AnimalizationAssets.zip", type: "application/zip", x_sendfile: true
    end

end
