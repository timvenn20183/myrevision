class CoursesController < ApplicationController

	def revision
        @course = Course.find(decrypt(params[:id]))
	end

end
