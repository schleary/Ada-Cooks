class MeasurementsController < ApplicationController

    def index
      @measurements = Measurement.all
    end

    def new
       @measurement = Measurement.new
    end

    def create
      @measurement = Measurement.new(params[:unit, :quantity])
      if @measurement.save
        redirect_to @measurement
      else
        render "new"
      end
    end

    def show
      @measurement = Measurement.find(params[:id])
    end

    def edit
      @measurement = Measurement.find(params[:id])
    end

    def update
      @measurement = Measurement.find(params[:id])
      if @measurement.update(find_params)
        redirect_to measurements_show_path(@measurement)
      else
        render 'edit'
      end
    end

    def destroy
      @measurement = Measurement.find(params[:id])
      @measurement.destroy
      redirect_to measurements_path(@measurement)
    end

    def upvote
      @measurement = Measurement.find(params[:id])
      if @measurement.save
        redirect_to measurements_show_path(@measurement)
      else
        render 'show'
      end
    end


    private

    def measurement_params
      params.require(:measurement).permit(:unit, :quatity)
    end

  end
