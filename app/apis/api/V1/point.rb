module API
  module V1
    class Point < Grape::API
      helpers do
        def points_params
          ActionController::Parameters.new(params).permit(:id, :kind_id)
        end
      end

      resource :points do
        # GET /api/points
        get '/', rabl: :points do
          @points = [{hoge: :piyo}, {hoge: :piyo}, {hoge: :piyo}]
        end
      end
    end
  end
end