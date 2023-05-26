Dir[File.join(File.dirname(__FILE__), '..pages_objects/*_page.rb')].each { |file| require file }

module PageObject
    def home
        @home ||= PageObject.new
    end

    def products
        @products ||= Prod_Objects.new
    end
end