class GoalsController < ApplicationController
    def index
        @goals = Goal.all
    end
    def new
        @goal = Goal.new
      end
      def create
        goal = Goal.new(goal_params)
        goal.user_id = current_user.id
        if goal.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end

      def show
        @goal = Goal.find(params[:id])
      end

      def edit
        @goal = Goal.find(params[:id])
      end

      def update
        goal = Goal.find(params[:id])
        if goal.update(goal_params)
          redirect_to :action => "show", :id => goal.id
        else
          redirect_to :action => "new"
        end
      end

      def destroy
        goal = Goal.find(params[:id])
        goal.destroy
        redirect_to action: :index
      end
    
      private
      def goal_params
        params.require(:goal).permit(:weight, :fet, :states)
    end
      end

