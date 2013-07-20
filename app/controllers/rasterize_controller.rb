class RasterizeController < ApplicationController
	def invoke_rasterization
		file_name = params[:file_name]
		csv_values = params[:csv]

		`sudo ./vendor/plugins/phantomjs-linux/bin/phantomjs vendor/plugins/phantomjs-linux/bin/rasterize.js http://infograph.doit.ba/parse?csv=#{csv_values} public/infographs/#{file_name}.png`

		render :nothing => true
	end
end