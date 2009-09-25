class Setting < ActiveRecord::Base
  
  validates_presence_of :key
  
  def self.load_settings
    settings_hash = {}
    Setting.find(:all).each {|s| settings_hash[s.key] = s.value}
    settings_hash
  end
  
  def self.save_settings(settings)
    settings.each do |key,value|
      self.set(key,value,true)
    end
    @@settings_hash = self.load_settings
  end
  
  def self.get(key)
    @@settings_hash ||= self.load_settings
    @@settings_hash.has_key?(key) ? @@settings_hash[key] : nil
  end
  
  def self.set(key,value,batch = false)
    setting = Setting.find_by_key(key)
    if setting
      setting.value = value
      setting.save
    else
      Setting.create(:key => key, :value => value)
    end
    @@settings_hash = self.load_settings unless batch
  end
end
