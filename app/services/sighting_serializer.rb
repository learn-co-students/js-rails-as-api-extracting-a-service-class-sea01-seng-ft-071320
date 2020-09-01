class SightingSerializer
  def initialize(sighting_object)
    @sighting = sighting_object
    end

  def to_serialized_json
    # @sighting.to_json(include: {
    #                     bird: { only: %i[name species] },
    #                     location: { only: %i[latitude longitude] }
    #                   }, except: [:updated_at])
    options = {
      include: {
        bird: {
          only: %i[name species]
        },
        location: {
          only: %i[latitude longitude]
        }
      },
      except: [:updated_at]
    }
    @sighting.to_json(options)
  end
end
