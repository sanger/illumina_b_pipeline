#This file is part of Illumina-B Pipeline is distributed under the terms of GNU General Public License version 3 or later;
#Please refer to the LICENSE and README files for information on licensing and authorship of this file.
#Copyright (C) 2012 Genome Research Ltd.
class IlluminaB::MultiplexedLibraryTube < Sequencescape::MultiplexedLibraryTube
  def coerce
    return self
  end

  def location
    'A1'
  end

  alias_method :plate_purpose, :purpose

end
