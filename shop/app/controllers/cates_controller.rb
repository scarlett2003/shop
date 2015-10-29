class CatesController < ApplicationController
  before_action :set_cate, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @cates = Cate.all
    respond_with(@cates)
  end

  def show
    respond_with(@cate)
  end

  def new
    @cate = Cate.new
    respond_with(@cate)
  end

  def edit
  end

  def create
    @cate = Cate.new(cate_params)
    @cate.save
    respond_with(@cate)
  end

  def update
    @cate.update(cate_params)
    respond_with(@cate)
  end

  def destroy
    @cate.destroy
    respond_with(@cate)
  end

  private
    def set_cate
      @cate = Cate.find(params[:id])
    end

    def cate_params
      params[:cate]
    end
end
