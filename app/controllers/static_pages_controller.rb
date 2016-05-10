class StaticPagesController < ApplicationController
	before_filter :signed_in_admin, only: :admin
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
	def compras
		@compras = Compra.all
	end
	def admin
		signed_in_user
		signed_in_admin
		@cupones=Coupon.all
		@users= User.all
		@compras=Compra.all
	end
	
end
