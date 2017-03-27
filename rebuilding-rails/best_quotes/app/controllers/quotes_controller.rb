class QuotesController < Rulers::Controller
  def index
    quotes = FileModel.all
    render :index, quotes: quotes
  end

  def a_quote
    render :a_quote, none: :winking
  end

  def quote_1
    quote = FileModel.find(1)
    render :quote, obj: quote
  end

  def new_quote
    attrs = {
      "submitter" => "web user",
      "quote" => "A picture is worth a thousand pixels",
      "attribution" =>  "Me"
    }
    quote = FileModel.create attrs
    render :quote, obj: quote
  end

  def exception
    raise "It's a bad one!"
  end
end
