class Country < ApplicationRecord
def self.withicons
where.not(mapicon:nil).sample(4)
end
    def mapicon=(file)
      if !file.is_a?(String)
      pathfile = file.tempfile.path
      filename =pathfile.split('/').last
      if filename.length > 0
      self.write_attribute(:mapicon, filename)
      end
      loc='photos'
      abs=Rails.root.to_s+"/app/assets/#{loc}/#{filename}"
      `mv #{pathfile} #{abs}`
      #Post.cloud([loc,filename].join('/'),abs)
      else
      self.write_attribute(:mapicon, file)

       end

    end

end
