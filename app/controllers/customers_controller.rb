class CustomersController < ApplicationController
    def index

    end

    def new
      @customer = Customer.new 
    end

    def create
      @customer = Customer.new(customer_params)
      if @customer.save 
        redirect_to customers_path, notice: "Cliente cadastrado com sucesso!"
      else
        render :index
      end 
    end

    private 
      def customer_params
        params.require(:customer).permit(:id, :name, :email, :phone, :avatar, :smoker)
      end
    
end