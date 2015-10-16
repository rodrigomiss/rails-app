class Admin::NewsController < AdminController
  before_action :set_news, only: [:show, :edit, :update, :destroy]

  autocomplete :category_news, :name

  # GET /news
  def index
    @news = News.all
  end

  # GET /news/new
  def new
    @news = News.new
  end

  # GET /news/1/edit
  def edit
  end

  # POST /news
  def create
    @news = News.new(news_params)
    @news.admin = current_admin_admin

    if @news.save
      redirect_to admin_news_index_path, :flash => { :success => "Notícia cadastrada com sucesso." }
    else
      render :new
    end
  end

  # PATCH/PUT /news/1
  def update
    if @news.update(news_params)
      redirect_to admin_news_index_path, :flash => {:success => "Notícia atualizada com sucesso."}
    else
      render :edit
    end
  end

  # DELETE /news/1
  def destroy
    @news.destroy
    redirect_to admin_news_index_path, :flash => { :success => "Notícia excluída com sucesso." }
  end

  private
    def set_news
      redirect_to admin_news_index_path, :flash => {:danger => "A notícia que você está tentando editar não foi localizada" } unless @news = News.find_by_permalink(params[:id])
    end

    def news_params
      params.require(:news).permit(:image, :category_news_id, :title, :subtitle, :tags, :content)
    end
end
