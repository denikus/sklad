class OptionValuesController < ApplicationController
  def index
    @option = Option.find(params[:option_id])
    @option_values = @option.option_values
  end

  def new
    @option_value = Option.find(params[:option_id]).option_values.new
  end

  def edit
    @option_value = OptionValue.find(params[:id])
  end

  def create
    @option_value = Option.find(params[:option_id]).option_values.new(option_value_params)

    if @option_value.save
      flash[:success] = 'Новая модификация успешно создана!'
      redirect_to new_option_option_value_path(option_id: @option_value.option.id)
    else
      render :action => "new"
    end
  end

  def update
    @option_value = OptionValue.find(params[:id])

    if @option_value.update(option_value_params)
      flash[:success] = 'Значение успешно обновлено!'
      redirect_to option_option_values_path(@option_value.option)
    else
      render 'edit'
    end
  end

  def destroy
    @option_value = OptionValue.find(params[:id])
    option = @option_value.option
    @option_value.destroy

    flash[:success] = "Значение успешно удалено!"

    redirect_to option_option_values_path(option)
  end

  private

  def option_value_params
    params.require(:option_value).permit(:name)
  end

end
