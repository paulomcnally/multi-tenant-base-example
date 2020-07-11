class Account::CompaniesController < ApplicationController
  before_action :set_account_company, only: [:show, :edit, :update, :destroy]

  # GET /account/companies
  # GET /account/companies.json
  def index
    @account_companies = Account::Company.all
  end

  # GET /account/companies/1
  # GET /account/companies/1.json
  def show
  end

  # GET /account/companies/new
  def new
    @account_company = Account::Company.new
  end

  # GET /account/companies/1/edit
  def edit
  end

  # POST /account/companies
  # POST /account/companies.json
  def create
    @account_company = Account::Company.new(account_company_params)

    respond_to do |format|
      if @account_company.save
        # Apartment::Tenant.create(@account_company.tenant)
        format.html { redirect_to @account_company, notice: 'Company was successfully created.' }
        format.json { render :show, status: :created, location: @account_company }
      else
        format.html { render :new }
        format.json { render json: @account_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /account/companies/1
  # PATCH/PUT /account/companies/1.json
  def update
    respond_to do |format|
      if @account_company.update(account_company_params)
        format.html { redirect_to @account_company, notice: 'Company was successfully updated.' }
        format.json { render :show, status: :ok, location: @account_company }
      else
        format.html { render :edit }
        format.json { render json: @account_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /account/companies/1
  # DELETE /account/companies/1.json
  def destroy
    @account_company.destroy
    respond_to do |format|
      format.html { redirect_to account_companies_url, notice: 'Company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account_company
      @account_company = Account::Company.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def account_company_params
      params.require(:account_company).permit(:name, :phone_number, :enabled)
    end
end
