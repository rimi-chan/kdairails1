class MainsController < ApplicationController
  def index
    @mains = Main.all
    @main = Main.find_by(id: params[:id])
    @mains_count = Main.all.count
    
  end
  
  def new
    @main = Main.new
  end
  
  def create
    @main = Main.new(params.require(:main).permit(:title, :checkbox, :memo, :start_at, :end_at,))
    if @main.save
      flash[:notice] = "スケジュールを新規登録しました"
      redirect_to :mains
    else
    flash[:alert] = "スケジュールを新規登録できませんでした"
    render :new
    end
  end
  

  
  def show
    @main = Main.find(params[:id])
  end
 
  def edit
    @main = Main.find(params[:id])
  end
  
  def update
    @main = Main.find(params[:id])
    if @main.update(params.require(:main).permit(:title, :checkbox, :memo, :start_at, :end_at))
      flash[:notice] = "スケジュールを更新しました"
      redirect_to :mains
    else
      flash[:alert] = "スケジュールを更新できませんでした"
      render :new
    end
  end
  
  def destroy
    @main = Main.find(params[:id])
    @main.destroy
    flash[:notice] = "スケジュールを削除しました"
    redirect_to :mains
  end
end