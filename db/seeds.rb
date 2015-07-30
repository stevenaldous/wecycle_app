Comment.create!([
  {comm: "totes", user_id: 2, post_id: nil}
])
Post.create!([
  {desc: "tennis mirrors yo!", image: "luaoo6dda6ehbsexehh9", user_id: 2},
  {desc: "Computer Mail box!", image: "er8mxbciluoiv573bpvg", user_id: 3},
  {desc: "Fun Bottle Hat/coat rack", image: "o0hl8vbkyxvnua8pj9rf", user_id: 3},
  {desc: "Globe Lamp shades!", image: "ryjxqwzuziqkdh32nu36", user_id: 3},
  {desc: "Check out my piano fountain!", image: "v9pkkzpo8pitjarveis1", user_id: 2},
  {desc: "Bookshelf out of old pipes!", image: "tkjfo4biem7orjenldf6", user_id: 2},
  {desc: "Recycle Hero!", image: "q6oswcj6sv2cx3cf3wkp", user_id: 2}
])
User.create!([
  {email: "test@gmail.com", username: "test", password_digest: "$2a$10$XhcOFUnWZunjnpqp.qXMyOxJCjYkOg6VzpMNHpYimhXM9elWO832u"},
  {email: "stevenaldous@gmail.com", username: "stevenaldous", password_digest: "$2a$10$ezApFfCq5HmDWDIlzjNpWOpOhaJ7f7.yAP2D2i8W1MS15guGtCNUu"},
  {email: "jessica.aldous08@gmail.com", username: "gloomyjune", password_digest: "$2a$10$Pys2AZaUu71G1sPoMYN6r.xKxDr2K0B1h7mEOJ2roRTT9EYNJiUpO"},
  {email: "ronald@beagle.com", username: "Ronald_the_beagle", password_digest: "$2a$10$NTgQPpq2tCCOD6Ut0BxEKuO15gmeECCtnQ2f7/VifaSl5N6JsI4ma"},
  {email: "oscar@gmail.com", username: "oscar_the_grouch", password_digest: "$2a$10$ZAuvo8cT.X8XZUi3eBv/3u2IdCuxnmr8.nWUmmwoqL.RYpooII85q"},
  {email: "banana@banana.com", username: "banana", password_digest: "$2a$10$nj8hJ2.reDWKnYj/JECrbuYBLjewleDm7ndXsIyS35SehjXCbbgP."},
  {email: "tester@mail.com", username: "tester", password_digest: "$2a$10$gjmanO5ZiSzhVPfHkaam/elcK6jQgLQalDsRx6L.VONSkyE3I/3FW"}
])
