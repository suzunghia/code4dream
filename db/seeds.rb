Content::HABTM_Categories.create!([
  {content_id: 1, category_id: 1}
])
Category.create!([
  {name: "root-cat", display_name: nil, lft: 1, rgt: 22},
  {name: "sub-cat-1", display_name: nil, lft: 2, rgt: 7},
  {name: "sub-cat-1-1", display_name: nil, lft: 3, rgt: 4},
  {name: "sub-cat-1-2", display_name: nil, lft: 5, rgt: 6},
  {name: "sub-cat-2", display_name: nil, lft: 8, rgt: 11},
  {name: "sub-cat-2-1", display_name: nil, lft: 9, rgt: 10},
  {name: "sub-cat-3", display_name: nil, lft: 12, rgt: 21},
  {name: "sub-cat-3-1", display_name: nil, lft: 13, rgt: 20},
  {name: "sub-cat-3-1-1", display_name: nil, lft: 14, rgt: 17},
  {name: "sub-cat-3-1-1-1", display_name: nil, lft: 15, rgt: 16},
  {name: "sub-cat-3-1-2", display_name: nil, lft: 18, rgt: 19}
])
Content.create!([
  {content_type: "article", title: "test3", body: "body for test3", author: nil, user_id: nil, permalink: "test3", state: nil, published_at: nil, body_seo: nil},
  {content_type: "article", title: "test4", body: "body for test4", author: nil, user_id: nil, permalink: "test4", state: nil, published_at: nil, body_seo: nil},
  {content_type: "article", title: "test2", body: "body for test2 body for test2 body for test2 body for test2 body for test2 body for test2 body for test2 body for test2 body for test2 body for test21 body for test2 body for test2 body for test2 body for test2 body for test2 body for test2 body for test2 body for test2 body for test2 body for test21 body for test2 body for test2 body for test2 body for test2 body for test2 body for test2 body for test2 body for test2 body for test2 body for test21 body for test2 body for test2 body for test2 body for test2 body for test2 body for test2 body for test2 body for test2 body for test2 body for test2", author: nil, user_id: nil, permalink: "test2", state: nil, published_at: nil, body_seo: nil},
  {content_type: "article", title: "test1", body: "<p>This year I’ll be offering two short tours in the fall: one to Paris and Amsterdam and one to PragOn the second Wednesday of the month, Kristin Addis from Be My Travel Muse writes a guest column featuring tips and advice on solo female travel. It’s an important topic I can’t cover so I brought in an expert to share her advice. This month her column is on safety tips, since it’s been a common question on my book tour stops. <br><br>One of the chief concerns for most would-be solo travelers is safety. Can I stay safe on my own? How can I convince my friends and family that I’ll be okay? The good news is: yes, you will be safe on the road. It’s easier than you think, because you already have the skills you need – the same methods you use to stay safe at home are relevant abroad as well.ue and</p>\n<br>\n<h3>Trust your gut instincts</h3>\n<br>\n<p>This year I’ll be offering two short tours in the fall: one to Paris and Amsterdam and one to PragOn the second Wednesday of the month, Kristin Addis from Be My Travel Muse writes a guest column featuring tips and advice on solo female travel. It’s an important topic I can’t cover so I brought in an expert to share her advice. This month her column is on safety tips, since it’s been a common question on my book tour stops. <br><br>One of the chief concerns for most would-be solo travelers is safety. Can I stay safe on my own? How can I convince my friends and family that I’ll be okay? The good news is: yes, you will be safe on the road. It’s easier than you think, because you already have the skills you need – the same methods you use to stay safe at home are relevant abroad as well.ue and</p>\n <div class=\"shortcode-tour-map\">\n<div class=\"shortcode-tour-map__map\">\n                                                \n </div>\n<div class=\"shortcode-tour-map__content\">\n                   <p>ngô trọng nghĩa</p>                             \n </div>\n</div>\n<div class=\"post-media\">\n                                    <div class=\"image-wrap\">\n                                        <img src=\"/img/2.jpg\" alt=\"\">\n                                    </div>\n                                </div>\n<p>Get on and go places! If you want to hit the most-visited spots in New York City, this is the one: CitySights NY’s Downtown Tour. You’ll get easy access to the most popular sites in town: the Statue of Liberty, the Empire State Building and “Ground Zero,” where the World Trade Center once stood and where a stunning new skyscraper soars today. Narrated by licensed NYC tour guides who know the city inside and out, this hop on/hop off excursion on a double-decker bus takes you through Greenwich Village, Little Italy, Chinatown, Wall Street and the Financial District, Battery Park City, South Street Seaport, the Lower East Side, along with Rockefeller Center, the United Nations building, Carnegie Hall, the Broadway theater district and more.</p>\n                                    ", author: nil, user_id: nil, permalink: "test1", state: nil, published_at: nil, body_seo: nil}
])
