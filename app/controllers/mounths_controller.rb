class MounthsController < ApplicationController
  # before_action :set_bill, only: [:show]

  def index
    @bills = Bill.where(minicio:5)
  end

  def view
    # byebug
    @mounth = params[:id]
    @bills_saque = Bill.where(minicio:params[:id], saque:true)
    @total_bills_saque = 0
    @bills_saque.each { |b| @total_bills_saque += b.valor  }

    @bills_trans = Bill.where(minicio:params[:id], transferencia:true)
    @total_bills_trans = 0
    @bills_trans.each { |b| @total_bills_trans += b.valor  }

    @total_absolute = @total_bills_trans + @total_bills_saque

    @total_incomes = 0
    @incomes = Income.where(mounth:params[:id])
    @incomes.each { |i| @total_incomes += i.valor  }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_bill
    #   @bill = Bill.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    # def bill_params
    #   params.require(:bill).permit(:valor, :titulo, :descrição, :ajuste, :parcelas, :mInicio, :mesFinal, :saque, :transferencia, :cartão, :internet)
    # end
end
