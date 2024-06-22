class JobsController < ApplicationController
    def index
        @jobs = Job.all
    end
    def new
        @job = Job.new
      end

      def create
        job = Job.new(job_params)
        job.user_id = current_user.id
        if job.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end

      def show
        @job = Job.find(params[:id])
      end

      def edit
        @job = Job.find(params[:id])
      end

      def update
        job = Job.find(params[:id])
        if job.update(job_params)
          redirect_to :action => "show", :id => job.id
        else
          redirect_to :action => "new"
        end
      end

      def destroy
        job = Job.find(params[:id])
        job.destroy
        redirect_to action: :index
      end
    

      private
      def job_params
        params.require(:job).permit(:trainingname, :trainingnumber)
      end
end
