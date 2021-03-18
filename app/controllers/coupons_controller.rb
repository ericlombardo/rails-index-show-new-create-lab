class CouponsController < ApplicationController
  def index # shows all coupons
    @coupons = Coupon.all
  end

  def new # show new form 
  end

  def create # creates new instance, redirects to show page
    new_coupon = Coupon.create!(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])

    redirect_to coupon_path(new_coupon)
  end

  def show # show individual coupon info

    @coupon = Coupon.find_by_id(params[:id])
  end
end