import 'package:assets_audio_player/assets_audio_player.dart';

List<Map<String,dynamic>> singerList = [
  {
    "id":1,
    "image":"assets/images/darshan1.png",
  },
  {
    "id":2,
    "image":"assets/images/b.png",
  },
  {
    "id":3,
    "image":"assets/images/neha.png",
  },
  {
    "id":4,
    "image":"assets/images/shreya1.png",
  },
  {
    "id":5,
    "image":"assets/images/tulsi.png",
  },
  {
    "id":6,
    "image":"assets/images/atif1.png",
  },

];


List<Map<String,dynamic>> artistList = [
  {
    "id":1,
    "image":"assets/images/arr.png",
    "name":"Arrijit Singh",
    "artist":[
      Audio.network(
        "https://pagalfree.com/musics/128-Banda%20-%20Dunki%20128%20Kbps.mp3",
        metas: Metas(
          title: "Banda",
          album: "Dunki",
          artist: "Pritam, Diljit Dosanjh, Kumaar",
          image: MetasImage.network(
              "https://pagalfree.com/images/128Banda%20-%20Dunki%20128%20Kbps.jpg"),
          extra: {
            "Lyricist": "Kumaar",
          },
        ),
      ),
      Audio.network(
        "https://pagalfree.com/musics/128-O%20Maahi%20-%20Dunki%20128%20Kbps.mp3",
        metas: Metas(
          image: MetasImage.network(
              "https://pagalfree.com/images/128O%20Maahi%20-%20Dunki%20128%20Kbps.jpg"),
          artist: "Pritam, Arijit Singh, Irshad Kamil",
          title: "O Maahi",
          album: "Dunki",
          extra: {
            "Lyricist": "Irshad Kamil",
          },
        ),
      ),
      Audio.network(
        "https://pagalfree.com/musics/128-Lutt%20Putt%20Gaya%20-%20Dunki%20128%20Kbps.mp3",
        metas: Metas(
          title: "Lutt Putt Gaya",
          album: "Dunki",
          artist: "Pritam, Arijit Singh, Swanand Kirkire, IP Singh",
          image: MetasImage.network(
              "https://pagalfree.com/images/128Lutt%20Putt%20Gaya%20-%20Dunki%20128%20Kbps.jpg"),
          extra: {
            "Lyricist": "Swanand Kirkire, IP Singh",
          },
        ),
      ),
      Audio.network(
        "https://pagalfree.com/musics/128-Ruaan%20-%20Tiger%203%20128%20Kbps.mp3",
        metas: Metas(
            title: "Ruaan",
            artist: "Pritam, Arijit Singh, Irshad Kamil",
            album: "Tiger 3",
            image: MetasImage.network(
                "https://pagalfree.com/images/128Ruaan%20-%20Tiger%203%20128%20Kbps.jpg"),
            extra: {
              "Lyricist": "Irshad Kamil",
            }
        ),
      ),
      Audio.network("https://pagalfree.com/musics/128-Satranga%20-%20Animal%20128%20Kbps.mp3",
        metas: Metas(
            image: MetasImage.network("https://pagalfree.com/images/128Satranga%20-%20Animal%20128%20Kbps.jpg"),
            album: "Animal",
            artist: "Arijit Singh, Shreyas Puranik, Siddharth-Garima",
            title: "Satranga",
            extra: {
              "Lyricist": " Siddharth-Garima",
            }
        ),
      ),
    ],
  },
  {
    "id":2,
    "image":"assets/images/atif.png",
    "name":"Atif Aslam",
    "artist":[
      Audio.network(
        "https://pagalfree.com/musics/128-Baarish%20by%20Atif%20Aslam%20-%20Half%20Girlfriend%20128%20Kbps.mp3",
        metas: Metas(
          title: "Baarish by Atif Aslam",
          album: "Half Girlfriend",
          artist: "Atif Aslam, Shashaa Tirupati",
          image: MetasImage.network(
              "https://pagalfree.com/images/128Baarish%20by%20Atif%20Aslam%20-%20Half%20Girlfriend%20128%20Kbps.jpg"),
          extra: {
            "Music By": "Tanishk Bagchi",
          },
        ),
      ),
      Audio.network("https://pagalfree.com/musics/128-Ajnabi%20-%20Atif%20Aslam%20128%20Kbps.mp3",
        metas: Metas(
          title: "Ajanabi",
          artist: "Atif Asalam",
          album: "Ajanabi",
          image: MetasImage.network("https://pagalfree.com/images/128Ajnabi%20-%20Atif%20Aslam%20128%20Kbps.jpg"),
        ),
      ),
      Audio.network("https://pagalfree.com/musics/128-Rafta%20Rafta%20-%20Atif%20Aslam%20128%20Kbps.mp3",
        metas: Metas(
          image: MetasImage.network("https://pagalfree.com/images/128Rafta%20Rafta%20-%20Atif%20Aslam%20128%20Kbps.jpg"),
          album: "Rafta Rafta",
          artist: "Atif Aslam",
          title: "Rafta Rafta",
          extra: {
            "Lyrict ":"Raj Ranjodh",
            "Music By":"Raj Ranjodh",
          },
        ),
      ),
    ]
  },
  {
    "id":3,
    "image":"assets/images/darshan1.webp",
    "name":"Darshan Rawal",
    "artist":[
      Audio.network(
        "https://pagalfree.com/musics/128-Tere%20Naal%20-%20Tulsi%20Kumar%20And%20Darshan%20Raval%20128%20Kbps.mp3",
        metas: Metas(
          title: "Tere Naal",
          artist: "Tulsi Kumar, Darshan Raval",
          album: "Tere Naal",
          image: MetasImage.network(
              "https://pagalfree.com/images/128Tere%20Naal%20-%20Tulsi%20Kumar%20And%20Darshan%20Raval%20128%20Kbps.jpg"),
        ),
      ),
      Audio.network("https://pagalfree.com/musics/128-Ek%20Ladki%20Ko%20Dekha%20Toh%20Aisa%20Laga%20-%20Title%20Track%20-%20Ek%20Ladki%20Ko%20Dekha%20Toh%20Aisa%20Laga%20128%20Kbps.mp3",
        metas: Metas(
          image: MetasImage.network("https://pagalfree.com/musics/128-Ek%20Ladki%20Ko%20Dekha%20Toh%20Aisa%20Laga%20-%20Title%20Track%20-%20Ek%20Ladki%20Ko%20Dekha%20Toh%20Aisa%20Laga%20128%20Kbps.mp3"),
          album: "Ek Ladki Ko Dekha Toh Aisa Lag",
          artist: "Darshan Raval, Rochak Kohli",
          title: "Ek Ladki Ko Dekha Toh Aisa Laga",
        ),
      ),
      Audio.network("https://pagalfree.com/musics/128-Chogada%20-%20Loveyatri%20-%20A%20Journey%20Of%20Love%20128%20Kbps.mp3",
        metas: Metas(
          title: "Chogada",
          artist: "Darshan Raval, Asees Kaur",
          album: "Loveyatri",
          image: MetasImage.network("https://pagalfree.com/images/128Chogada%20-%20Loveyatri%20-%20A%20Journey%20Of%20Love%20128%20Kbps.jpg"),
        ),
      ),
  ]
  },
  {
    "id":4,
    "image":"assets/images/shreya.png",
    "name":"Shreya Ghosal",
    "aritst":[
      Audio.network("https://pagalfree.com/musics/128-Pal%20-%20Jalebi%20128%20Kbps.mp3",
        metas: Metas(
          image: MetasImage.network("https://pagalfree.com/images/128Pal%20-%20Jalebi%20128%20Kbps.jpg"),
          album: "Jalebi",
          artist: "Javed-Mohsin, Arijit Singh, Shreya Ghoshal",
          title: "Pal",
        ),
      ),
      Audio.network("https://pagalfree.com/musics/128-Thodi%20Der%20-%20Half%20Girlfriend%20128%20Kbps.mp3",
        metas: Metas(
          title: "Thodi Der",
          artist: "Farhan Saeed, Shreya Ghoshal",
          album: "Half Girlfriend",
          image: MetasImage.network("https://pagalfree.com/images/128Thodi%20Der%20-%20Half%20Girlfriend%20128%20Kbps.jpg"),
        ),
      ),
      Audio.network("https://pagalfree.com/musics/128-Halka%20Halka%20-%20Raees%20128%20Kbps.mp3",
          metas: Metas(
            image: MetasImage.network("https://pagalfree.com/musics/128-Halka%20Halka%20-%20Raees%20128%20Kbps.mp3"),
            album: "Raees",
            artist: "Shreya Ghoshal, Sonu Nigam, Ram Sampath",
            title: "Halka Halka",
          )
      ),
    ]
  },
  {
    "id":5,
    "image":"assets/images/Tulsi1.jpg",
    "name":"Tulsi Kumar",
    "artist":[
      Audio.network(
        "https://pagalfree.com/musics/128-O%20Saki%20Saki%20-%20Batla%20House%20128%20Kbps.mp3",
        metas: Metas(
          title: "O Saki Saki",
          artist: "Neha Kakkar, Tulsi Kumar, B Praak",
          album: "Batla House",
          image: MetasImage.network(
              "https://pagalfree.com/images/128O%20Saki%20Saki%20-%20Batla%20House%20128%20Kbps.jpg"),
        ),
      ),
      Audio.network(
        "https://pagalfree.com/musics/128-Tera%20Ban%20Jaunga%20-%20Kabir%20Singh%20128%20Kbps.mp3",
        metas: Metas(
          image: MetasImage.network(
            "https://pagalfree.com/images/128Tera%20Ban%20Jaunga%20-%20Kabir%20Singh%20128%20Kbps.jpg",
          ),
          album: "Kabir Singh",
          artist: "Tulsi Kumar, Akhil Sachdeva",
          title: "Tera Ban Jaunga",
        ),
      ),
      Audio.network(
        "https://pagalfree.com/musics/128-Tu%20Laung%20Main%20Elaachi%20-%20Luka%20Chuppi%20128%20Kbps.mp3",
        metas: Metas(
          title: "Tu Laung Main Elaachi",
          artist: "Tulsi Kumar",
          album: "Luka Chuppi",
          image: MetasImage.network(
            "https://pagalfree.com/images/128Tu%20Laung%20Main%20Elaachi%20-%20Luka%20Chuppi%20128%20Kbps.jpg",
          ),
        ),
      ),
    ]
  },
  {
    "id":6,
    "image":"assets/images/neha1.png",
    "name":"Neha Kakkar",
    "artist":[
      Audio.network("https://pagalfree.com/musics/192-Lamborghini%20-%20Jai%20Mummy%20Di%20192%20Kbps.mp3",
          metas: Metas(
            image: MetasImage.network("https://pagalfree.com/images/192Lamborghini%20-%20Jai%20Mummy%20Di%20192%20Kbps.jpg"),
            album: "Jai Mummy Di",
            artist: "Jassie Gill, Neha Kakkar, Meet Bros",
            title: "Lamborghini",
          )
      ),
      Audio.network("https://pagalfree.com/musics/192-Sawan%20Mein%20Lag%20Gayi%20Aag%20-%20Ginny%20Weds%20Sunny%20192%20Kbps.mp3",
          metas: Metas(
            title: "Sawan Mein Lag Gayi Aag",
            artist: "Mika Singh, Payal Dev, Neha Kakkar, Badshah",
            album: "Ginny Weds Sunny",
            image: MetasImage.network("https://pagalfree.com/images/192Sawan%20Mein%20Lag%20Gayi%20Aag%20-%20Ginny%20Weds%20Sunny%20192%20Kbps.jpg"),
          )
      ),
      Audio.network("https://pagalfree.com/musics/128-Bheegi%20Bheegi%20-%20Neha%20Kakkar%20And%20Tony%20Kakkar%20128%20Kbps.mp3",
          metas: Metas(
            image: MetasImage.network("https://pagalfree.com/musics/128-Bheegi%20Bheegi%20-%20Neha%20Kakkar%20And%20Tony%20Kakkar%20128%20Kbps.mp3"),
            album: "Bheegi Bheegi",
            artist: "Neha Kakkar, Tony Kakkar",
            title: "Bheegi Bheegi",
          )
      ),
    ]
  },
  {
    "id":7,
    "image":"assets/images/ishita1.jpeg",
    "name":"Ishita Vishwkarma",
    "artist":[
      Audio.network(
        "https://pagalfree.com/musics/128-Mann%20Jogiya%20-%20Arijit%20Singh%20128%20Kbps.mp3",
        metas: Metas(
          title: "Mann Jogiya",
          artist: "Arijit Singh, Ishita Vishwakarma, Anique",
          album: "Mann Jogiya",
          image: MetasImage.network("https://pagalfree.com/images/128Mann%20Jogiya%20-%20Arijit%20Singh%20128%20Kbps.jpg"),
        ),
      ),
      Audio.network("https://pagalfree.com/musics/128-Meri%20Sohniya%20-%20Ishita%20Vishwakarma%20128%20Kbps.mp3",
          metas: Metas(
            image: MetasImage.network("https://pagalfree.com/images/128Meri%20Sohniya%20-%20Ishita%20Vishwakarma%20128%20Kbps.jpg"),
            album: "Meri Sohniya",
            artist: "Ishita Vishwakarma, Gireesh Thakur",
            title: "Meri Sohniya",
          )
      ),
    ]
  }
];