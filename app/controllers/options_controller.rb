class OptionsController < ApplicationController
  def index
    @options = Option.all
  end

  def new
    @option = Option.new
  end

  def create
    @option = Option.new(option_params)

    if @option.save
      flash[:success] = 'Новая модификация успешно создана!'
      redirect_to options_path
    else
      render :action => "new"
    end
  end

  private

  def option_params
    params.require(:option).permit(:name, :url)
  end
end

