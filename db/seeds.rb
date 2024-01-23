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
s8 = School.create(name: "平田高校")

c1 = Club.create(name: "野球")
c2 = Club.create(name: "サッカー")
c3 = Club.create(name: "バスケ")
c4 = Club.create(name: "バレー")
c5 = Club.create(name: "バドミントン")
c6 = Club.create(name: "弓道")
c7 = Club.create(name: "剣道")
c8 = Club.create(name: "吹奏楽")
c9 = Club.create(name: "美術部")
c10 = Club.create(name: "陸上部")
c11 = Club.create(name: "卓球部")
c12 = Club.create(name: "テニス部")
c13 = Club.create(name: "合唱部")

t1 = Type.create(name: "男性")
t2 = Type.create(name: "女性")

# user1 = User.create(login: "shuto",password: "shuto")
# Profile.create(user_id: user1.id, user_name: "柊人", school_id: s1.id, grade: 1, club_id: c2.id, type_id:t1.id)
# user2 = User.create(login: "masato",password: "masato")
# Profile.create(user_id: user2.id, user_name: "雅斗", school_id: s2.id, grade: 2, club_id: c5.id, type_id:t1.id)
# user3 = User.create(login: "koumei",password: "koumei")
# Profile.create(user_id: user3.id, user_name: "孝明", school_id: s3.id, grade: 3, club_id: c6.id, type_id:t1.id)
# user4 = User.create(login: "shuto",password: "shuto")
# Profile.create(user_id: user1.id, user_name: "柊人", school_id: s1.id, grade: 1, club_id: c2.id, type_id:t1.id)
# user5 = User.create(login: "shuto",password: "shuto")
# Profile.create(user_id: user1.id, user_name: "柊人", school_id: s1.id, grade: 1, club_id: c2.id, type_id:t1.id)
# user6 = User.create(login: "shuto",password: "shuto")
# Profile.create(user_id: user1.id, user_name: "柊人", school_id: s1.id, grade: 1, club_id: c2.id, type_id:t1.id)
# user7 = User.create(login: "shuto",password: "shuto")
# Profile.create(user_id: user1.id, user_name: "柊人", school_id: s1.id, grade: 1, club_id: c2.id, type_id:t1.id)
# user8 = User.create(login: "shuto",password: "shuto")
# Profile.create(user_id: user1.id, user_name: "柊人", school_id: s1.id, grade: 1, club_id: c2.id, type_id:t1.id)
# user9 = User.create(login: "shuto",password: "shuto")
# Profile.create(user_id: user1.id, user_name: "柊人", school_id: s1.id, grade: 1, club_id: c2.id, type_id:t1.id)
# user10 = User.create(login: "shuto",password: "shuto")
# Profile.create(user_id: user1.id, user_name: "柊人", school_id: s1.id, grade: 1, club_id: c2.id, type_id:t1.id)
# user11 = User.create(login: "shuto",password: "shuto")
# Profile.create(user_id: user1.id, user_name: "柊人", school_id: s1.id, grade: 1, club_id: c2.id, type_id:t1.id)
# user12 = User.create(login: "shuto",password: "shuto")
# Profile.create(user_id: user1.id, user_name: "柊人", school_id: s1.id, grade: 1, club_id: c2.id, type_id:t1.id)
# user13 = User.create(login: "shuto",password: "shuto")
# Profile.create(user_id: user1.id, user_name: "柊人", school_id: s1.id, grade: 1, club_id: c2.id, type_id:t1.id)
# user14 = User.create(login: "shuto",password: "shuto")
# Profile.create(user_id: user1.id, user_name: "柊人", school_id: s1.id, grade: 1, club_id: c2.id, type_id:t1.id)
# user15 = User.create(login: "shuto",password: "shuto")
# Profile.create(user_id: user1.id, user_name: "柊人", school_id: s1.id, grade: 1, club_id: c2.id, type_id:t1.id)
# user16 = User.create(login: "shuto",password: "shuto")
# Profile.create(user_id: user1.id, user_name: "柊人", school_id: s1.id, grade: 1, club_id: c2.id, type_id:t1.id)
# user17 = User.create(login: "shuto",password: "shuto")
# Profile.create(user_id: user1.id, user_name: "柊人", school_id: s1.id, grade: 1, club_id: c2.id, type_id:t1.id)
# user18 = User.create(login: "shuto",password: "shuto")
# Profile.create(user_id: user1.id, user_name: "柊人", school_id: s1.id, grade: 1, club_id: c2.id, type_id:t1.id)
# user19 = User.create(login: "shuto",password: "shuto")
# Profile.create(user_id: user1.id, user_name: "柊人", school_id: s1.id, grade: 1, club_id: c2.id, type_id:t1.id)
# user20 = User.create(login: "shuto",password: "shuto")
# Profile.create(user_id: user1.id, user_name: "柊人", school_id: s1.id, grade: 1, club_id: c2.id, type_id:t1.id)

