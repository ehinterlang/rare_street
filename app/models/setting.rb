class Setting < ApplicationRecord
  validates :key, presence: true, uniqueness: true

  # From the settings.yml files add all the settings that are required after deleting any settings that are not needed.
  def self.setup_required_settings
    Setting.all.each do |setting|
      setting.destroy unless setting_required?(setting.key)
    end
    SETTINGS[:items].each do |required_setting|
      Setting.create(key: required_setting[:key], value: '') unless Setting.find_by(key: required_setting[:key])
    end
    nil
  end

  private

  def self.setting_required?(setting_value)
    SETTINGS[:items].any? { |setting| setting[:key] == setting_value }
  end
end
