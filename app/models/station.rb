# -*- coding: utf-8 -*-
class Station < ActiveRecord::Base
  validates :name, presence: true, uniqueness: {message: "站名已存在"}
  validates :city, presence: true
  validates :province, presence: true
end
