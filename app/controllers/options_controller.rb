class OptionsController < ApplicationController
  def index
    @options = Option.all
  end

  def new
    @option = Option.new
  end

  def edit
    @option = Option.find(params[:id])
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

  def update
    @option = Option.find(params[:id])

    if @option.update(option_params)
      flash[:success] = 'Модификация успешно обновлена!'
      redirect_to options_path
    else
      render 'edit'
    end

  end

  def destroy
    @option = Option.find(params[:id])
    @option.destroy

    flash[:success] = "Модификация успешно удалена!"

    redirect_to(options_path)
  end

  private

  def option_params
    params.require(:option).permit(:name, :url)
  end
end

