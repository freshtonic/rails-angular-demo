brands = [
    'John Deere Tractors', 
    'Massey Ferguson Tractors', 
    'New Holland Tractors', 
    'Case IH Tractors', 
    'Ford Tractors'
]

images = (1..9).map{|n| "#{n}.jpeg"}

descriptions = [
"Bacon ipsum dolor sit amet short ribs turkey tenderloin salami. Ham ball tip meatball, spare ribs pastrami turkey shank doner ham hock. Kielbasa shoulder fatback leberkas, beef biltong sausage capicola frankfurter salami shank pork belly. Shoulder ball tip capicola tongue pork belly tri-tip, brisket t-bone sausage cow.",
"Pork chop hamburger swine spare ribs jerky, jowl rump sirloin short ribs beef drumstick pork belly meatball t-bone. Tongue shankle shoulder shank, meatloaf fatback pig swine ham flank ham hock tenderloin jerky. Ham beef andouille frankfurter pork chop. Tail kielbasa rump andouille chuck, bresaola cow prosciutto beef ribeye pork loin pancetta jerky salami. Pork loin andouille tail pig, pancetta beef boudin fatback prosciutto ground round flank turkey. Meatball ribeye turkey kielbasa leberkas, sausage andouille filet mignon.",
"Ground round pastrami strip steak, drumstick sirloin biltong ham hock pig pancetta venison shankle shank tongue meatball. Beef boudin ribeye, jerky corned beef sausage shankle drumstick rump kielbasa bacon strip steak shoulder. Sausage pancetta sirloin, hamburger bacon tri-tip pork belly short loin chicken shankle shoulder tenderloin fatback. Ribeye bacon corned beef prosciutto pork tail. Short loin hamburger pork shankle, boudin beef ribs capicola ribeye chicken doner sirloin turkey brisket pork loin.",
"Turkey pork chop hamburger, ground round jerky biltong short loin tri-tip ham sirloin fatback. Meatloaf cow pork belly shankle corned beef sirloin filet mignon strip steak brisket ball tip. Ground round brisket andouille, beef filet mignon capicola shankle. Strip steak flank jerky corned beef ground round sausage. Turkey andouille short loin beef ribs, pork loin pancetta pig meatloaf."
]

titles = descriptions.map{|d| d.split(" ").shuffle[0..5].join(" ")}

puts "window.catalogue = ["

objects = (1..100).map do
 random_title = titles.sample
 random_description = descriptions.sample
 random_images = (1..(1..4).to_a.sample).map{|n| "\"#{images.sample}\""}
 random_price = rand * 100000

 "{" +
 "title: \"#{random_title}\"," + 
 "description: \"#{random_description}\"," +
 "price: \"#{random_price}\"," +
 "images: [" +
  random_images.join(",\n") + 
 "]" +
 "}"

end

puts objects.join(", \n")

puts "];"
