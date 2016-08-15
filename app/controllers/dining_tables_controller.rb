class DiningTablesController < ApplicationController
  before_action :set_dining_table, only: [:show, :edit, :update, :destroy, :update_customer]
  skip_before_filter :verify_authenticity_token

  # GET /dining_tables
  # GET /dining_tables.json
  def index
    @dining_tables = DiningTable.all.order(:id)
    @customers = Customer.where(diningtable_id: nil)
    @dining_table = DiningTable.new
  end

  # GET /dining_tables/1
  # GET /dining_tables/1.json
  def show
    @customers = Customer.where(diningtable_id: nil)
    @dining_tables = DiningTable.all
  end

  # GET /dining_tables/new
  def new
    @dining_table = DiningTable.new
    @customers = Customer.all
  end

  # GET /dining_tables/1/edit
  def edit
  end

  # POST /dining_tables
  # POST /dining_tables.json
  def create
    @dining_table = DiningTable.new(dining_table_params)

    respond_to do |format|
      if @dining_table.save
        format.html { redirect_to dining_tables_path, notice: 'Dining table was successfully created.' }
        format.json { render :show, status: :created, location: @dining_table }
      else
        format.html { render :new }
        format.json { render json: @dining_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dining_tables/1
  # PATCH/PUT /dining_tables/1.json
  def update
    respond_to do |format|
      if @dining_table.update(dining_table_params)
        format.html { redirect_to @dining_table, notice: 'Dining table was successfully updated.' }
        format.json { render :show, status: :ok, location: @dining_table }
      else
        format.html { render :edit }
        format.json { render json: @dining_table.errors, status: :unprocessable_entity }
      end
    end
  end

  def update_customer
    @dining_table.customer_id = params[:customer_id];
    return render :json => {success: @dining_table.save!}
  end

  # DELETE /dining_tables/1
  # DELETE /dining_tables/1.json
  def destroy
    @dining_table.destroy
    respond_to do |format|
      format.html { redirect_to dining_tables_url, notice: 'Dining table was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dining_table
      @dining_table = DiningTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dining_table_params
      params.require(:dining_table).permit(:customer_id, :name)
    end
end