user1= User.create(login: "shuto",password: "shuto")
user2= User.create(login: "saho",password: "saho")
user3= User.create(login: "masato",password: "masato")
user4= User.create(login: "orihime",password: "orihime")
user5= User.create(login: "koumei",password: "koumei")
user6= User.create(login: "hana",password: "hana")
user7= User.create(login: "takumi",password: "takumi")
user8= User.create(login: "aya",password: "aya")
user9= User.create(login: "ryoku",password: "ryoku")
user10= User.create(login: "yuu",password: "yuu")
user11= User.create(login: "huuki",password: "huuki")
user12= User.create(login: "sora",password: "sora")
user13= User.create(login: "siunn",password: "siunn")
user14= User.create(login: "sakura",password: "sakura")
user15= User.create(login: "yoneyama",password: "yoneyama")
user16= User.create(login: "misaki",password: "misaki")
user17= User.create(login: "itoga",password: "itoga")
user18= User.create(login: "haruka",password: "haruka")
user19= User.create(login: "kaito",password: "kaito")
user20= User.create(login: "nazu",password: "nazu")
user21= User.create(login: "yousuke",password: "yousuke")
user22= User.create(login: "kotoha",password: "kotoha")
user23= User.create(login: "matumoto",password: "matumoto")
user24= User.create(login: "tomoko",password: "tomoko")
user25= User.create(login: "gotyou",password: "gotyou")
user26= User.create(login: "satokai",password: "satokai")
user27= User.create(login: "takeru",password: "takeru")






Profile.create(user_id: user1.id, user_name: "しゅうと", school_id: s1.id, grade:1, club_id: c2.id, type_id:t1.id)
Profile.create(user_id: user2.id, user_name: "さほ", school_id: s1.id, grade:2, club_id: c1.id, type_id:t2.id)
Profile.create(user_id: user3.id, user_name: "まさと", school_id: s1.id, grade:3, club_id: c4.id, type_id:t1.id)
Profile.create(user_id: user4.id, user_name: "おりひめ", school_id: s2.id, grade:1, club_id: c5.id, type_id:t2.id)
Profile.create(user_id: user5.id, user_name: "こうめい", school_id: s2.id, grade:2, club_id: c3.id, type_id:t1.id)
Profile.create(user_id: user6.id, user_name: "はな", school_id: s2.id, grade:3, club_id: c6.id, type_id:t2.id)
Profile.create(user_id: user7.id, user_name: "たくみ", school_id: s3.id, grade:1, club_id: c7.id, type_id:t1.id)
Profile.create(user_id: user8.id, user_name: "あや", school_id: s3.id, grade:2, club_id: c8.id, type_id:t2.id)
Profile.create(user_id: user9.id, user_name: "りょく", school_id: s3.id, grade:3, club_id: c9.id, type_id:t1.id)
Profile.create(user_id: user10.id, user_name: "ゆう", school_id: s4.id, grade:1, club_id: c10.id, type_id:t2.id)
Profile.create(user_id: user11.id, user_name: "ふうき", school_id: s4.id, grade:2, club_id: c11.id, type_id:t1.id)
Profile.create(user_id: user12.id, user_name: "そら", school_id: s4.id, grade:3, club_id: c13.id, type_id:t2.id)
Profile.create(user_id: user13.id, user_name: "しうん", school_id: s5.id, grade:1, club_id: c12.id, type_id:t1.id)
Profile.create(user_id: user14.id, user_name: "さくら", school_id: s5.id, grade:2, club_id: c4.id, type_id:t2.id)
Profile.create(user_id: user15.id, user_name: "よねやま", school_id: s5.id, grade:3, club_id: c2.id, type_id:t1.id)
Profile.create(user_id: user16.id, user_name: "みさき", school_id: s6.id, grade:1, club_id: c4.id, type_id:t2.id)
Profile.create(user_id: user17.id, user_name: "いとが", school_id: s6.id, grade:2, club_id: c5.id, type_id:t1.id)
Profile.create(user_id: user18.id, user_name: "はるか", school_id: s6.id, grade:3, club_id: c6.id, type_id:t2.id)
Profile.create(user_id: user19.id, user_name: "かいと", school_id: s7.id, grade:1, club_id: c7.id, type_id:t1.id)
Profile.create(user_id: user20.id, user_name: "なず", school_id: s7.id, grade:2, club_id: c8.id, type_id:t2.id)
Profile.create(user_id: user21.id, user_name: "ようすけ", school_id: s7.id, grade:3, club_id: c9.id, type_id:t1.id)
Profile.create(user_id: user22.id, user_name: "ことは", school_id: s8.id, grade:1, club_id: c3.id, type_id:t2.id)
Profile.create(user_id: user23.id, user_name: "まつもと", school_id: s8.id, grade:2, club_id: c2.id, type_id:t1.id)
Profile.create(user_id: user24.id, user_name: "ともこ", school_id: s8.id, grade:3, club_id: c1.id, type_id:t2.id)
Profile.create(user_id: user25.id, user_name: "ごちょう", school_id: s1.id, grade:1, club_id: c11.id, type_id:t1.id)
Profile.create(user_id: user26.id, user_name: "さとかい", school_id: s1.id, grade:2, club_id: c10.id, type_id:t2.id)
Profile.create(user_id: user27.id, user_name: "たける", school_id: s1.id, grade:3, club_id: c12.id, type_id:t1.id)



