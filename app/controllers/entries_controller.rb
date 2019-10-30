class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @entry = Entry.new(posted_at: Time.current)
  end

  def create
    @entry = Entry.new(entry_params)
    if @entry.save
      redirect_to @entry, notice: "ブログを作成しました"
    else

      render "new",  notice: "ブログの作成ができませんでした"
    end
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def update
    @entry = Entry.find(params[:id])
    if @entry.save
      redirect_to @entry,notice: "記事を更新しました"
    else
      render "edit"
    end
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
    redirect_to :entries, notice: "記事を削除しました"
  end

  private

  def entry_params
    params.require(:entry).permit(:title,:body,:posted_at)
  end
end
