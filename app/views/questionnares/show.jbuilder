json.schema do
  json.type 'object'
  json.(@questionnary, :title)
  json.properties do
    @questionnary.parse_data['properties'].each do |property|
      property.each do |key, value|
        json.set! key do
          json.type value['type']
          json.title value['title']
        end
      end
    end
  end
end
