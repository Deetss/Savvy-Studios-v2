PageContent.create!([
  {PageName: "About Me", content: "Hey there, I am Savannah and I love turning everyday moments into extraordinary memories. Photography has been a passion of mine since high school. In college, I created a fashion blog with photos I took of myself in different parts of town. Photographing and editing my blog as a hobby led to a love and passion for creating beautiful photos. I have had two sons since then, Jackson and Joshua, with my husband, Dylan (photoshop expert/web designer/hunk). It has been such a joy, and a great source of practice, to document their everyday adventures and candid expressions in the last three years. I have thoroughly enjoyed taking my place behind the camera and creating a little bit of magic for you. As your photographer, I will guide you with questions, activities, and suggestions so together we can create and capture the everyday but beautiful moments in life. Clients have described the photographs they received as colorful, airy, simplistic, and with a vintage feel. I can’t wait to meet you!", section: "Paragraph"}
])

Package.create!([
  {name: "Super Session ", time_frame: "30 mins"},
  {name: "Wedding", time_frame: "Whole Day"}
])
Rate.create!([
  {price: 60, description: "If the location is in Fort Worth, Arlington, or Mansfield.", package_id: 2},
  {price: 80, description: "Plus $20 if the location is in another part of DFW.", package_id: 2},
  {price: 250, description: "I am currently only photographing DFW weddings.", package_id: 3}
])
Gallery.create!([
  {title: "Featured", description: ""},
  {title: "Gallery", description: ""}
])
