class CreateClinicsModels < ActiveRecord::Migration
  def up
    create_table :clinics_models do |t|
    	t.string "SV_TAXONOMY"
    	t.string "TAXONOMY_NAME"
    	t.string "RG_REFERENCE"
    	t.string "RG_NAME"
    	t.string "SV_REFERENCE"
    	t.string "SV_NAME"
    	t.string "SV_DESCRIPTION"
    	t.string "SL_REFERENCE"
    	t.string "LC_REFERENCE"
    	t.string "PHONE_NUMBER"
    	t.string "WEBSITE"
    	t.string "EMAIL_ADDRESS"
    	t.string "WHEELCHAIR_ACCESSIBLE"
    	t.string "LANGUAGE"
    	t.string "HOURS"
    	t.string "STREET_NUMBER"
    	t.string "STREET_NAME"
    	t.string "STREET_TYPE"
    	t.string "STREET_DIRECTION"
    	t.string "CITY"
    	t.string "PROVINCE"
    	t.string "POSTAL_CODE"
    	t.integer "LATITUDE"
    	t.integer "LONGITUDE"
    	t.string "811_LINK"
     	t.timestamps
    end
  end

  def down
  	drop_table :clinics_models
  end
end
