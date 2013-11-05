class RasterizeController < ApplicationController
	def invoke_rasterization
		file_name = params[:file_name]
		csv_values = params[:csv]
		locale = params[:locale]

		`sudo ./vendor/plugins/phantomjs-linux/bin/phantomjs vendor/plugins/phantomjs-linux/bin/rasterize.js \'http://infograph-osce.rhcloud.com//parse?file_name=#{file_name}&locale=#{locale}\' public/images/infographs/#{file_name}-#{locale}.png`

		render :nothing => true
	end
end