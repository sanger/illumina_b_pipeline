#This file is part of SEQUENCESCAPE is distributed under the terms of GNU General Public License version 1 or later;
#Please refer to the LICENSE and README files for information on licensing and authorship of this file.
#Copyright (C) 2016 Genome Research Ltd.

# This class allows us to retrieve all assets in a single barcode lookup
class IlluminaB::BarcodedAsset < Sequencescape::BarcodedAsset

  # We might actually be able to do something better here.
  def parent
    @parent ||= api.search.find(Settings.searches['Find source assets by destination asset barcode']).first(:barcode => barcode.ean13)
  end


  attribute_accessor :state
  belongs_to :plate_purpose

  alias_method :purpose=, :plate_purpose=
  alias_method :purpose, :plate_purpose

  def purpose_uuid
    purpose.uuid
  end

  def purpose_name
    purpose.name
  end

end
