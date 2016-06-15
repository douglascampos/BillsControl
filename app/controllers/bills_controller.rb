class BillsController < ApplicationController
  before_action :set_bill, only: [:show, :edit, :update, :destroy]

  def index
    @bills = Bill.all
  end

  def show
  end

  def new
    @bill = Bill.new
    @bill.mInicio = params[:mounth]
  end

  def edit
  end

  def create
    @bill = Bill.new(bill_params)

    respond_to do |format|
      if @bill.save
        format.html { redirect_to bills_url, notice: 'Pronto, você acaba de adicionar uma conta, mas não deveria!' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @bill.update(bill_params)
        format.html { redirect_to bills_url, notice: 'Você acabou de alterar o salário, espero que seja para aumentar o valor' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @bill.destroy
    respond_to do |format|
      format.html { redirect_to bills_url, notice: 'Você esta certo que deveria ter excluido o salário?!' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bill
      @bill = Bill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bill_params
      params.require(:bill).permit(:valor, :titulo, :descrição, :ajuste, :parcelas, :mInicio, :mesFinal, :saque, :transferencia, :cartão, :internet)
    end
end
