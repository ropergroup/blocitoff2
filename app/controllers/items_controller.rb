class ItemsController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @item = @user.items.new(item_params)
    @item.user = current_user

   if @item.save
     flash[:notice] = "Item saved successfully."

    redirect_to [@user]
   else
     flash[:alert] = "Item failed to save."

     redirect_to [@user]
   end
 end

 def destroy
    @user = current_user
    @item = @user.items.find(params[:id])

    if @item.destroy
      flash[:notice] = "Item has been completed!"
    else
      flash[:alert] = "There was an error completing the item. Try again."
    end

    respond_to do |format|
      format.html
      format.js
    end
  end

private
   def item_params
     params.require(:item).permit(:name)
   end
 end
