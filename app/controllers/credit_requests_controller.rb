class CreditRequestsController < ApplicationController
  before_action :set_credit_request, only: [:show]

  def show
  end

  def new
    @credit_request = CreditRequest.new
  end

  def create
    @credit_request = CreditRequest.new(credit_request_params)

    if @credit_request.save
      redirect_to @credit_request
    else
      puts @credit_request.errors.inspect
      render :new
    end
  end

  private

  def set_credit_request
    @credit_request = CreditRequest.find(params[:id])
  end

  def credit_request_params
    params.
      require(:credit_request).
      permit(:age, :gender, :salary, :history_available, :amount)
  end
end
