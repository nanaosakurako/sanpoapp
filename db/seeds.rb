# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
areas = Area.create([{name: '銀座・東京'}, {name:'渋谷・恵比寿'}, {name:'新宿・代々木'}, {name:'池袋・高田馬場'}, {name:'原宿・表参道'}, {name:'赤坂・六本木'},{name:'四ツ谷・水道橋'},{name:'秋葉原・上野'},{name:'両国・小岩'},{name:'品川・お台場'},{name:'目黒・五反田'},{name:'中野・三鷹'}])
timeframes = Timeframe.create([{name: '朝'}, {name: '昼'}, {name: '夕方'}, {name: '夜'}])

