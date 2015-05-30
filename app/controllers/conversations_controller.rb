class ConversationsController < ApplicationController

  def index
    @conversations = Conversation.all
  end

  def new
    @conversation = Conversation.new
  end

  def show
    @conversation = Conversation.find(params[:id])
  end

  def edit
    @conversation = Conversation.find(params[:id])
  end

  def create
    @conversation = Conversation.new(conversation_params)
    respond_to do |format|
      if @conversation.save
        format.html { redirect_to @conversation, notice: 'conversation was successfully created.' }
        format.json { render :show, status: :created, location: @conversation }
      else
        format.html { render :new }
        format.json { render json: @conversation.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conversation
      @conversation = Conversation.find(params[:id])
    end

    def conversation_params
      params.require(:conversation).permit(:name)
    end
end
