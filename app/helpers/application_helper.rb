# frozen_string_literal: true

module ApplicationHelper
  def full_title(page_title = '')
    base_title = 'Scoring Processing'

    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end
# Cria um link para visualizar
#
# @param path [String] path de visualização
  def link_to_show(path)
    link_to path,
            class: "btn btn-info btn-sm",
            title: "Visualizar",
            style: "color: #FFF; float: none;" do
      content_tag :span, class: "fa fa-search" do
      end
    end
  end

# Cria um link para editar
#
# @param path [String] path de editar
# @param options [String] path de editar
  def link_to_edit(path, *options)
    link_to path,
            class: "btn btn-warning btn-sm",
            title: "Alterar",
            style: "color: #FFF; " do
      content_tag :span, class: "fa fa-pencil" do
        options.first[:label] if options.present? && options.first[:label]
      end

    end
  end

# Cria um link para Excluir
#
# @param path [String] path de excluir
  def link_to_remove(path)
    link_to path,
            method: "delete",
            class: "btn btn-danger btn-sm",
            title: "Excluir",
            data: { confirm: label_translate(:confirm_delete),
                    'confirm-button-text': "Confirmar",
                    'cancel-button-text': "Cancelar",
                    'confirm-button-color': "#66CD00",
                    'cancel-button-color': "#ff0000",
                    'sweet-alert-type': "warning",
            },
            style: "color: #FFF; float: none;" do
      content_tag :span, class: "fa fa-trash-o" do
      end
    end
  end
end
