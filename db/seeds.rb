PageContent.create!([
  {PageName: "About Me", content: "Hi there, I'm Savannah and I love turning everyday moments into extraordinary memories. Photography has been a passion of mine for as long as I remember. In college, I created a fashion blog with photos I took of myself in different parts of town. Photographing and editing my blog as a hobby led to a love and passion for creating beautiful photos. I have had two sons since then, Jackson (pictured: serious) and Joshua (pictured: sassy), with my husband, Dylan (Photoshop expert/web developer/hunk). It has been such a joy, and a great source of practice, to document their everyday adventures and candid expressions in the last three years. I thoroughly enjoy creating magic for you and your loved ones. As your photographer, I will guide you with questions, activities, and suggestions so that we can capture the beautiful moments in life. Clients have described their photographs as colorful, airy, simplistic, and with a vintage feel. I can’t wait to meet you!", section: "Paragraph"}
])

Package.create!([
  {name: "Super Session ", time_frame: "30 mins", position: 1},
  {name: "Wedding", time_frame: "Whole Day", position: 2}
])
Rate.create!([
  {price: 80, description: "In and around DFW", package_id: 1},
  {price: 500, description: "Currently only photographing DFW weddings. A 50% deposit is required to reserve the date.", package_id: 2}
])
Gallery.create!([
  {title: "Featured", description: ""},
  {title: "Bump Photos", description: ""},
  {title: "Family Photos", description: ""}
])

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?