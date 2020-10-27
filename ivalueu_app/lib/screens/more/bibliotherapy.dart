import 'package:flutter/cupertino.dart';

class Bibliotherapy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Bibliotherapy"),
      ),
      child: SafeArea(
        child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Center(
                    child: SizedBox(
                      width: 200,
                      child: Image.asset('assets/images/dan anthony.jpg'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Container(
                    height: 250,
                    child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Text(
                            "Hi my name is Dan, I am an author and I teach creative writing at Cardiff metropolitan University.  I specialise in writing fiction for children.  It was a pleasure to visit Deighton primary, Blaen y Cwm, Maes yr Haul and Calon y Cwmoedd.  I tried to offer each school workshop that chimed with digital aspirations of the app and the well-being agenda implicit in the idea of bibliotherapy.In the mornings I used my own books as springboards into reading and writing in single-class workshops.  My aim was to establish a rapport with young readers, emphasising our common ground: writes don’t know that publisher or readers will like their books, just as pupils don’t know how teachers will react to their work.  By reading and sharing ideas we built up a culture in which story ideas became more important than ‘mistakes’ in their realisation.  By the end of each session pupils had moved on from considering my stories to writing their own, much more interesting tales.During the afternoons, bibliotherapy book-review sessions were offered to pupils throughout the schools.  The aim here was to encourage readers of all abilities and ages to get used to discussion their thoughts on work they’d read.  As well as fiction we discussed non-fiction.Some books by Dan Anthony – The Rugby Zombies series, Steve’s Dreams series, The Bus Stop at the End of the World.")),
                  ),
                ),

              ],
            )),
      ),
    );
  }
}
