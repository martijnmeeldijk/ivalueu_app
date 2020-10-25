import 'video.dart';

class VideosRepository {
  static const _allVideos = <Video>[
    Video(
        name: "Dilys and Lauren",
        category: VideoCategory.emotional1,
        location: Location.indoors,
        url: "https://youtu.be/KB6CYtpNNEc",
        id: "E1-1",
        icon: "Ysgol Gynradd logo"
        ),
    Video(
        name: "Megan and Alex",
        category: VideoCategory.emotional1,
        location: Location.indoors,
        url: "https://youtu.be/7mn9U6pQ8l4",
        id: "E1-2",
        icon: "Ysgol Gynradd logo"),
    Video(
        name: "Jayden, Iestyn and Deacon",
        category: VideoCategory.emotional1,
        location: Location.indoors,
        url: "https://youtu.be/YDxchDv6LI8",
        id: "E1-3",
        icon: "Ysgol Gynradd logo"),
    Video(
        name: "Cianna and Macy",
        category: VideoCategory.emotional1,
        location: Location.indoors,
        url: "https://youtu.be/75Zt4H4S9ks",
        id: "E1-4",
        icon: "Ysgol Gynradd logo"),
    Video(
        name: "Theo and Evie",
        category: VideoCategory.emotional2,
        location: Location.indoors,
        url: "https://youtu.be/qxb6EMwq8UQ",
        id: "E2-1",
        icon: "Maes yr haul logo"),
    Video(
        name: "Jasmine and Maddison",
        category: VideoCategory.emotional2,
        location: Location.indoors,
        url: "https://youtu.be/-iLTNl8REIs",
        id: "E2-2",
        icon: "Maes yr haul logo"),
    Video(
        name: "Sophie and Phoebe",
        category: VideoCategory.emotional2,
        location: Location.indoors,
        url: "https://youtu.be/ZaCtsmuZVA4",
        id: "E2-3",
        icon: "Maes yr haul logo"),
    Video(
        name: "Harry, Calla and Ashton",
        category: VideoCategory.emotional2,
        location: Location.outdoors,
        url: "https://youtu.be/xWMDRBVzxYQ",
        id: "E2-4",
        icon: "Maes yr haul logo"),
    Video(
        name: "Ellie and Harley",
        category: VideoCategory.emotional3,
        location: Location.outdoors,
        url: "https://youtu.be/888eyVvQY50",
        id: "E3-1",
        icon: "Deighton school logo"),
    Video(
        name: "Isabelle and Layla",
        category: VideoCategory.emotional3,
        location: Location.outdoors,
        url: "https://youtu.be/xyklkqbopDY",
        id: "E3-2",
        icon: "Deighton school logo"),
    Video(
        name: "Olivia and Summer",
        category: VideoCategory.emotional3,
        location: Location.indoors,
        url: "https://youtu.be/MQQSBqsBE9c",
        id: "E3-3",
        icon: "Deighton school logo"),
    Video(
        name: "Kason and Kan",
        category: VideoCategory.emotional3,
        location: Location.outdoors,
        url: "https://youtu.be/IwvtEBI8xik",
        id: "E3-4",
        icon: "Deighton school logo"),
    Video(
        name: "Gracie and Sarah",
        category: VideoCategory.emotional3,
        location: Location.outdoors,
        url: "https://youtu.be/pd1Gq9PqoGk",
        id: "E3-5",
        icon: "Deighton school logo"),
    Video(
        name: "Maddie and Nevie",
        category: VideoCategory.emotional4,
        location: Location.outdoors,
        url: "https://youtu.be/QWSWluskpbM",
        id: "E4-1",
        icon: "Blaenycwn school logo"),
    Video(
        name: "Tyler and Bethany",
        category: VideoCategory.emotional4,
        location: Location.indoors,
        url: "https://youtu.be/04SGYB1lrFE",
        id: "E4-2",
        icon: "Blaenycwn school logo"),
    Video(
        name: "Duy and Callum",
        category: VideoCategory.emotional4,
        location: Location.indoors,
        url: "https://youtu.be/019r08HyrQo",
        id: "E4-3",
        icon: "Blaenycwn school logo"),
    Video(
        name: "Grace and Ellie",
        category: VideoCategory.emotional4,
        location: Location.outdoors,
        url: "https://youtu.be/82f0kVf_maQ",
        id: "E4-4",
        icon: "Blaenycwn school logo"),
    Video(
        name: "Jessica and Tina",
        category: VideoCategory.emotional4,
        location: Location.outdoors,
        url: "https://youtu.be/Aq3aQwdz8JA",
        id: "E4-5",
        icon: "Blaenycwn school logo"),
    Video(
        name: "Meditation Animation",
        category: VideoCategory.emotional1,
        location: Location.indoors,
        url: "https://youtu.be/KB6CYtpNNEc",
        id: "meditation_animation",
        icon: "Meditation"),
    Video(
        name: "HITT Tutorial",
        category: VideoCategory.physical,
        location: Location.indoors,
        url: "https://youtu.be/s7ABZA199rY",
        id: "P1",
        icon: "Ysgol Gynradd logo"),
    Video(
        name: "Yoga Tutorial 1",
        category: VideoCategory.physical,
        location: Location.indoors,
        url: "https://youtu.be/8wwXmG5rvqE",
        id: "P2",
        icon: "Maes yr haul logo"),
    Video(
        name: "Yoga Tutorial 2",
        category: VideoCategory.physical,
        location: Location.indoors,
        url: "https://youtu.be/OJasZcwsQGU",
        id: "P3",
        icon: "Deighton school logo"),
    Video(
        name: "Yoga Tutorial 3",
        category: VideoCategory.physical,
        location: Location.outdoors,
        url: "https://youtu.be/5M9-ZJDr4p8",
        id: "P4",
        icon: "Blaenycwn school logo"),
  ];

  static List<Video> loadVideos(VideoCategory category) {
    return _allVideos.where((p) => p.category == category).toList();
  }
}

class EmotionalGroupRepository {
  static const _allGroups = <EmotionalGroup>[
    EmotionalGroup(
        name: "Meddwl iach trwy tapio m...", category: VideoCategory.emotional1, icon: "Ysgol Gynradd logo"),
    EmotionalGroup(
        name: "Picking out the Positives", category: VideoCategory.emotional2, icon: "Maes yr haul logo"),
    EmotionalGroup(
        name: "Deighton Destress Tool", category: VideoCategory.emotional3, icon: "Deighton school logo"),
    EmotionalGroup(
        name: "Blaencycwm Breathing Buddies",
        category: VideoCategory.emotional4,
        icon: "Blaenycwn school logo"
    ),
    EmotionalGroup(
        name: "Meditation Animation", category: VideoCategory.emotional1, icon: "Meditation"),
  ];
  static List<EmotionalGroup> loadGroups() {
    return _allGroups.toList();
  }
}
