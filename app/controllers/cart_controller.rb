class CartController < ApplicationController
  def show
    @render_cart = false
  end

  def add
    @beat = Beat.find_by(id: params[:id])
    quantity = params[:quantity].to_i
    current_orderable = @cart.orderables.find_by(beat_id: @beat.id)
    if current_orderable && quantity > 0
        current_orderable.update(quantity:)
    elsif quantity <= 0
      current_orderable.destroy
    else
      @cart.orderables.create(beat: @beat, quantity: quantity)
    end
    
      
  

  end

  def remove
    Orderable.find_by(id: params[:id]).destroy
  end

end