class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  def self.human_enum_name(enum_name, enum_value)
    I18n.t("activerecord.attributes.#{model_name.i18n_key}.#{enum_name.to_s.pluralize}.#{enum_value}")
  end

  def self.select_enum_attribute(enum_name)
    self.send(enum_name.to_s.pluralize).keys.map do |value|
      [I18n.t("activerecord.attributes.#{model_name.i18n_key}.#{enum_name.to_s.pluralize}.#{value}"), value]
    end
  end

  def translate(attr)
    self.class.human_enum_name(attr, self.send(attr))
  end
end
