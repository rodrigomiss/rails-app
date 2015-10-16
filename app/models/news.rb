class News < ActiveRecord::Base
	belongs_to :category_news
	belongs_to :admin
	
	has_permalink :title

	validates_presence_of :title, message: "O título da notícia é obrigatório"
	validates_presence_of :subtitle, message: "O subtítulo é obrigatório"
	validates_presence_of :tags, message: "Informe pelo menos 1 palavra chave para a notícia"
	validates_presence_of :content, message: "Nenhum conteúdo foi digitado para esta notícia"

	# upload image
	has_attached_file :image, styles: { original: "1480x1080>", medium: "500x450>", thumb: "300x300#" }, url: "/images/news/portalcandoi-:id-:basename-:style.:extension"
	validates_attachment :image, content_type: { content_type: ["image/jpeg", "image/png"], message: "Imagem com formato não permitido. Use apenas .jpeg ou .png" }
end
