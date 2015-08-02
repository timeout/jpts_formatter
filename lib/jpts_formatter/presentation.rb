module JPTSFormatter
  module Presentation

    def format_layout_master
      Presentation.document.format_layout_master(xml)
    end

    def format_header(alt_title)
      Presentation.document.format_header(xml, alt_title)
    end

    def format_footer(published_date)
      Presentation.document.format_footer(xml, published_date)
    end

    def format_subject(subject)
      Presentation.document.format_subject(xml, subject)
    end

    def format_article_title(title)
      Presentation.document.format_article_title(xml, title)
    end

    def format_authors(authors)
      Presentation.document.format_authors(xml, authors)
    end

    def format_affiliations(article_meta)
      Presentation.document.format_affiliations(xml, article_meta)
    end

    def format_abstract(abstract)
      Presentation.document.format_abstract(xml, abstract)
    end

    def format_abstract_title(title)
      Presentation.document.format_abstract_title(xml, title)
    end

    def format_paragraph(paragraph)
      Presentation.document.format_paragraph(xml, paragraph)
    end

    def format_section_title(title)
      Presentation.document.format_section_title(xml, title)
    end

    def format_publication_information(article_meta)
      Presentation.document.format_publication_information(xml, article_meta)
    end

    def format_date(date)
      Presentation.document.format_date(date)
    end

    def format_copyright(article_meta)
      Presentation.document.format_copyright(xml, article_meta)
    end

    def format_conflict(conflict)
      Presentation.document.format_conflict(xml, conflict)
    end

    def format_label(label)
      Presentation.document.format_label(xml, label)
    end

    def format_caption(caption)
      Presentation.document.format_caption(xml, caption)
    end

    def format_caption_title(title)
      Presentation.document.format_caption_title(xml, title)
    end

    def format_caption_paragraph(paragraph)
      Presentation.document.format_caption_paragraph(xml, paragraph)
    end

    def format_table(table)
      Presentation.document.format_table(xml, table)
    end

    def format_table_cell(cell)
      Presentation.document.format_table_cell(xml, cell, column)
    end

    def format_figure(figure)
      Presentation.document.format_figure(xml, figure)
    end

    def format_acknowledgement(acknowledgement)
      Presentation.document.format_acknowledgement(xml, acknowledgement)
    end

    def format_reference_list(reference_list)
      Presentation.document.format_reference_list(xml, reference_list)
    end

    def format_reference(reference)
      Presentation.document.format_reference(xml, reference)
    end

    # register documents
    def self.document= (document)
      @@document = document
    end

    def self.document
      @@document
    end
  end
end
