module JPTSFormatter
  module Presentation

    def self.job_name
      @@job_name ||= 'test_job'
    end

    def self.job_name= (job_name)
      @@job_name = job_name
    end

    def self.page_height
      @@page_height ||= '297mm'
    end

    def self.page_height= (page_height)
      @@page_height = page_height
    end

    def self.page_width
      @@page_width ||= '210mm'
    end

    def self.page_width= (page_width)
      @@page_width = page_width
    end

    def self.margin_top
      @@margin_top ||= "18pt"
    end

    def self.margin_top= (margin_top)
      @@margin_top = margin_top
    end

    def self.margin_bottom
      @@margin_bottom ||= "18pt"
    end

    def self.margin_bottom= (margin_bottom)
      @@margin_bottom = margin_bottom
    end

    def self.margin_left
      @@margin_left ||= "36pt"
    end

    def self.margin_left= (margin_left)
      @@margin_left = margin_left
    end

    def self.margin_right
      @@margin_right ||= "36pt"
    end

    def self.margin_right= (margin_right)
      @@margin_right = margin_right
    end

    def self.body_margin_top
      @@body_margin_top ||= "36pt"
    end

    def self.body_margin_top= (body_margin_top)
      @@body_margin_top = body_margin_top
    end

    def self.body_margin_bottom
      @@body_margin_bottom ||= "36pt"
    end

    def self.body_margin_bottom= (body_margin_bottom)
      @@body_margin_bottom = body_margin_bottom
    end

    def self.header_extent
      @@header_extent ||= "24pt"
    end

    def self.header_extent= (header_extent)
      @@header_extent = header_extent
    end

    def self.header_precedence
      @@header_precedence ||= true
    end

    def self.header_precedence= (header_precedence)
      @@header_precedence = header_precedence
    end

    def self.footer_extent
      @@footer_extent ||= "24pt"
    end

    def self.footer_extent= (footer_extent)
      @@footer_extent = footer_extent
    end

    def self.footer_precedence
      @@footer_precedence ||= true
    end

    def self.footer_precedence= (footer_precedence)
      @@footer_precedence = footer_precedence
    end

  end
end
