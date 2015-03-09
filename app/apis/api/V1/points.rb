module API
  module V1
    class Points < Grape::API

      helpers do
        def points_params
          ActionController::Parameters.new(params).permit(:id, :kind_id)
        end
      end

      resource :points do
        # GET /api/points
        get '/', rabl: :points do
          puts params
          @points = Point.all

        end
      end

    end
  end
end