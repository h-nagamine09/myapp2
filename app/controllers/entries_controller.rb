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
    @entry = Entry.new(params[:id])
    if @entry.save
      redirect_to @entry, notice: "ブログを作成しました"
    else
      render "new"
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
end
