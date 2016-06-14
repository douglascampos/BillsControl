class IncomesController < ApplicationController
  before_action :set_income, only: [:show, :edit, :update, :destroy]

  def index
    @incomes = Income.all
  end

  def show
  end

  def new
    @income = Income.new
  end

  def edit
  end

  def create
    @income = Income.new(income_params)

    respond_to do |format|
      if @income.save
        format.html { redirect_to incomes_url, notice: 'Pronto, você acaba de criar uma nova renda' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @income.update(income_params)
        format.html { redirect_to incomes_url, notice: 'Pronto, você acabou de editar a renda' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @income.destroy
    respond_to do |format|
      format.html { redirect_to incomes_url, notice: 'Você realmente deveria ter excluido uma renda?' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_income
      @income = Income.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def income_params
      params.require(:income).permit(:nome, :valor, :dividido, :ajuste, :mounth)
    end
end
