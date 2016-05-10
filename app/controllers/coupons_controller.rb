class CouponsController < ApplicationController
  def create
    @coupon = current_user.coupons.build(coupon_params)
    if @coupon.save
      flash[:success] = "coupon created!"
      redirect_to miscupones_path
    else
      redirect_to root_path
    end
  end
  def destroy
  	@coupon=current_user.coupons.find_by(params[:user])
  	if(@coupon==nil)
      @coupon2=Coupon.find_by_id(params[:id])
      @coupon2.destroy
      redirect_to admin_path
    else
      @coupon.destroy
      flash[:success] = "coupon deleted"
      redirect_to miscupones_path
    
    end
    
end
private
  def coupon_params
      params.require(:coupon).permit(:content,:price, :picture)
  end
end
