
Dir[File.join(File.dirname(__FILE__),
                '../pages/*_page.rb')].each { |file| require file }


module Pages  
    def home
        @home ||= HomePage.new
    end

    def page_user
        @page_user ||= PageUser.new
    end
end

