class StyleSurvey < ActiveRecord::Base
  belongs_to :user

  def self.style_types
    ['Classic', 'Girly', 'Edgy', 'Casual', 'Preppy', 'Glamorous', 'Trendsetter', 'Business']
  end

  def self.colors
    ['#000000', '#751241', '#e8b379', '#a6a6a6', '#b0c4d8', '#93ab85', '#ddb6b4', '#f71947', '#2fa456', '#0052a4', '#9000c3', '#d80000', '#f77906', '#ffcc00']
  end

  def self.patterns
    ['Lace', 'Stripes', 'Polka-dot', 'Animal', 'Solid']
  end

  def self.brands
    ['Alexander-McQueen', 'Tom-Ford', 'DKNY']
  end

end
