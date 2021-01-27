class TextBlocksController < ApplicationController
  before_action :set_text_block, only: [:show, :edit, :update, :destroy]

  def index
    @text_blocks = TextBlock.all
  end

  def show
    @text_block = TextBlock.find(params[:id])
  end

  def new
    @text_block = TextBlock.new
  end

  def edit
    @text_block = TextBlock.find(params[:id])
  end

  def create
    @text_block = TextBlock.new(text_block_params)
    respond_to do |format|
      if @text_block.save
        format.html { redirect_to @text_block, notice: 'Text block was successfully created.' }
        format.json { render :show, status: :created, location: @text_block }
      else
        format.html { render :new }
        format.json { render json: @text_block.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @text_block.update(text_block_params)
        format.html { redirect_to @text_block, notice: 'Text block was successfully updated.' }
        format.json { render :show, status: :ok, location: @text_block }
      else
        format.html { render :edit }
        format.json { render json: @text_block.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @text_block.destroy
    respond_to do |format|
      format.html { redirect_to text_blocks_url, notice: 'Text block was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_text_block
    @text_block = TextBlock.find(params[:id])
  end

  def text_block_params
    params.require(:text_block).permit(:title, :body, :user_id)
  end
end
