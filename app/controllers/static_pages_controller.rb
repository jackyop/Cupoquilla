class StaticPagesController < ApplicationController
	def home
	end
	def about
	end
	def customCoupons
		signed_in_user
		@coupons=current_user.coupons
		@coupon = current_user.coupons.build
	end
	def cupones
		@cupones=Coupon.all
	end
	
end
