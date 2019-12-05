class TimesController < ApplicationController
  def main
    @time = Time.now
		# Time.zone = 'Central Time (US & Canada)'
		# @date = Time.zone.now.strftime("%b %d, %Y, %I:%M %p")
		@date = @time.strftime("%b %d, %Y ")
  end
end
