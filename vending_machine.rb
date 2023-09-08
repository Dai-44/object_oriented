require './storage'
require './coinmech'
require './drink'

class VendingMachine

  def initialize
    @storage = Strage.new
    @coin_mech = Coinmech.new
  end

  def buy(payment, kind_of_drink)

    @coin_mech.put(payment)

    if @coim_mech.not_have_change?
      return nil
    end

    if @storage.not_have_stock?(kind_of_drink)
      return nil
    end

    @coin_mech.commit

    @storage.take_out(kind_of_drink)
    
  end

  def refund
    @coin_mech.refund
  end

end

