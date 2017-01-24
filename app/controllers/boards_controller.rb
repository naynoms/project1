class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def my_boards
    @boards = @current_user.boards
    render :index
  end

  def new
    @board = Board.new
  end

  def create
    board = Board.create board_params
    @current_user.boards << board
    redirect_to board
  end


  def edit
    @board = Board.find params[:id]
  end

  def update
    board = Board.find params[:id]
    board.update board_params
    redirect_to board
  end

  def show
    @board = Board.find params[:id]
  end

  def destroy
    board = Board.find params[:id]
    board.destroy
    redirect_to boards_path
  end

private
  def board_params
    params.require(:board).permit(:title)
  end


end
