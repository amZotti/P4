User.destroy_all

User.create!([{
  email: "zombifyYourMom@brains.eu",
  location: "Zombie London",
  url: "http://i.ytimg.com/vi/UB5-Tst0wik/hqdefault.jpg",
  password_digest: "ewfewfewf"
},
{
  email: "doesNOTtasteLikeBrains@brains.eu",
  location: "Zombie London",
  url: "http://i.vimeocdn.com/video/439873851_1280x720.jpg",
  password_digest: "r32r2fffff"

},
{
  email: "EuroZomb521@brains.eu",
  location: "Zombie Europe",
  url: "https://zombiegames01.files.wordpress.com/2010/11/dead_state_render_18.jpg",
  password_digest: "3f32f32f32r3232"
}])
