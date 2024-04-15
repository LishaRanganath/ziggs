module Menu
  class MenuCreator
    attr_reader :errors, :menu_item

    def initialize(params, menu_class: MenuItem)
      @params = params
      @menu_class = menu_class
    end

    def create
      @menu_item = @menu_class.new(@params)
      if @menu_item.save
        true
      else
        @errors = @menu_item.errors
        false
      end
    end
  end
end
