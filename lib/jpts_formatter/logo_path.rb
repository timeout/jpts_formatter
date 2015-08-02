module JPTSFormatter

  def self.logo_path= (logo_path)
    raise BadLogoPath.new("#{logo_path} does not exist.") unless File.exist?(logo_path)
    @@logo_path = logo_path
  end

  def self.logo_path
    @@logo_path
  end
end
