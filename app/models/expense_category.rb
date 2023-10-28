class ExpenseCategory < ActiveHash::Base

  self.data = [
    { id: 1, name: '---'},
    { id: 2, name: '食費'},
    { id: 3, name: '外食費'},
    { id: 4, name: 'コンビニ'},
    { id: 5, name: '日用品費'},
    { id: 6, name: '交際費'},
    { id: 7, name: '衣服費'},
    { id: 8, name: '病院費'},
    { id: 9, name: 'その他'},
  ]

  include ActiveHash::Associations
  has_many :expenses

  end