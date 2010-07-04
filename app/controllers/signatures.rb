SignIt.controllers :signatures do
  # get :index, :map => "/foo/bar" do
  #   session[:foo] = "bar"
  #   render 'index'
  # end

  # get :sample, :map => "/sample/url", :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   "Maps to url '/foo/#{params[:id]}'"
  # end

  # get "/example" do
  #   "Hello world!"
  # end

  get :index do
    @signatures = Signature.all(:order => "created_at DESC")
    render 'signatures/index'
  end

  get :show do
    @signature = Signature.find_by_id(params[:id])
    render 'signatures/show'
  end

  post :create do
    strokes = params[:"drawbox-tab"].split("#")
    logger.debug strokes.size
    @signature = Signature.create(:title => params[:title], :svg_data => params[:'drawbox-data'])
    @signature.save
    strokes.each do |stroke_data|
      @signature.strokes.create(:data => stroke_data)
    end
    redirect_to url_for(:signatures, :show, :id => @signature.id)
  end

  get :new do
    @signature = Signature.new
    render 'signatures/new'
  end
end
