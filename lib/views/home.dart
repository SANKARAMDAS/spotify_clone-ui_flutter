import 'package:flutter/material.dart';
import 'package:spotify_clone/views/album_view.dart';

import '../widgets/album_card.dart';
import '../widgets/song_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.6,
            decoration: BoxDecoration(
              color: Color(0xFf1C7A74),
            ),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.black.withOpacity(0),
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(1),
                  Colors.black.withOpacity(1),
                  Colors.black.withOpacity(1),
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Recently Played',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Row(
                            children: [
                              Icon(Icons.history),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(Icons.settings),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          AlbumCard(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AlbumView(image: AssetImage("assets/album3.jpg"),),
                                ),
                              );
                            },
                            label: "Best Mode",
                            image: AssetImage("assets/album3.jpg"),
                          ),
                          SizedBox(width: 16.0),
                          AlbumCard(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AlbumView(image: AssetImage("assets/album3.jpg"),),
                                ),
                              );
                            },
                            label: "Relax Mode",
                            image: AssetImage("assets/album.jpg"),
                          ),
                          SizedBox(width: 16.0),
                          AlbumCard(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AlbumView(image: AssetImage("assets/album3.jpg"),),
                                ),
                              );
                            },
                            label: "Motivation",
                            image: AssetImage("assets/album5.jpg"),
                          ),
                          SizedBox(width: 16.0),
                          AlbumCard(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AlbumView(image: AssetImage("assets/album3.jpg"),),
                                ),
                              );
                            },
                            label: "Hip-Hop",
                            image: AssetImage("assets/album14.jpg"),
                          ),
                          SizedBox(width: 16.0),
                          AlbumCard(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AlbumView(image: AssetImage("assets/album3.jpg"),),
                                ),
                              );
                            },
                            label: "Bed Time",
                            image: AssetImage("assets/album2.jpg"),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Good Evening",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RowAlbumCard(
                                label: "Top 50- Global",
                                image: AssetImage("assets/album15.jpg"),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              RowAlbumCard(
                                label: "Lo-fi",
                                image: AssetImage("assets/album13.jpg"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RowAlbumCard(
                                label: "Podcast",
                                image: AssetImage("assets/album9.jpg"),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              RowAlbumCard(
                                label: "Just Hits",
                                image: AssetImage("assets/album5.jpg"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RowAlbumCard(
                                label: "On Repeat",
                                image: AssetImage("assets/album4.jpg"),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              RowAlbumCard(
                                label: "Happy Mix",
                                image: AssetImage("assets/album11.jpg"),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "Based on your recent listening",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.0,
                          ),
                          physics: BouncingScrollPhysics(),
                          child: Row(
                            children: [
                              SongCard(
                                image: AssetImage('assets/album7.jpg'),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(image: AssetImage('assets/album6.jpg')),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(image: AssetImage('assets/album8.jpg')),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(image: AssetImage('assets/album10.jpg')),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(image: AssetImage('assets/album13.jpg')),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(image: AssetImage('assets/album12.jpg')),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "Recommended Radio",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.0,
                          ),
                          physics: BouncingScrollPhysics(),
                          child: Row(
                            children: [
                              SongCard(
                                image: AssetImage('assets/album2.jpg'),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(image: AssetImage('assets/album5.jpg')),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(image: AssetImage('assets/album9.jpg')),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(image: AssetImage('assets/album11.jpg')),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(image: AssetImage('assets/album12.jpg')),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(image: AssetImage('assets/album14.jpg')),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RowAlbumCard extends StatelessWidget {
  final AssetImage image;
  final String label;
  const RowAlbumCard({
    Key? key,
    required this.label,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(4),
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            Image(
              image: image,
              height: 48,
              width: 48,
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: 8,
            ),
            Text(label),
          ],
        ),
      ),
    );
  }
}
