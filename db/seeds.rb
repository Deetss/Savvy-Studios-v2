PageContent.create!([
  {PageName: "About Me", content: "Hi there, I'm Savannah and I love turning everyday moments into extraordinary memories. Photography has been a passion of mine for as long as I remember. In college, I created a fashion blog with photos I took of myself in different parts of town. Photographing and editing my blog as a hobby led to a love and passion for creating beautiful photos. I have had two sons since then, Jackson (pictured: serious) and Joshua (pictured: sassy), with my husband, Dylan (Photoshop expert/web developer/hunk). It has been such a joy, and a great source of practice, to document their everyday adventures and candid expressions in the last three years. I thoroughly enjoy creating magic for you and your loved ones. As your photographer, I will guide you with questions, activities, and suggestions so that we can capture the beautiful moments in life. Clients have described their photographs as colorful, airy, simplistic, and with a vintage feel. I can’t wait to meet you!", section: "Paragraph"}
  {PageName: "Facebook Link", content: "https://www.facebook.com/savystudiosphoto"}
  {PageName: "Instagram Link", content: "https://www.instagram.com/savystudiosphoto/"}
])

Package.create!([
  {name: "Wedding", time_frame: "As needed"},
  {name: "Super Session ", time_frame: "45 mins"},
  {name: "Mini Session ", time_frame: "45 mins"},
])
Rate.create!([
  {price: 600, description: "Congratulations!! I would be thrilled to photograph your DFW wedding. A 50% deposit and at least a two weeks notice is required to reserve the date.", package_id: 1},
  {price: 100, description: "Photoshoots in and around DFW, TX. You get to pick the date and location. No deposit is needed but at least a two weeks notice is appreciated. A $20 fee will be added if the drive is more than an hour from my home.", package_id: 2},
  {price: 80, description: "Photoshoots where I pick the date and location, typically for various holidays throughout the year. I post about mini sessions on my social media pages until the spots fill up. I love to bring props along for these!", package_id: 3},
])
Gallery.create!([
  {title: "Bump Photos", description: ""},
  {title: "Featured", description: ""},
  {title: "Family Photos", description: ""},
  {title: "Holiday Minis", description: ""},
  {title: "Wedding", description: ""}
])

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?