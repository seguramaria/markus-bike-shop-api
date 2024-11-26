class BikeFeaturesController < ApplicationController
  def index
    features = {
      frames: Frame.includes(:finishes).map do |frame|
        frame.as_json(include: { finishes: { only: [:variant, :price, :label] } })
      end,
      wheels: Wheel.all.as_json,
      rims: Rim.all.as_json,
      chains: Chain.all.as_json
    }

    incompatibilities = Incompatibility.includes(:item1, :item2)

    render json: { features: features, incompatibilities: incompatibilities }
  end
end
