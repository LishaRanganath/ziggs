module MyCartItem
    class CartAddUpdate
        attr_reader :errors
        def initialize(active_cart,menu_item_id)
            @active_cart=active_cart
            @menu_item_id=menu_item_id
        end
        #to add or update the quantity of the items in the cart i.e the active cart
        def add_or_update_items
            if @active_cart.present?
                @cart_item=@active_cart.cart_items.find_by(menu_item_id: @menu_item_id)
                if @cart_item
                    if @cart_item.update(quantity: @cart_item.quantity+1)
                        return {sucess: true,message: "item updated successfully"}
                    else
                        return {sucess: flase,message: "item could not be updated"}
                    end
                else
                    @cart_item=@active_cart.cart_items.build(menu_item_id: @menu_item_id)
                    if @cart_item.save
                        return {success: true, message: "item added sucessfully"}
                    else
                        return {sucess: false,message: "item could not be added"}
                    end
                end
            end
        end
    end
end

