// ignore_for_file: prefer_const_constructors

import 'package:assets_audio_player/assets_audio_player.dart';

List<Audio> radioList = [
  Audio.network(
      "https://pagalfree.com/musics/128-Banjaara%20-%20Ek%20Villain%20128%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/128Banjaara%20-%20Ek%20Villain%20128%20Kbps.jpg"),
        album: "Ek Villain",
        artist: "Mithoon, Mohammed Irfan",
        title: "Banjaara",
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Rabb%20Manneya%20-%20Koi%20Jaane%20Na%20128%20Kbps.mp3",
      metas: Metas(
        title: "Rabb Manneya",
        artist: "Lakhwinder Wadali, Neeti Mohan",
        album: "Koi Jaane Na",
        image: MetasImage.network(
            "https://pagalfree.com/images/128Rabb%20Manneya%20-%20Koi%20Jaane%20Na%20128%20Kbps.jpg"),
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Sawan%20Aaya%20Hai%20-%20Creature%203D%20128%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/128Sawan%20Aaya%20Hai%20-%20Creature%203D%20128%20Kbps.jpg"),
        album: "Creature 3D",
        artist: "Tony Kakkar, Mithoon, Arijit Singh",
        title: "Sawan Aaya Hai",
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Kabira%20-%20Yeh%20Jawaani%20Hai%20Deewani%20128%20Kbps.mp3",
      metas: Metas(
        title: "Kabira",
        artist: "Tochi Raina, Rekha Bhardwaj",
        album: "Yeh Jawaani Hai Deewani",
        image: MetasImage.network(
            "https://pagalfree.com/images/128Kabira%20-%20Yeh%20Jawaani%20Hai%20Deewani%20128%20Kbps.jpg"),
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Duniyaa%20-%20Luka%20Chuppi%20128%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/128Duniyaa%20-%20Luka%20Chuppi%20128%20Kbps.jpg"),
        album: "Luka Chuppi",
        artist: "Akhil, Dhvani Bhanushali",
        title: "Duniyaa",
      )),
  Audio.network(
    "https://pagalfree.com/musics/128-Chale%20Aana%20-%20De%20De%20Pyaar%20De%20128%20Kbps.mp3",
    metas: Metas(
      title: "Chale Aana",
      artist: "Armaan Malik",
      album: "De De Pyaar De",
      image: MetasImage.network(
          "https://pagalfree.com/images/128Chale%20Aana%20-%20De%20De%20Pyaar%20De%20128%20Kbps.jpg"),
    ),
  ),
  Audio.network(
      "https://pagalfree.com/musics/128-Saware%20-%20Phantom%20128%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/128Saware%20-%20Phantom%20128%20Kbps.jpg"),
        album: "Phantom",
        artist: "Arijit Singh, Pritam",
        title: "Saware",
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Humdard%20-%20Ek%20Villain%20128%20Kbps.mp3",
      metas: Metas(
        title: "Humdard",
        artist: "Mithoon, Arijit Singh",
        album: "Ek Villain",
        image: MetasImage.network(
            "https://pagalfree.com/images/128Humdard%20-%20Ek%20Villain%20128%20Kbps.jpg"),
      )),
  Audio.network(
    "https://pagalfree.com/musics/192-Channa%20Ve%20-%20Bhoot%20-%20Part%20One%20The%20Haunted%20Ship%20192%20Kbps.mp3",
    metas: Metas(
      image: MetasImage.network(
          "https://pagalfree.com/images/192Channa%20Ve%20-%20Bhoot%20-%20Part%20One%20The%20Haunted%20Ship%20192%20Kbps.jpg"),
      album: "Bhoot",
      artist: "Akhil Sachdeva, Mansheel Gujral",
      title: "Channa Ve",
    ),
  ),
  Audio.network(
    "https://pagalfree.com/musics/128-Tere%20Hawaale%20-%20Laal%20Singh%20Chaddha%20128%20Kbps.mp3",
    metas: Metas(
      title: "Tere Hawaale",
      artist: "Pritam, Arijit Singh, Shilpa Rao",
      album: "Laal Singh Chaddha",
      image: MetasImage.network(
          "https://pagalfree.com/images/128Tere%20Hawaale%20-%20Laal%20Singh%20Chaddha%20128%20Kbps.jpg"),
    ),
  ),
  Audio.network(
    "https://pagalfree.com/musics/128-Halka%20Halka%20-%20Fanney%20Khan%20128%20Kbps.mp3",
    metas: Metas(
      image: MetasImage.network(
          "https://pagalfree.com/images/128Halka%20Halka%20-%20Fanney%20Khan%20128%20Kbps.jpg"),
      album: "Fanney Khan",
      artist: "Divya Kumar, Sunidhi Chauhan",
      title: "Halka Halka",
    ),
  ),
  Audio.network(
    "https://pagalfree.com/musics/128-Tum%20Hi%20Ho%20-%20Aashiqui%202%20128%20Kbps.mp3",
    metas: Metas(
      title: "Tum Hi Ho",
      artist: "Arijit Singh",
      album: "Aashiqui 2",
      image: MetasImage.network(
          "https://pagalfree.com/images/128Tum%20Hi%20Ho%20-%20Aashiqui%202%20128%20Kbps.jpg"),
    ),
  ),

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
        }),
  ),
  Audio.network(
    "https://pagalfree.com/musics/128-Satranga%20-%20Animal%20128%20Kbps.mp3",
    metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/128Satranga%20-%20Animal%20128%20Kbps.jpg"),
        album: "Animal",
        artist: "Arijit Singh, Shreyas Puranik, Siddharth-Garima",
        title: "Satranga",
        extra: {
          "Lyricist": " Siddharth-Garima",
        }),
  ),
  // atif
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
  Audio.network(
    "https://pagalfree.com/musics/128-Ajnabi%20-%20Atif%20Aslam%20128%20Kbps.mp3",
    metas: Metas(
      title: "Ajanabi",
      artist: "Atif Asalam",
      album: "Ajanabi",
      image: MetasImage.network(
          "https://pagalfree.com/images/128Ajnabi%20-%20Atif%20Aslam%20128%20Kbps.jpg"),
    ),
  ),
  Audio.network(
    "https://pagalfree.com/musics/128-Pal%20-%20Jalebi%20128%20Kbps.mp3",
    metas: Metas(
      image: MetasImage.network(
          "https://pagalfree.com/images/128Pal%20-%20Jalebi%20128%20Kbps.jpg"),
      album: "Jalebi",
      artist: "Javed-Mohsin, Arijit Singh, Shreya Ghoshal",
      title: "Pal",
    ),
  ),
  Audio.network(
    "https://pagalfree.com/musics/128-Thodi%20Der%20-%20Half%20Girlfriend%20128%20Kbps.mp3",
    metas: Metas(
      title: "Thodi Der",
      artist: "Farhan Saeed, Shreya Ghoshal",
      album: "Half Girlfriend",
      image: MetasImage.network(
          "https://pagalfree.com/images/128Thodi%20Der%20-%20Half%20Girlfriend%20128%20Kbps.jpg"),
    ),
  ),
  Audio.network(
      "https://pagalfree.com/musics/128-Halka%20Halka%20-%20Raees%20128%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/128Halka%20Halka%20-%20Raees%20128%20Kbps.jpg"),
        album: "Raees",
        artist: "Shreya Ghoshal, Sonu Nigam, Ram Sampath",
        title: "Halka Halka",
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Slow%20Motion%20-%20Bharat%20128%20Kbps.mp3",
      metas: Metas(
          title: "Slow Motion",
          artist: "Nakash Aziz, Shreya Ghoshal",
          album: "Bharat",
          image: MetasImage.network(
              "https://pagalfree.com/images/128Slow%20Motion%20-%20Bharat%20128%20Kbps.jpg"))),
  Audio.network(
      "https://pagalfree.com/musics/128-Hume%20Tumse%20Pyaar%20Kitna%20-%20Female%20-%20Hume%20Tumse%20Pyaar%20Kitna%20128%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/128Hume%20Tumse%20Pyaar%20Kitna%20-%20Female%20-%20Hume%20Tumse%20Pyaar%20Kitna%20128%20Kbps.jpg"),
        album: "Hume Tumse Pyaar Kitna",
        artist: "Shreya Ghoshal",
        title: "Hume Tumse Pyaar Kitna",
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Ghar%20More%20Pardesiya%20-%20Kalank%20128%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/128Ghar%20More%20Pardesiya%20-%20Kalank%20128%20Kbps.jpg"),
        title: "Ghar More Pardesiya",
        artist: "Shreya Ghoshal",
        album: "Kalank",
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Red%20Red%20Najariya%20-%20Laal%20Kaptaan%20128%20Kbps.mp3",
      metas: Metas(
        album: "Laal Kaptaan",
        artist: "Shreya Ghoshal",
        title: "Red Red Najariya",
        image: MetasImage.network(
            "https://pagalfree.com/images/128Red%20Red%20Najariya%20-%20Laal%20Kaptaan%20128%20Kbps.jpg"),
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Sapna%20Hai%20Sach%20Hai%20-%20Panipat%20128%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/128Sapna%20Hai%20Sach%20Hai%20-%20Panipat%20128%20Kbps.jpg"),
        title: "Sapna Hai Sach Hai",
        artist: "Abhay Jodhpurkar, Shreya Ghoshal",
        album: "Panipat",
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Thodi%20Der%20-%20Half%20Girlfriend%20128%20Kbps.mp3",
      metas: Metas(
        album: "Half Girlfriend",
        artist: "Farhan Saeed, Shreya Ghoshal",
        title: "Thodi Der",
        image: MetasImage.network(
            "https://pagalfree.com/images/128Thodi%20Der%20-%20Half%20Girlfriend%20128%20Kbps.jpg"),
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Manwa%20Laage%20-%20Happy%20New%20Year%20128%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/128Manwa%20Laage%20-%20Happy%20New%20Year%20128%20Kbps.jpg"),
        title: "Manwa Laage",
        artist: "Vishal-Shekhar, Arijit Singh, Shreya Ghoshal",
        album: "Happy New Year",
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Drama%20Queen%20-%20Hasee%20Toh%20Phasee%20128%20Kbps.mp3",
      metas: Metas(
          album: "Hasee Toh Phasee",
          artist: "Vishal-Shekhar, Vishal Dadlani, Shreya Ghoshal",
          title: "Drama Queen",
          image: MetasImage.network(
              "https://pagalfree.com/images/128Drama%20Queen%20-%20Hasee%20Toh%20Phasee%20128%20Kbps.jpg"),
          extra: {"vidoe": ""})),
  Audio.network(
    "https://pagalfree.com/musics/128-Rafta%20Rafta%20-%20Atif%20Aslam%20128%20Kbps.mp3",
    metas: Metas(
      image: MetasImage.network(
          "https://pagalfree.com/images/128Rafta%20Rafta%20-%20Atif%20Aslam%20128%20Kbps.jpg"),
      album: "Rafta Rafta",
      artist: "Atif Aslam",
      title: "Rafta Rafta",
      extra: {
        "Lyrict ": "Raj Ranjodh",
        "Music By": "Raj Ranjodh",
      },
    ),
  ),
  // darshan
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
  Audio.network(
      "https://pagalfree.com/musics/128-Lagdi%20Lahore%20Di%20-%20Street%20Dancer%203D%20128%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/128Lagdi%20Lahore%20Di%20-%20Street%20Dancer%203D%20128%20Kbps.jpg"),
        title: "Lagdi Lahore Di",
        artist: "Guru Randhawa, Tulsi Kumar",
        album: "Street Dancer 3D",
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Tera%20Ban%20Jaunga%20-%20Kabir%20Singh%20128%20Kbps.mp3",
      metas: Metas(
        album: "Kabir Singh",
        artist: "Tulsi Kumar, Akhil Sachdeva",
        title: "Tera Ban Jaunga",
        image: MetasImage.network(
            "https://pagalfree.com/images/128Tera%20Ban%20Jaunga%20-%20Kabir%20Singh%20128%20Kbps.jpg"),
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Tu%20Laung%20Main%20Elaachi%20-%20Luka%20Chuppi%20128%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/128Tu%20Laung%20Main%20Elaachi%20-%20Luka%20Chuppi%20128%20Kbps.jpg"),
        title: "Tu Laung Main Elaachi",
        artist: "Tulsi Kumar",
        album: "Luka Chuppi",
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Thodi%20Jagah%20Female%20Version%20-%20Marjaavaan%20128%20Kbps.mp3",
      metas: Metas(
        album: "Marjaavaan",
        artist: "Tulsi Kumar",
        title: "Thodi Jagah Female Version",
        image: MetasImage.network(
            "https://pagalfree.com/images/128Thodi%20Jagah%20Female%20Version%20-%20Marjaavaan%20128%20Kbps.jpg"),
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Mere%20Rashke%20Qamar%20%20(2nd%20Version)-%20Baadshaho%20128%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/128Mere%20Rashke%20Qamar%20%20(2nd%20Version)-%20Baadshaho%20128%20Kbps.jpg"),
        title: "Mere Rashke Qamar",
        artist: "Tulsi Kumar",
        album: "Baadshaho",
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Soch%20Na%20Sake%20-%20Airlift%20128%20Kbps.mp3",
      metas: Metas(
        album: "Airlift",
        artist: "Arijit Singh, Tulsi Kumar, Amaal Mallik",
        title: "Soch Na Sake",
        image: MetasImage.network(
            "https://pagalfree.com/images/128Soch%20Na%20Sake%20-%20Airlift%20128%20Kbps.jpg"),
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Saiyaan%20Superstar%20-%20Ek%20Paheli%20Leela%20128%20Kbps.mp3",
      metas: Metas(
          image: MetasImage.network(
              "https://pagalfree.com/images/128Saiyaan%20Superstar%20-%20Ek%20Paheli%20Leela%20128%20Kbps.jpg"),
          title: "Saiyaan Superstar",
          artist: "Tulsi Kumar",
          album: "Ek Paheli Leela",
          extra: {
            "video": "",
          })),
  Audio.network(
      "https://pagalfree.com/musics/128-Pehle%20Pyaar%20Ka%20Pehla%20Gham%20-%20Jubin%20Nautiyal%20128%20Kbps.mp3",
      metas: Metas(
        album: "Pehle Pyaar Ka Pehla Gham",
        artist: "Tulsi Kumar, Jubin Nautiyal, Rajesh Roshan, Manan Bhardwaj",
        title: "Pehle Pyaar Ka Pehla Gham",
        image: MetasImage.network(
            "https://pagalfree.com/images/128Pehle%20Pyaar%20Ka%20Pehla%20Gham%20-%20Jubin%20Nautiyal%20128%20Kbps.jpg"),
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Is%20Qadar%20-%20Darshan%20Raval%20128%20Kbps.mp3",
      metas: Metas(
          image: MetasImage.network(
              "https://pagalfree.com/images/128Is%20Qadar%20-%20Darshan%20Raval%20128%20Kbps.jpg"),
          title: "Is Qadar",
          artist: "Tulsi Kumar, Darshan Raval, Sachet-Parampara",
          album: "Is Qadar",
          extra: {"video": ""})),
  Audio.network(
    "https://pagalfree.com/musics/128-Ek%20Ladki%20Ko%20Dekha%20Toh%20Aisa%20Laga%20-%20Title%20Track%20-%20Ek%20Ladki%20Ko%20Dekha%20Toh%20Aisa%20Laga%20128%20Kbps.mp3",
    metas: Metas(
      image: MetasImage.network(
          "https://pagalfree.com/images/128Ek%20Ladki%20Ko%20Dekha%20Toh%20Aisa%20Laga%20-%20Title%20Track%20-%20Ek%20Ladki%20Ko%20Dekha%20Toh%20Aisa%20Laga%20128%20Kbps.jpg"),
      album: "Ek Ladki Ko Dekha Toh Aisa Lag",
      artist: "Darshan Raval, Rochak Kohli",
      title: "Ek Ladki Ko Dekha Toh Aisa Laga",
    ),
  ),
  Audio.network(
    "https://pagalfree.com/musics/128-Chogada%20-%20Loveyatri%20-%20A%20Journey%20Of%20Love%20128%20Kbps.mp3",
    metas: Metas(
      title: "Chogada",
      artist: "Darshan Raval, Asees Kaur",
      album: "Loveyatri",
      image: MetasImage.network(
          "https://pagalfree.com/images/128Chogada%20-%20Loveyatri%20-%20A%20Journey%20Of%20Love%20128%20Kbps.jpg"),
    ),
  ),
  // ishita
  Audio.network(
    "https://pagalfree.com/musics/128-Mann%20Jogiya%20-%20Arijit%20Singh%20128%20Kbps.mp3",
    metas: Metas(
      title: "Mann Jogiya",
      artist: "Arijit Singh, Ishita Vishwakarma, Anique",
      album: "Mann Jogiya",
      image: MetasImage.network(
          "https://pagalfree.com/images/128Mann%20Jogiya%20-%20Arijit%20Singh%20128%20Kbps.jpg"),
    ),
  ),
  Audio.network(
      "https://pagalfree.com/musics/128-Meri%20Sohniya%20-%20Ishita%20Vishwakarma%20128%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/128Meri%20Sohniya%20-%20Ishita%20Vishwakarma%20128%20Kbps.jpg"),
        album: "Meri Sohniya",
        artist: "Ishita Vishwakarma, Gireesh Thakur",
        title: "Meri Sohniya",
      )),
  // neha
  Audio.network(
      "https://pagalfree.com/musics/192-Lamborghini%20-%20Jai%20Mummy%20Di%20192%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/192Lamborghini%20-%20Jai%20Mummy%20Di%20192%20Kbps.jpg"),
        album: "Jai Mummy Di",
        artist: "Jassie Gill, Neha Kakkar, Meet Bros",
        title: "Lamborghini",
      )),
  Audio.network(
      "https://pagalfree.com/musics/192-Sawan%20Mein%20Lag%20Gayi%20Aag%20-%20Ginny%20Weds%20Sunny%20192%20Kbps.mp3",
      metas: Metas(
        title: "Sawan Mein Lag Gayi Aag",
        artist: "Mika Singh, Payal Dev, Neha Kakkar, Badshah",
        album: "Ginny Weds Sunny",
        image: MetasImage.network(
            "https://pagalfree.com/images/192Sawan%20Mein%20Lag%20Gayi%20Aag%20-%20Ginny%20Weds%20Sunny%20192%20Kbps.jpg"),
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Bheegi%20Bheegi%20-%20Neha%20Kakkar%20And%20Tony%20Kakkar%20128%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/128Bheegi%20Bheegi%20-%20Neha%20Kakkar%20And%20Tony%20Kakkar%20128%20Kbps.jpg"),
        album: "Bheegi Bheegi",
        artist: "Neha Kakkar, Tony Kakkar",
        title: "Bheegi Bheegi",
      )),
  //shreya
  Audio.network(
    "https://pagalfree.com/musics/128-Pal%20-%20Jalebi%20128%20Kbps.mp3",
    metas: Metas(
      image: MetasImage.network(
          "https://pagalfree.com/images/128Pal%20-%20Jalebi%20128%20Kbps.jpg"),
      album: "Jalebi",
      artist: "Javed-Mohsin, Arijit Singh, Shreya Ghoshal",
      title: "Pal",
    ),
  ),
  Audio.network(
    "https://pagalfree.com/musics/128-Thodi%20Der%20-%20Half%20Girlfriend%20128%20Kbps.mp3",
    metas: Metas(
      title: "Thodi Der",
      artist: "Farhan Saeed, Shreya Ghoshal",
      album: "Half Girlfriend",
      image: MetasImage.network(
          "https://pagalfree.com/images/128Thodi%20Der%20-%20Half%20Girlfriend%20128%20Kbps.jpg"),
    ),
  ),
  Audio.network(
      "https://pagalfree.com/musics/128-Halka%20Halka%20-%20Raees%20128%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/128Halka%20Halka%20-%20Raees%20128%20Kbps.jpg"),
        album: "Raees",
        artist: "Shreya Ghoshal, Sonu Nigam, Ram Sampath",
        title: "Halka Halka",
      )),
  // tulsi
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
        }),
  ),
  Audio.network(
    "https://pagalfree.com/musics/128-Satranga%20-%20Animal%20128%20Kbps.mp3",
    metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/128Satranga%20-%20Animal%20128%20Kbps.jpg"),
        album: "Animal",
        artist: "Arijit Singh, Shreyas Puranik, Siddharth-Garima",
        title: "Satranga",
        extra: {
          "Lyricist": " Siddharth-Garima",
        }),
  ),
  Audio.network(
    "https://pagalfree.com/musics/128-Mann%20Jogiya%20-%20Arijit%20Singh%20128%20Kbps.mp3",
    metas: Metas(
      title: "Mann Jogiya",
      artist: "Arijit Singh, Ishita Vishwakarma, Anique",
      album: "Mann Jogiya",
      image: MetasImage.network(
          "https://pagalfree.com/images/128Mann%20Jogiya%20-%20Arijit%20Singh%20128%20Kbps.jpg"),
    ),
  ),
  Audio.network(
      "https://pagalfree.com/musics/128-Meri%20Sohniya%20-%20Ishita%20Vishwakarma%20128%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/128Meri%20Sohniya%20-%20Ishita%20Vishwakarma%20128%20Kbps.jpg"),
        album: "Meri Sohniya",
        artist: "Ishita Vishwakarma, Gireesh Thakur",
        title: "Meri Sohniya",
      )),
  Audio.network(
    "https://pagalfree.com/musics/192-Haan%20Main%20Galat%20-%20Love%20Aaj%20Kal%20192%20Kbps.mp3",
    metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/192Haan%20Main%20Galat%20-%20Love%20Aaj%20Kal%20192%20Kbps.jpg"),
        album: "Love Aaj Kal",
        artist: "Pritam, Arijit Singh, Shashwat Singh",
        title: "Haan Main Galat",
        extra: {
          "Music By": "Pritam",
        }),
  ),
  Audio.network(
    "https://pagalfree.com/musics/192-Haan%20Tum%20Ho%20-%20Love%20Aaj%20Kal%20192%20Kbps.mp3",
    metas: Metas(
      title: "Haan Tum Ho",
      artist: "Pritam, Arijit Singh, Shilpa Rao",
      album: "Love Aaj Kal",
      image: MetasImage.network(
          "https://pagalfree.com/images/192Haan%20Tum%20Ho%20-%20Love%20Aaj%20Kal%20192%20Kbps.jpg"),
    ),
  ),
  Audio.network(
      "https://pagalfree.com/musics/192-Shayad%20-%20Love%20Aaj%20Kal%20192%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
          "https://pagalfree.com/images/192Shayad%20-%20Love%20Aaj%20Kal%20192%20Kbps.jpg",
        ),
        album: "Love Aaj Kal",
        artist: "Pritam, Arijit Singh",
        title: "Shayad",
      )),
  Audio.network(
      "https://pagalfree.com/musics/192-Lamborghini%20-%20Jai%20Mummy%20Di%20192%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/192Lamborghini%20-%20Jai%20Mummy%20Di%20192%20Kbps.jpg"),
        album: "Jai Mummy Di",
        artist: "Jassie Gill, Neha Kakkar, Meet Bros",
        title: "Lamborghini",
      )),
  Audio.network(
      "https://pagalfree.com/musics/192-Sawan%20Mein%20Lag%20Gayi%20Aag%20-%20Ginny%20Weds%20Sunny%20192%20Kbps.mp3",
      metas: Metas(
        title: "Sawan Mein Lag Gayi Aag",
        artist: "Mika Singh, Payal Dev, Neha Kakkar, Badshah",
        album: "Ginny Weds Sunny",
        image: MetasImage.network(
            "https://pagalfree.com/images/192Sawan%20Mein%20Lag%20Gayi%20Aag%20-%20Ginny%20Weds%20Sunny%20192%20Kbps.jpg"),
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Bheegi%20Bheegi%20-%20Neha%20Kakkar%20And%20Tony%20Kakkar%20128%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/128Bheegi%20Bheegi%20-%20Neha%20Kakkar%20And%20Tony%20Kakkar%20128%20Kbps.jpg"),
        album: "Bheegi Bheegi",
        artist: "Neha Kakkar, Tony Kakkar",
        title: "Bheegi Bheegi",
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Dil%20Ko%20Karaar%20Aaya%20-%20Neha%20Kakkar%20128%20Kbps.mp3",
      metas: Metas(
        title: "Dil Ko Karaar Aaya",
        artist: "Yasser Desai, Neha Kakkar, Rajat Nagpal",
        album: "Dil Ko Karaar Aaya",
        image: MetasImage.network(
            "https://pagalfree.com/images/128Dil%20Ko%20Karaar%20Aaya%20-%20Neha%20Kakkar%20128%20Kbps.jpg"),
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Mere%20Angne%20Mein%20-%20Neha%20Kakkar%20128%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/128Mere%20Angne%20Mein%20-%20Neha%20Kakkar%20128%20Kbps.jpg"),
        album: "Mere Angne Mein",
        artist: "Neha Kakkar, Raja Hasan",
        title: "Mere Angne Mein",
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Cheez%20Badi%20-%20Machine%20128%20Kbps.mp3",
      metas: Metas(
        title: "Cheez Badi",
        artist: "Neha Kakkar, Udit Narayan",
        album: "Machine",
        image: MetasImage.network(
            "https://pagalfree.com/images/128Cheez%20Badi%20-%20Machine%20128%20Kbps.jpg"),
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-London%20Thumakda%20-%20Queen%20128%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/128London%20Thumakda%20-%20Queen%20128%20Kbps.jpg"),
        album: "Queen",
        artist: "Amit Trivedi, Neha Kakkar, Sonu Kakkar, Labh Janjua",
        title: "London Thumakda",
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Dilbar%20-%20Satyameva%20Jayate%20128%20Kbps.mp3",
      metas: Metas(
        title: "Dilbar",
        artist: "Neha Kakkar, Dhvani Bhanushali, Ikka",
        album: "Satyameva Jayate",
        image: MetasImage.network(
            "https://pagalfree.com/images/128Dilbar%20-%20Satyameva%20Jayate%20128%20Kbps.jpg"),
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Maahi%20Ve%20-%20Wajah%20Tum%20Ho%20128%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/128Maahi%20Ve%20-%20Wajah%20Tum%20Ho%20128%20Kbps.jpg"),
        album: "Wajah Tum Ho",
        artist: "Neha Kakkar",
        title: "Maahi Ve",
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Coca%20Cola%20-%20Luka%20Chuppi%20128%20Kbps.mp3",
      metas: Metas(
          image: MetasImage.network(
              "https://pagalfree.com/images/128Coca%20Cola%20-%20Luka%20Chuppi%20128%20Kbps.jpg"),
          album: "Luka Chuppi",
          artist: "Neha Kakkar, Young Desi, Tony Kakkar",
          title: "Coca Cola",
          extra: {"video": ""})),
  Audio.network(
      "https://pagalfree.com/musics/128-Khairiyat%20-%20Chhichhore%20128%20Kbps.mp3",
      metas: Metas(
        title: "Khairiyat",
        artist: "Arijit Singh",
        album: "Chhichhore",
        image: MetasImage.network(
            "https://pagalfree.com/images/128Khairiyat%20-%20Chhichhore%20128%20Kbps.jpg"),
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Heeriye%20-%20Happy%20Hardy%20And%20Heer%20128%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
          "https://pagalfree.com/images/128Heeriye%20-%20Happy%20Hardy%20And%20Heer%20128%20Kbps.jpg",
        ),
        album: "Happy Hardy And Heer",
        artist: "Arijit Singh, Shreya Ghoshal, Ritu Raj, Aishwarya Majmudar",
        title: "Heeriye",
      )),
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
  Audio.network(
    "https://pagalfree.com/musics/128-Ajnabi%20-%20Atif%20Aslam%20128%20Kbps.mp3",
    metas: Metas(
      title: "Ajanabi",
      artist: "Atif Asalam",
      album: "Ajanabi",
      image: MetasImage.network(
          "https://pagalfree.com/images/128Ajnabi%20-%20Atif%20Aslam%20128%20Kbps.jpg"),
    ),
  ),
  Audio.network(
    "https://pagalfree.com/musics/128-Rafta%20Rafta%20-%20Atif%20Aslam%20128%20Kbps.mp3",
    metas: Metas(
      image: MetasImage.network(
          "https://pagalfree.com/images/128Rafta%20Rafta%20-%20Atif%20Aslam%20128%20Kbps.jpg"),
      album: "Rafta Rafta",
      artist: "Atif Aslam",
      title: "Rafta Rafta",
      extra: {
        "Lyrict ": "Raj Ranjodh",
        "Music By": "Raj Ranjodh",
      },
    ),
  ),
  Audio.network(
      "https://pagalfree.com/musics/128-Dekhte%20Dekhte%20-%20Batti%20Gul%20Meter%20Chalu%20128%20Kbps.mp3",
      metas: Metas(
        title: "Dekhte Dekhte",
        artist: "Atif Aslam",
        album: "Batti Gul Meter Chalu",
        image: MetasImage.network(
            "https://pagalfree.com/images/128Dekhte%20Dekhte%20-%20Batti%20Gul%20Meter%20Chalu%20128%20Kbps.jpg"),
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Dil%20Meri%20Na%20Sune%20-%20Genius%20128%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/128Dil%20Meri%20Na%20Sune%20-%20Genius%20128%20Kbps.jpg"),
        album: "Genius",
        artist: "Atif Aslam",
        title: "Dil Meri Na Sune",
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Paniyon%20Sa%20-%20Satyameva%20Jayate%20128%20Kbps.mp3",
      metas: Metas(
        title: "Paniyon Sa",
        artist: "Tulsi Kumar, Atif Aslam",
        album: "Satyameva Jayate",
        image: MetasImage.network(
            "https://pagalfree.com/images/128Paniyon%20Sa%20-%20Satyameva%20Jayate%20128%20Kbps.jpg"),
      )),
  Audio.network(
    "https://pagalfree.com/musics/128-Dil%20Diyan%20Gallan%20-%20Tiger%20Zinda%20Hai%20128%20Kbps.mp3",
    metas: Metas(
      image: MetasImage.network(
          "https://pagalfree.com/images/128Dil%20Diyan%20Gallan%20-%20Tiger%20Zinda%20Hai%20128%20Kbps.jpg"),
      album: "Tiger Zinda Hai",
      artist: "Atif Aslam",
      title: "Dil Diyan Gallan",
    ),
  ),
  Audio.network(
      "https://pagalfree.com/musics/128-Tere%20Sang%20Yaara%20-%20Rustom%20128%20Kbps.mp3",
      metas: Metas(
        title: "Tere Sang Yaara",
        artist: "Atif Aslam",
        album: "Rustom",
        image: MetasImage.network(
            "https://pagalfree.com/images/128Tere%20Sang%20Yaara%20-%20Rustom%20128%20Kbps.jpg"),
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Main%20Rang%20Sharbaton%20Ka%20-%20Phata%20Poster%20Nikhla%20Hero%20128%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/128Main%20Rang%20Sharbaton%20Ka%20-%20Phata%20Poster%20Nikhla%20Hero%20128%20Kbps.jpg"),
        album: "Phata Poster Nikhla Hero",
        artist: "Atif Aslam, Chinmayi Sripada",
        title: "Main Rang Sharbaton Ka",
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Jeene%20Laga%20Hoon%20-%20Ramaiya%20Vastavaiya%20128%20Kbps.mp3",
      metas: Metas(
        title: "Jeene Laga Hoon",
        artist: "Atif Aslam, Shreya Ghoshal",
        album: "Ramaiya Vastavaiya",
        image: MetasImage.network(
            "https://pagalfree.com/images/128Jeene%20Laga%20Hoon%20-%20Ramaiya%20Vastavaiya%20128%20Kbps.jpg"),
      )),
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
  Audio.network(
    "https://pagalfree.com/musics/128-Ek%20Ladki%20Ko%20Dekha%20Toh%20Aisa%20Laga%20-%20Title%20Track%20-%20Ek%20Ladki%20Ko%20Dekha%20Toh%20Aisa%20Laga%20128%20Kbps.mp3",
    metas: Metas(
      image: MetasImage.network(
          "https://pagalfree.com/images/128Ek%20Ladki%20Ko%20Dekha%20Toh%20Aisa%20Laga%20-%20Title%20Track%20-%20Ek%20Ladki%20Ko%20Dekha%20Toh%20Aisa%20Laga%20128%20Kbps.jpg"),
      album: "Ek Ladki Ko Dekha Toh Aisa Lag",
      artist: "Darshan Raval, Rochak Kohli",
      title: "Ek Ladki Ko Dekha Toh Aisa Laga",
    ),
  ),
  Audio.network(
    "https://pagalfree.com/musics/128-Chogada%20-%20Loveyatri%20-%20A%20Journey%20Of%20Love%20128%20Kbps.mp3",
    metas: Metas(
      title: "Chogada",
      artist: "Darshan Raval, Asees Kaur",
      album: "Loveyatri",
      image: MetasImage.network(
          "https://pagalfree.com/images/128Chogada%20-%20Loveyatri%20-%20A%20Journey%20Of%20Love%20128%20Kbps.jpg"),
    ),
  ),
  Audio.network(
      "https://pagalfree.com/musics/128-Kamariya%20-%20Mitron%20128%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/128Kamariya%20-%20Mitron%20128%20Kbps.jpg"),
        album: "Mitron",
        artist: "Lijo George, Dj Chetas, Darshan Raval",
        title: "Kamariya",
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Sanedo%20-%20Mitron%20128%20Kbps.mp3",
      metas: Metas(
        title: "Sanedo",
        artist: "Tanishk Bagchi, Vayu, Darshan Raval, Raja Hasan",
        album: "Mitron",
        image: MetasImage.network(
            "https://pagalfree.com/images/128Sanedo%20-%20Mitron%20128%20Kbps.jpg"),
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Kheech%20Meri%20Photo%20-%20Sanam%20Teri%20Kasam%20128%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/128Kheech%20Meri%20Photo%20-%20Sanam%20Teri%20Kasam%20128%20Kbps.jpg"),
        album: "Sanam Teri Kasam",
        artist: "Neeti Mohan, AKASA, Darshan Raval, Himesh Reshammiya",
        title: "Kheech Meri Photo",
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Is%20Qadar%20-%20Darshan%20Raval%20128%20Kbps.mp3",
      metas: Metas(
        title: "Is Qadar",
        artist: "Tulsi Kumar, Darshan Raval, Sachet-Parampara",
        album: "Is Qadar",
        image: MetasImage.network(
            "https://pagalfree.com/images/128Is%20Qadar%20-%20Darshan%20Raval%20128%20Kbps.jpg"),
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Jannat%20Ve%20-%20Darshan%20Raval%20128%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/128Jannat%20Ve%20-%20Darshan%20Raval%20128%20Kbps.jpg"),
        album: "Jannat Ve",
        artist: "Darshan Raval",
        title: "Jannat Ve",
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Baarish%20Lete%20Aana%20-%20Darshan%20Raval%20128%20Kbps.mp3",
      metas: Metas(
        title: "Baarish Lete Aana",
        artist: "Darshan Raval",
        album: "Baarish Lete Aana",
        image: MetasImage.network(
            "https://pagalfree.com/images/128Baarish%20Lete%20Aana%20-%20Darshan%20Raval%20128%20Kbps.jpg"),
      )),
  Audio.network(
      "https://pagalfree.com/musics/128-Dhol%20Bajaa%20-%20Darshan%20Raval%20128%20Kbps.mp3",
      metas: Metas(
        image: MetasImage.network(
            "https://pagalfree.com/images/128Dhol%20Bajaa%20-%20Darshan%20Raval%20128%20Kbps.jpg"),
        album: "Dhol Bajaa",
        artist: "Darshan Raval, Prakriti Giri, Javed-Mohsin",
        title: "Dhol Bajaa",
      ))
];
