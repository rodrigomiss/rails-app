class Admin::CategoryNewsController < AdminController
  before_action :set_category_news, only: [:show, :edit, :update, :destroy]

  # GET /category_news
  def index
    @category_news = CategoryNews.all
  end

  # GET /category_news/new
  def new
    @category_news = CategoryNews.new
  end

  # GET /category_news/1/edit
  def edit
  end

  # POST /category_news
  def create
    @category_news = CategoryNews.new(category_news_params)
  
    if @category_news.save
      redirect_to admin_category_news_index_path, :flash => { :success => "Categoria criada com sucesso." }
    else
      render :new
    end
  end

  # PATCH/PUT /category_news/1
  def update
    if @category_news.update(category_news_params)
      redirect_to admin_category_news_index_path, :flash => { :success => "Categoria atualizada com successo." }
    else
      render :edit
    end
  end

  # DELETE /category_news/1
  def destroy
    @category_news.destroy
    redirect_to admin_category_news_index_path, :flash => { :success => "Categoria excluída com sucesso." }
  end

  private
    def set_category_news
      @category_news = CategoryNews.find(params[:id])
    end
    
    def category_news_params
      params.require(:category_news).permit(:name)
    end
end
