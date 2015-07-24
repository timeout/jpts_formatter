require 'jpts_formatter/plugin'

module JPTSFormatter
  class Document
    include Plugin

    def format_layout_master(xml)
      raise NotImplementedError.new
    end

    def format_header(xml)
      raise NotImplementedError.new
    end

    def format_footer(xml)
      raise NotImplementedError.new
    end

    def format_subject(xml, subject)
      raise NotImplementedError.new
    end

    def format_article_title(xml, title)
      raise NotImplementedError.new
    end

    def format_authors(xml, authors)
      raise NotImplementedError.new
    end

    def format_affiliations(xml, article_meta)
      raise NotImplementedError.new
    end

    def format_abstract(xml, abstract)
      raise NotImplementedError.new
    end

    def format_abstract_title(xml, title)
      raise NotImplementedError.new
    end

    def format_paragraph(xml, paragraph)
      raise NotImplementedError.new
    end

    def format_section_title(xml, title)
      raise NotImplementedError.new
    end

    def format_publication_information(xml, article_meta)
      raise NotImplementedError.new
    end

    def format_date(date)
      raise NotImplementedError.new
    end

    def format_copyright(xml, article_meta)
      raise NotImplementedError.new
    end

    def format_conflict(xml, conflict)
      raise NotImplementedError.new
    end

    def format_label(xml, label)
      raise NotImplementedError.new
    end

    def format_caption(xml, caption)
      raise NotImplementedError.new
    end

    def format_caption_title(xml, title)
      raise NotImplementedError.new
    end

    def format_caption_paragraph(xml, paragraph)
      raise NotImplementedError.new
    end

    def format_table(xml, table)
      raise NotImplementedError.new
    end

    def format_table_cell(xml, cell, column)
      raise NotImplementedError.new
    end

    def format_figure(xml, figure)
      raise NotImplementedError.new
    end

    def format_acknowledgement(xml, acknowledgement)
      raise NotImplementedError.new
    end

    def format_reference_list(xml, reference_list)
      raise NotImplementedError.new
    end

    def format_reference(xml, reference)
      raise NotImplementedError.new
    end

  end
end

