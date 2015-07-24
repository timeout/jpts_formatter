require 'jpts_formatter/document'
require 'jpts_formatter/presentation/layout_master'
require 'jpts_formatter/presentation/header'
require 'jpts_formatter/presentation/footer'
require 'jpts_formatter/presentation/horizontal_rule'
require 'jpts_formatter/presentation/subject'
require 'jpts_formatter/presentation/article_title'
require 'jpts_formatter/presentation/authors'
require 'jpts_formatter/presentation/affiliations'
require 'jpts_formatter/presentation/abstract'
require 'jpts_formatter/presentation/abstract_title'
require 'jpts_formatter/presentation/paragraph'
require 'jpts_formatter/presentation/section_title'
require 'jpts_formatter/presentation/publication_information'
require 'jpts_formatter/presentation/date'
require 'jpts_formatter/presentation/copyright'
require 'jpts_formatter/presentation/conflict'
require 'jpts_formatter/presentation/label'
require 'jpts_formatter/presentation/caption'
require 'jpts_formatter/presentation/caption_title'
require 'jpts_formatter/presentation/caption_paragraph'
require 'jpts_formatter/presentation/table'
require 'jpts_formatter/presentation/table_cell'
require 'jpts_formatter/presentation/figure'
require 'jpts_formatter/presentation/acknowledgement'
require 'jpts_formatter/presentation/reference_list'
require 'jpts_formatter/presentation/reference'

module JPTSFormatter
  class DefaultDocument < Document
    include Presentation::DocumentElements

    def format_layout_master(xml)
      Presentation::DocumentElements.format_layout_master(xml)
    end

    def format_header(xml)
      Presentation::DocumentElements.format_header(xml)
    end

    def format_footer(xml)
      Presentation::DocumentElements.format_footer(xml)
    end

    def format_subject(xml, subject)
      Presentation::DocumentElements.format_subject(xml, subject)
    end

    def format_article_title(xml, title)
      Presentation::DocumentElements.format_article_title(xml, title)
    end

    def format_authors(xml, authors)
      Presentation::DocumentElements.format_authors(xml, authors)
    end

    def format_affiliations(xml, article_meta)
      Presentation::DocumentElements.format_affiliations(xml, article_meta)
    end

    def format_abstract(xml, abstract)
      Presentation::DocumentElements.format_abstract(xml, abstract)
    end

    def format_abstract_title(xml, title)
      Presentation::DocumentElements.format_abstract_title(xml, title)
    end

    def format_paragraph(xml, paragraph)
      Presentation::DocumentElements.format_paragraph(xml, paragraph)
    end

    def format_section_title(xml, title)
      Presentation::DocumentElements.format_section_title(xml, title)
    end

    def format_publication_information(xml, article_meta)
      Presentation::DocumentElements.format_publication_information(xml, article_meta)
    end

    def format_date(date)
      Presentation::DocumentElements.format_date(date)
    end

    def format_copyright(xml, article_meta)
      Presentation::DocumentElements.format_copyright(xml, article_meta)
    end

    def format_conflict(xml, conflict)
      Presentation::DocumentElements.format_conflict(xml, conflict)
    end

    def format_label(xml, conflict)
      Presentation::DocumentElements.format_conflict(xml, conflict)
    end

    def format_caption(xml, caption)
      Presentation::DocumentElements.format_caption(xml, caption)
    end

    def format_caption_title(xml, title)
      Presentation::DocumentElements.format_caption_title(xml, title)
    end

    def format_caption_paragraph(xml, paragraph)
      Presentation::DocumentElements.format_caption_paragraph(xml, paragraph)
    end

    def format_table(xml, table)
      Presentation::DocumentElements.format_table(xml, table)
    end

    def format_table_cell(xml, cell, column)
      Presentation::DocumentElements.format_table_cell(xml, cell, column)
    end

    def format_figure(xml, figure)
      Presentation::DocumentElements.format_figure(xml, figure)
    end

    def format_acknowledgement(xml, acknowledgement)
      Presentation::DocumentElements.format_acknowledgement(xml, acknowledgement)
    end

    def format_reference_list(xml, reference_list)
      Presentation::DocumentElements.format_reference_list(xml, reference_list)
    end

    def format_reference(xml, reference)
      Presentation::DocumentElements.format_reference(xml, reference)
    end

  end
end
