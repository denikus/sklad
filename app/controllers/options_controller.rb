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
      redirect_to options_path, :notice => 'Новая модификация успешно создана!'
    else
      render :action => "new"
    end
  end

  private

  def option_params
    params.require(:option).permit(:name, :url)
  end
end

