# frozen_string_literal: true

module ActiveSupport
  class TimeWithZone
    # :no-doc:
    def to_s_br
      self.strftime("%d/%m/%Y %H:%M:%S")
    end
  end
end

class NilClass
  # :no-doc:
  def to_date
    nil
  end

  # :no-doc:
  def to_s_br
    nil
  end
end

class DateTime
  # :no-doc:
  def to_s_br
    self.strftime("%d/%m/%Y %H:%M:%S")
  end
end

class Date
  # :no-doc:
  def to_s_br
    self.strftime("%d/%m/%Y")
  end
end
