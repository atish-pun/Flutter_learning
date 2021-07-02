import 'package:flutter/material.dart';

class FruitsProperties {
  final String? name;
  final String? image;
  final Color? color;
  final String? fruitColor;
  final int? price;
  final int? id;
  final String? scientificName;
  final String? description;
  final List<String>? imageSlider;

  FruitsProperties(
      {this.name,
      this.id,
      this.image,
      this.color,
      this.price,
      this.fruitColor,
      this.description,
      this.scientificName,
      this.imageSlider});
}

// class Fruits {
//   final List<FruitsProperties> fruits;
//   Fruits(this.fruits);
// }
class Fruits {
  static final fruits = [
    FruitsProperties(
        id: 1,
        name: "Mango",
        image:
            "https://khetifood.com/image/cache/catalog/kheti_mango-500x500.jpg",
        color: Color(0xfff5e642),
        fruitColor: "Yellow",
        price: 120,
        scientificName: "Mangifera indica",
        description:
            "The mango tree is erect and branching with a thick trunk and broad, rounded canopy. ... The mango fruit is roughly oval in shape, with uneven sides. The fruit is a drupe, with an outer flesh surrounding a stone. The flesh is soft and bright yellow-orange in color. The skin of the fruit is yellow-green to red.",
        imageSlider: [
          "https://livekarts.in/wp-content/uploads/2021/05/mango.jpg",
          "http://storage.sg.content-cdn.io/cdn-cgi/image/%7Bwidth%7D,%7Bheight%7D,quality=75,format=auto,fit=cover,g=top/in-resources/075ba640-9325-4e0e-8157-cdf49e2a8909/Images/ProductImages/Source/100026173_1.jpg",
          "https://www.frunet.net/wp-content/uploads/2021/01/mango.png",
          "https://images.livemint.com/rf/Image-621x414/LiveMint/Period2/2018/05/05/Photos/Processed/mangoes1-k22F--621x414@LiveMint.jpg"
        ]),
    FruitsProperties(
        id: 2,
        name: "Apple",
        image:
            "https://ezsai.com/wp-content/uploads/2021/02/firefox_2018-07-10_07-50-11.png",
        color: Color(0xfff54242),
        scientificName: "Malus domestica",
        fruitColor: "Red",
        description:
            "The apple is a pome (fleshy) fruit, in which the ripened ovary and surrounding tissue both become fleshy and edible. ... When harvested, apples are usually roundish, 5–10 cm (2–4 inches) in diameter, and some shade of red, green, or yellow in colour; they vary in size, shape, and acidity depending on the variety.",
        imageSlider: [
          "https://cdn-a.william-reed.com/var/wrbm_gb_food_pharma/storage/images/9/3/9/8/2168939-1-eng-GB/More-than-half-of-apple-juice-samples-above-legal-patulin-limit-says-study_wrbm_large.jpg",
          "https://cdn-a.william-reed.com/var/wrbm_gb_food_pharma/storage/images/3/4/1/3/1023143-1-eng-GB/Naturex-introduces-cold-processed-100-fruit-and-vegetable-powders_wrbm_large.jpg",
          "https://businessnc.com/wp-content/uploads/2018/08/apples-getty-839461454.jpg",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLvn8_aqjxWHJY0WArKRab7WHPAQfKvWHut_b6dGb3fGjnRQ0JVpsueNOlwUk8oQxVkfOqCVI4rM4&usqp=CAU"
        ],
        price: 200),
    FruitsProperties(
        name: "Orange",
        image:
            "http://riviste.newbusinessmedia.it/wp-content/uploads/sites/27/2013/12/Fotolia_11313277_M-300x264.jpg",
        color: Color(0xfff56042),
        fruitColor: "Orange",
        scientificName: "Citrus X sinensis",
        description:
            "Oranges are round orange-coloured fruit that grow on a tree which can reach 10 metres (33 ft) high. Orange trees have dark green shiny leaves and small white flowers with five petals. The flowers smell very sweet which attracts many bees. An orange has a tough shiny orange skin.",
        imageSlider: [
          "https://stylesatlife.com/wp-content/uploads/2018/04/benefits-of-orange.jpg.webp",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTy-1P7XW35qTrAShrpoYxGu1ZTcYpXQsZf4JzsLIicnur25rfExjUJ0Wz1sTk_U6jW3tT0tnFI9V4&usqp=CAU",
          "https://previews.123rf.com/images/utima/utima1202/utima120200025/12521354-wet-orange-fruit-with-leaves-isolated-on-white.jpg",
          "https://previews.123rf.com/images/utima/utima1302/utima130200018/18022209-orange-fruit-with-leaves-isolated-on-white-background-clipping-path.jpg"
        ],
        price: 150),
    FruitsProperties(
        name: "Grape",
        image: "https://www.citycakes.com.np/wp-content/uploads/grapes.jpg",
        color: Color(0xff63a64c),
        fruitColor: "Green, Dark purple",
        scientificName: "Vitis",
        description:
            "Grapes are a type of fruit that grow in clusters of 15 to 300, and can be crimson, black, dark blue, yellow, green, orange, and pink. White grapes are actually green in color, and are evolutionarily derived from the purple grape. ... Grapes are typically an ellipsoid shape resembling a prolate spheroid.",
        imageSlider: [
          "https://image.freepik.com/free-photo/green-grape_1203-6914.jpg",
          "https://image.shutterstock.com/image-photo/blue-wet-isabella-grapes-bunch-260nw-220836805.jpg",
          "https://cf.ltkcdn.net/wine/images/std/165373-800x532r1-grapes.jpg",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7wj5KV-a45CLTyOnb-h7ObgfGymmqCiiwu2pP2nF8qTpHMNWuZddARcGuFdG6WU7KD_MQlZK2rZo&usqp=CAU"
        ],
        price: 300),
    FruitsProperties(
        name: "Banana",
        image:
            "https://media1.thehungryjpeg.com/thumbs2/ori_3738160_btc08vnoxm7ke7hbsu5f9ke37ye4gx686p6zw1qe_peeled-open-banana-isolated-on-white-background.jpg",
        color: Color(0xffede96b),
        fruitColor: "Yellow",
        scientificName: "Musa",
        description:
            "A banana is an elongated, edible fruit – botanically a berry – produced by several kinds of large herbaceous flowering plants in the genus Musa. In some countries, bananas used for cooking may be called plantains, distinguishing them from dessert bananas.",
        imageSlider: [
          "https://media.istockphoto.com/photos/peeled-banana-on-white-background-photo-with-clipping-path-picture-id1154935375?k=6&m=1154935375&s=612x612&w=0&h=fb1X6IO2RVHxNd9Lw6-oBAN3Bgh_BR-quqrCqp7QK0M=",
          "https://upload.wikimedia.org/wikipedia/commons/8/8a/Banana-Single.jpg",
          "https://cdn.mos.cms.futurecdn.net/42E9as7NaTaAi4A6JcuFwG-1200-80.jpg",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLaOJ2jAF1JTGRDUKpnN6gVkn89IZq4wWFEyZ56ZW-yVwkfK219HDWjbNym6oAQ7zPq-5ky-6m6LU&usqp=CAU"
        ],
        price: 250),
    FruitsProperties(
        name: "Lychee",
        image:
            "https://cdn.britannica.com/18/176518-050-5AB1E61D/lychee-fruits-Southeast-Asia.jpg",
        color: Color(0xfff54242),
        fruitColor: "brown, red",
        scientificName: "Litchi chinensis",
        description:
            "The lychee fruit is about 1½ to 2 inches in size, oval to rounded heart shaped and the bumpy skin is red in color. Once you peel the skin off, the crisp juicy flesh of a lychee fruit is white or pinkish, translucent and glossy like the consistency of a grape, but the taste is sweeter",
        imageSlider: [
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKjoQSPlbyG7P-yhmgFaKG88sxoPoHDYFBmA&usqp=CAU",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThdHf5xWJjssiMw6pnipxErrhNZTAUKXmAx7yYIdrvGujOBPg3cmcLbKfXpvsCdAaS0MeKqcdi1aQ&usqp=CAU",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjxi4qPtFygaVLd6W-jooPq_-La8DtNmew8cwkuHGHCC6Ak8B-HxjMOKVlhtJvs13njXGYDZyA7mg&usqp=CAU"
        ],
        price: 100),
    FruitsProperties(
        name: "Pineapple",
        image: "https://i.ndtvimg.com/mt/cooks/2014-11/pineapple-annanas.jpg",
        color: Color(0xffede96b),
        fruitColor: "Yellow",
        scientificName: "Ananas comosus",
        description:
            "Pineapple, Ananas comosus, is an herbaceous biennial or perennial plant in the family Bromeliaceae grown for its edible fruit. ... This fruit, known as a pineapple, has a tough rind made up of hexagonal units and a fibrous, juicy flesh which may be yellow to white in color.",
        imageSlider: [
          "https://5.imimg.com/data5/WT/GN/ZH/SELLER-3722283/pineapple-500x500.jpg",
          "https://st.depositphotos.com/1642482/2523/i/950/depositphotos_25238931-stock-photo-pineapple.jpg",
          "https://media.istockphoto.com/photos/whole-with-slice-ripe-pineapple-isolated-on-white-background-picture-id1064819674?k=6&m=1064819674&s=612x612&w=0&h=F3QHYLgrSlHZsLQZwCFpvYl2lUWQJOfj0SltCctiXGE="
        ],
        price: 150),
    FruitsProperties(
        name: "Watermelon",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-kcZO-2KHmmDXsBQowngZpbLKGoWYrE8o375vAmxaYZNd0okvFLN7yFNp_zHzLzI89-1gsfoO1Qc&usqp=CAU",
        color: Color(0xff2b5c3d),
        fruitColor: "Dark green",
        scientificName: "Citrullus lanatus",
        description:
            "The watermelon is a large fruit of a more or less spherical shape. ... It has an oval or spherical shape and a dark green and smooth rind, sometimes showing irregular areas of a pale green colour. It has a sweet, juicy, refreshing flesh of yellowish or reddish colour, containing multiple black, brown or white pips",
        imageSlider: [
          "https://image.shutterstock.com/image-photo/whole-half-watermelon-isolated-on-260nw-1422071948.jpg",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQyExHY2Vfan8oAheyWBrhCkIC6mQ8KAunpjaXWZCd6RBTIKjXgsU1sz9DLcldZIvfu0qh-bZqOQc&usqp=CAU",
          "https://media.istockphoto.com/photos/whole-and-slices-watermelon-with-green-leaves-isolated-on-white-picture-id1131704553?k=6&m=1131704553&s=612x612&w=0&h=42y-xnrZb6iAh4cPZmuYbGbXn_bZwmcLPK_wdFHUILg="
        ],
        price: 100),
    FruitsProperties(
        name: "Puppaya",
        image:
            "https://cdn.shopify.com/s/files/1/0206/9470/products/papaya-red-each_1024x1024.jpg?v=1592091635",
        color: Color(0xfff5e642),
        fruitColor: "Yellow, orange",
        scientificName: "Carica papaya",
        description:
            "Papaya is a tropical fruit, having oval or pear shape, measuring between 10 and 20cm and usually weighing between 500 and 1,000g, although it may even weigh up to 5kg. It is a berry of thin skin, of a green yellowish and orange colour. The pulp is of a red orange or yellow colour, sweet and very juicy.",
        imageSlider: [
          "https://cdn-prod.medicalnewstoday.com/content/images/articles/275/275517/a-papaya-cut-in-half.jpg",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRneQ2iVw7HPSANabDoHCaE4EB6IS4R3v8A0jXZTUYPUd23iBuvjgGpMbCh_nPLILOgeOzGUqfog44&usqp=CAU",
          "https://5.imimg.com/data5/SV/HB/SE/SELLER-19153449/fresh-papaya-500x500.jpg"
        ],
        price: 140),
    FruitsProperties(
        name: "Cherry",
        image:
            "https://static.libertyprim.com/files/varietes/cerise-burlat-large.jpg?1569344439",
        color: Color(0xfff54242),
        fruitColor: "Dark red",
        scientificName: "Prunus avium",
        description:
            "The fruit is a fleshy drupe (stone fruit) that is generally heart-shaped to nearly globular, about 2 cm (1 inch) in diameter, and varies in colour from yellow through red to nearly black. The acid content of the sweet cherry is low. The higher acid content of the sour cherry produces its characteristic tart flavour.",
        imageSlider: [
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuBnK9X_qf9ii1dCYwOPF09trL91KSggze6gyW8RFKTbSMsRa6PzdOZRUwWRcVHZTqPZ9L0hjqiU8&usqp=CAU",
          "https://image.shutterstock.com/image-photo/red-sweet-cherry-isolated-on-260nw-1850639713.jpg",
          "https://images-na.ssl-images-amazon.com/images/I/71PeAMtV9fL._SL1388_.jpg"
        ],
        price: 300),
    FruitsProperties(
        name: "Avocado",
        image:
            "https://cleananddelicious.com/wp-content/uploads/2016/03/Avocad0-CD.jpg",
        color: Color(0xff35613d),
        fruitColor: "Dark Green",
        scientificName: "Persea americana",
        description:
            "Avocado fruits have greenish or yellowish flesh with a buttery consistency and a rich, nutty flavour. ... They are often eaten in salads, and in many parts of the world they are eaten as a dessert. Mashed avocado is the principal ingredient of guacamole, a characteristic sauce in Mexican cuisine.",
        imageSlider: [
          "https://www.restek.com/globalassets/wp-blog-assets/avocado_1050x700.jpg",
          "https://farmerfeed.com/wp-content/uploads/2020/03/Avocado.jpg",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTe_JTuZPB46y44tYVSLBH2Z34tQhI567hVw9SRx5VCkwGQxRN29e5cUkV1jGgF1nRUaAm95SxygXY&usqp=CAU"
        ],
        price: 200),
    FruitsProperties(
        name: "Peach",
        image:
            "https://www.fadifruits.online/ecdata/stores/JJGKSR8375/image/data/products/1622188720_bekfayya.jpg",
        color: Color(0xffFFE5B4),
        fruitColor: "Red, green",
        scientificName: "Prunus persica",
        description:
            "Peach, Prunus persica, is a deciduous tree or shrub in the family Rosaceae grown for its edible fruit of the same name. ... The fruit is a velvety, soft, fleshy red to yellow-orange fruit which is oval in shape and 3-8 cm in diameter. Peach trees can grow up to 8 m (19 ft) in height and produce fruit for 10 to 20 years.",
        imageSlider: [
          "https://www.apnikheti.com/upload/crops/9517idea99peach.jpg",
          "https://img3.exportersindia.com/product_images/bc-full/2019/3/4405427/punjab-peach-1551943556-4773953.jpeg",
          "https://image.shutterstock.com/image-photo/peach-isolate-slice-leaf-on-260nw-1550458292.jpg"
        ],
        price: 150),
    FruitsProperties(
        name: "Guava",
        image:
            "https://image.freepik.com/free-photo/guava-isolated_90839-232.jpg",
        color: Color(0xff2b5c3d),
        fruitColor: "Green",
        scientificName: "Psidium guajava",
        description:
            "Guava has a slender trunk with smooth green to red-brown bark. ... Guava produces solitary white flowers and a berry fruit. The fruit is oval in shape and green to yellow in color. The flesh inside can be white, yellow, pink or red in color and contains numerous yellowish seeds.",
        imageSlider: [
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS91s73ow9AWSSlHCWYQ5T7zygPx1KVHf14dTa2BBJN8vo0Pui9lMEFZkLhkELjWCpzjBwvo-6iNK0&usqp=CAU",
          "https://image.shutterstock.com/image-photo/guava-fruit-isolated-on-white-260nw-462015139.jpg",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS485WYz6gCxR78dYMtARLIKjTFzBWiA3Gtq0b44H7M38_MPyobC70onIvavPgMvD2f9D0ftPmO6o0&usqp=CAU",
        ],
        price: 220),
    FruitsProperties(
        name: "Kiwi",
        image:
            "https://upload.wikimedia.org/wikipedia/commons/d/d3/Kiwi_aka.jpg",
        color: Color(0xff90C825),
        fruitColor: "Green brownish",
        scientificName: "Actinidia deliciosa",
        description:
            "The ellipsoidal kiwi fruit is a true berry and has furry brownish green skin. The firm translucent green flesh has numerous edible purple-black seeds embedded around a white centre. The deciduous leaves are borne alternately on long petioles (leaf stems), and young leaves are covered with reddish hairs.",
        imageSlider: [
          "http://www.frutas-hortalizas.com/img/fruites_verdures/presentacio/14.jpg",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPY-934CFHAHPQZse1QI8YnnqhvAy3JkAP8hmkosPpnNt4-Qi7L3ln3pUtxltShrP08L2fGxgpPaY&usqp=CAU",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTN7QxFbUeB_pqUrQXzobwAtL2V4VejVXLbLbeQ470aJgxxrXoTkoTeYuIk2vizUbLileuF68BFgJY&usqp=CAU",
        ],
        price: 400),
    FruitsProperties(
        name: "Pomegranate",
        image:
            "https://static.toiimg.com/thumb/msid-69940581,width-800,height-600,resizemode-75,imgsize-1620068,pt-32,y_pad-40/69940581.jpg",
        color: Color(0xffbf423d),
        fruitColor: "Dark pink",
        scientificName: "Punica granatum",
        description:
            "The fruit is the size of a large orange, obscurely six-sided, with a smooth leathery skin that ranges from brownish yellow to red; within, it is divided into several chambers containing many thin transparent arils of reddish, juicy pulp, each surrounding an angular elongated seed.",
        imageSlider: [
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaaCu5eSpbcqfPNIo-8mGaDlZga9zxhVpDO1qoadTh5FlQzMn0JOcId8qP-_76dERdkZzx2IbBusM&usqp=CAU",
          "https://images-na.ssl-images-amazon.com/images/I/815mO326PQL._SX679_.jpg",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbNnE_tBAyotdtjQZy_9GapiEFl-NRmbZVvvMgQ5Hq38g43OykXgRuGIm1YkanSJFSVKz_FlViXGY&usqp=CAU"
        ],
        price: 200),
    FruitsProperties(
        name: "Coconut",
        image:
            "https://groceries.khukuamin.com/wp-content/uploads/2021/04/3711-1.jpg",
        color: Color(0xff4f2922),
        fruitColor: "Brown",
        scientificName: "Cocos nucifera",
        description:
            "A coconut is a large, nut-like fruit that grows high in trees. Coconuts have very hard shells and sweet, white flesh inside. ... Coconuts are large brown balls that must be cut or sawed open — inside the shell is the coconut meat, and clear coconut water.",
        imageSlider: [
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGKnYYuWYMnwngD05NXRu_CUGYx7dvNBUGGOJ3Dd_7bGC0JbE4zASr_3uqdbNlrF89mFx7xsfQRlQ&usqp=CAU",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9E9VOHMxNKf3ZPfcrbXXvJ_L-pondm8SXpBcQevl8OwHq7N_QRCYETu6bQJHL2HUGpCmzkYVaxuc&usqp=CAU",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9dfn5wPYDYPWHi3hO6gffF5aDx8kmDM8ZVj3bWjsAlnjLCSTMfCc6-fc5drLY6fJm4ZNLNCNnSVo&usqp=CAU"
        ],
        price: 400),
    FruitsProperties(
        name: "Strawberry",
        image:
            "https://static.libertyprim.com/files/familles/fraise-large.jpg?1569271765",
        color: Color(0xff8a121e),
        fruitColor: "Pink",
        scientificName: "Fragaria × ananassa",
        description:
            "A strawberry is both a low-growing, flowering plant and also the name of the fruit that it produces. Strawberries are soft, sweet, bright red berries. They're also delicious. Strawberries have tiny edible seeds, which grow all over their surface. ... You can make jam, pie, strawberry shortcake, and more with strawberries.",
        imageSlider: [
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFR4BxUU5C--jlIg9K0KKVsB0LoFfQcoy8D-iuMc9XgrtPU3CTIvz5ky3rjcfpHxWBL0B2tUd7Qg8&usqp=CAU",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiqPEIRFSNzsGQWD06rfuMvLo70O5I6of6E0XoH4tehGejteaG2rcBmhXXKji-cnZSWsCTKnLJvss&usqp=CAU",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQB__O9OUnZsfrWS6VNWMc26VjlpFqvwBxIYqhq3EhuDAFO6Is455rZdY0fWjSYz6hZAp3wTz6gIG0&usqp=CAU"
        ],
        price: 300),
    FruitsProperties(
        name: "Blueberry",
        image:
            "https://hariyotarkari.com/wp-content/uploads/2020/02/Blueberry-1.jpg",
        color: Color(0xff202138),
        fruitColor: "Dark purple",
        scientificName: "Cyanococcus",
        description:
            "Blueberry is a crown forming, woody, perennial shrub in the family Ericaceae grown for its fruits, or berries, of the same name. The blueberry plant possesses oval or elliptical leaves which grow alternately on the stems. ... Berries are blue to black in color and 0.6–1.3 cm (0.25–0.5 in) in size.",
        imageSlider: [
          "https://www.thermofisher.com/blog/food/wp-content/uploads/sites/5/2015/08/blueberries__isolated_on_a_white_background.jpg",
          "https://media.spencers.in/media/catalog/product/cache/a9d6fbbff4842ff961b1348882da95e8/1/2/1286911-imported-blueberry.jpg",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEw40QVBS3keWvQw6qt6zOuMof_raZ7fb4IEM6r_kQwe2Ju5K8NQLeX_QT4FEMlq26HRPAuLf4jII&usqp=CAU"
        ],
        price: 400),
    FruitsProperties(
        name: "Apricot",
        image:
            "https://image.shutterstock.com/image-photo/apricots-apricot-isolate-slice-on-260nw-1550462033.jpg",
        color: Color(0xffc46f1f),
        fruitColor: "Dark orange",
        scientificName: "Prunus armeniaca",
        description:
            "The fruit is a drupe similar to a small peach, 1.5–2.5 cm (0.6–1.0 in) diameter (larger in some modern cultivars), from yellow to orange, often tinged red on the side most exposed to the sun; its surface can be smooth (botanically described as: glabrous) or velvety with very short hairs (botanically: pubescent).",
        imageSlider: [
          "https://static.freshtohome.com/media/catalog/product/cache/1/image/400x267/18ae109e34f485bd0b0c075abec96b2e/a/p/apricot_spain.jpg",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQW_f2EDpOFC6nf7eyhAv1lcx0ihXc7qoLBvjWTDZ75GeJsfj-aPFK8aEc9G_NX4e8hdsZ10xQIBQ8&usqp=CAU",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRG5mV068HLCnf_5NDh1ET4JTRSmB8dYzILPhzVMtbPoqp6R9KGY6xGpT-02QkMi00_vQ4-wzVwcjg&usqp=CAU"
        ],
        price: 200),
    FruitsProperties(
        name: "Fig",
        image:
            "https://static.libertyprim.com/files/familles/figue-large.jpg?1569271764",
        color: Color(0xff292233),
        fruitColor: "Purple",
        scientificName: "Ficus carica",
        description:
            "The fig plant is a bush or small tree, from 1 metre (3 feet) to 10 to 12 metres (33 to 39 feet) high, with broad, rough, deciduous leaves that are deeply lobed or sometimes nearly entire. The leaves and stems exude a white latex when broken.",
        imageSlider: [
          "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F24%2F2013%2F06%2F2121201_figs054_sdw-1.jpg",
          "https://5.imimg.com/data5/BI/PO/CX/SELLER-3722283/fig-500x500.jpg",
          "https://ainfrozen.com/wp-content/uploads/2018/03/fig.jpg"
        ],
        price: 270),
  ];
}
