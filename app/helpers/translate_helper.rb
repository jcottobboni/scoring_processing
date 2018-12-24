# frozen_string_literal: true

# Todos os métodos presentes nesse +helper+ dependem do conteúdo de config/locales
module TranslateHelper
  # Retorna um label traduzido
  #
  # @param label_name [String|Symbol] nome da label
  #
  # @return [String] label traduzido
  def label_translate(label_name)
    I18n.t("labels.#{label_name}")
  end

end
