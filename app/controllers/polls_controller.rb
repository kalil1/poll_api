class PollsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :update, :destroy]

  def index

  end
  
  def create
    @poll = current_user.polls.build(poll_params)

    if @poll.save
      render json: @poll, status: :created
    else
      render json: @poll.errors, status: :unprocessable_entity
    end
  end

  def update
    @poll = current_user.polls.find(params[:id])

    if @poll.update(poll_params)
      render json: @poll, status: :ok
    else
      render json: @poll.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @poll = current_user.polls.find(params[:id])
    @poll.destroy

    head :no_content
  end

  private

  def poll_params
    params.require(:poll).permit(:title)
  end
end
