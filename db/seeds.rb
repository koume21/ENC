# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 全データを削除
School.delete_all
Club.delete_all
Type.delete_all
User.delete_all
Profile.delete_all
Friend.delete_all
Good.delete_all
Room.delete_all
RoomMember.delete_all
Chat.delete_all



s1 = School.create(name: "出雲商業")
s2 = School.create(name: "出雲農林")
s3 = School.create(name: "出雲工業")
s4 = School.create(name: "出雲高校")
s5 = School.create(name: "大社高校")
s6 = School.create(name: "出雲北稜")
s7 = School.create(name: "出雲西")

c1 = Club.create(name: "野球")
c2 = Club.create(name: "サッカー")
c3 = Club.create(name: "バスケ")
c4 = Club.create(name: "バレー")
c5 = Club.create(name: "バドミントン")
c6 = Club.create(name: "弓道")
c7 = Club.create(name: "剣道")
c8 = Club.create(name: "吹奏楽")

t1 = Type.create(name: "男性")
t2 = Type.create(name: "女性")

user1 = User.create(login: "shuto",password: "shuto")
Profile.create(user_id: user1.id, user_name: "柊人", school_id: s1.id, grade: 1, club_id: c2.id, type_id:t1.id)
user2 = User.create(login: "masato",password: "masato")
Profile.create(user_id: user2.id, user_name: "雅人", school_id: s2.id, grade: 2, club_id: c5.id, type_id:t1.id)
user3 = User.create(login: "koumei",password: "koumei")
Profile.create(user_id: user3.id, user_name: "孝明", school_id: s3.id, grade: 3, club_id: c6.id, type_id:t1.id)

