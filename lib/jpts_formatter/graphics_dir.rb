module JPTSFormatter
  def self.graphics_dir_path= (graphics_dir)
    if graphics_dir.nil?
      @@graphics_dir_path = graphics_dir
    else
      # @@graphics_dir_path = Pathname.new(graphics_dir)
      raise BadGraphicsDirectory.new(
        "#{graphics_dir.to_s} does not exist.") unless File.directory?(graphics_dir)
      @@graphics_dir_path = Pathname.new(graphics_dir)
    end
  end

  def self.graphics_dir_path
    @@graphics_dir_path
  end

  def self.graphics_path(basename)
    graphics_path = @@graphics_dir_path + basename
    graphics_path.to_s
  end

  def self.graphics?
    !!(@@graphics_dir_path)
  end
end
