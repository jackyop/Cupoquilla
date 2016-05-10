class ComprasController < ApplicationController
before_filter :signed_in_admin, only: :destroy
def destroy
  	@compra=Compra.find_by_id(params[:id])
  	@compra.destroy
    flash[:success] = "compra deleted"
    redirect_to admin_path
end
def create
		@compra = Compra.new()
		@current_user=current_user
		@coupon= Coupon.find_by_id(params[:coupon_id])
		@compra.user_id=@current_user.id
		@compra.contenido=@coupon.content
		@compra.coupon_id=@coupon.id
		if @compra.save
			flash[:success] = "Compra exitosa"
			redirect_to cupones_path
		else
			flash[:fail] = "La compra no pudo realizarse"
			redirect_to root_path
		end
	end
end
