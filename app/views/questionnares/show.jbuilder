json.schema do
  json.(@questionnary, :title, :description)
  json.properties do
    @questionnary.parse_data['properties'].each do |property|
      property.each do |key,value|
        json.set! key do
          json.type value.keys[0]
          json.title value['type']
        end
      end
    end
  end
end

