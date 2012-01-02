module Rack
  class DevelopmentMode

    DEV_CODE = '<div style="height: 32px; text-align: center; line-height: 32px; text-shadow: 0 1px 1px #333; color: #fff; background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAaBJREFUWMO9188rBGEcx/H399ndmdkf2CTlP3BxQUkhrBCK0JL24KCUKJSbnKQkJVJKLko5uJKLcpM7d/+Bo/xox4HUxu7a7zO7z+2ZZ56Zz+s7z0zPyMfDhI+yvb3D1mlWO52WRiGMRbu883l80s9fmRKMjf78Rl08epqFmgT6AJd3Pll99cn0C6AMYKvvaxWq4+gD2OpnvvWqALb6wTahKoo+gK1+uk9y+qaS+uF2Ie6hD2CrT6fk1zFTKf1YlxBz0Qew1Y93yZ/HTSX0k91C1EUfwEZvzFf5846XW5/uFdxI/nF5vzUFr7595rN+7Kv1z1eGmIeuAi+vsHGi12/OScGbFw2wf2H37Jcmpfh55dLvLAiegz6AjT4cgvlR+V+lyqHfXSy88osGsNE7EZgbkf+vlaD1e0uCE0EfwEbvOTA7JKW9LUHqD5aFSIkbfROUPuZBZkBK/14EpT9cFcIh9AFs9IkoTKdENdcEoT9a0+l/Atjok4mvDYe2mSD0IfUPHoSv7306msB1hPpk7mBDXW6/toqcj0zcg7FOvR7gEykBpflo0fvfAAAAAElFTkSuQmCC) repeat 0 0; font-size: 14px; font-weight: bold; font-family: arial, sans-serif;">Under Construction</div>'

    def initialize app
      @app = app
    end

    def call env
      status, headers, response = @app.call(env)
      content_type = headers["Content-Type"]  
      if content_type && content_type.include?("text/html")
        response.body = response.body.gsub(/(<body.*?>)/, '\\1' << DEV_CODE)
      end
      [status, headers, response]
    end
  end
end