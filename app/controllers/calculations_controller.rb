class CalculationsController < ApplicationController
  def instructions
  end

  def square
  	number = params[:id].to_i
    @square = number**2
  end

  def sqrt
  	number = params[:id].to_i
    @sqrt = Math.sqrt(number)
  end

  def loan_payment
  	@rate = params[:rate].to_f
  	@number = params[:number].to_f
  	@principal = params[:principal].to_f   

    @loan_payment = (@rate * @principal)/(1-(1+@rate)**@number)
  end

  def pmt
  end
end

