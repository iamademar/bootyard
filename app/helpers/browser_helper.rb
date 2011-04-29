module BrowserHelper
  # borrowed from cletedalid :3
  def browser_os
    @browser_os ||= begin
      ua = request.user_agent.downcase
      Rails.logger.info "=========#{ua.inspect}================="
      if ua.index('windows')
        if ua.index('windows nt 6')
          'windows7'
        else
          'windows'
        end
      elsif ua.index('mac')
        'mac'
      else
        'linux'
      end
    rescue
      'windows'
    end
  end

  def browser_name
    @browser_name ||= begin
      if ua = request.user_agent.downcase
        if ua.index('msie') && !ua.index('opera') && !ua.index('webtv')
          'ie'+ua[ua.index('msie')+5, 1].chr
        elsif ua.index('gecko/')
          'gecko'
        elsif ua.index('opera')
          'opera'
        elsif ua.index('konqueror')
          'konqueror'
        elsif ua.index('applewebkit')
          'webkit'
        elsif ua.index('chrome')
          'webkit'
        elsif ua.index('mozilla/')
          'gecko'
        else
          'gecko'
        end
      end
    rescue
      'gecko'
    end
  end
end
