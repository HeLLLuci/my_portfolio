import 'package:atlas_icons/atlas_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mustkeem/data/model/activity.dart';
import 'package:mustkeem/data/model/certificate.dart';
import 'package:mustkeem/data/model/experience.dart';
import 'package:mustkeem/data/model/project_info.dart';
import 'package:mustkeem/data/model/quote.dart';
import 'package:mustkeem/data/model/route_model.dart';
import 'package:mustkeem/data/model/showcase_project.dart';
import 'package:mustkeem/data/model/social_media.dart';
import 'package:mustkeem/presentation/configs/configs.dart';
import 'package:mustkeem/presentation/route/routes.dart';

/// constant strings are prefixed with [ks]
const String ksFontFamily = "ShantellSans";

const String ksFlutterDeveloperAnd = "Flutter Developer &";
const String ksAiMlEnthusiast = "AI/ML Enthusiast";
const String ksAiEnthusiast = "ai enthusiast";
const String ksTechNerd = "a  tech  nerd";
const String ksFlutterDev = "flutter  dev";
const String coffeeAddict = "tea addict";
const String ksIntrovert = "an introvert";
const String ksIm = "I'm";
const String ksIntro = """
  Hi, I'm Mustkeem Baraskar!
    - a passionate mobile developer
    - a BTech student from SVERI
    - an avid reader
  """;
const String ksSeeMyWork = "See my work";
const String ksBrowseProjects = "Browse My Projects";
const String ksWhatElse =
    "What else? I have freelanced on several side projects.";
const String ksSayHello = "Just say Hello to collaborate!";
const String ksHome = "Home";
const String ksAbout = "About";
const String ksExperience = "My Experience";
const String ksCertificates = "Certificates";
const String ksProject = "My Projects";
const String ksViewProject = "View Project";
const String ksCraftedWithLove = "Crafted with Love";
const String ksRecentProjects = "Here are a selection of my recent projects";
const String ksCraftedProjects =
    'Here are some of my carefully crafted projects';
const String ksContact = "Contact Me";
const String ksAboutMe = "About Me";
const String ksBgStory = "Background Story";
const String ksTools = "Tools & Technology";
const String ksAllAboutMe = "All About Me";
const String ksGithub = "Github";
const String ksLinkedIn = "LinkedIn";
const String ksDiscord = "Discord";
const String ksSendMessage = 'Send Message';

const String ksSlash = "/";
const String ksLetsWork = "Let's work together!";
const String ksFreelanceAvailability = "I'm available for Freelancing";
const String ksContactInfo = "- Contact Info";
const String ksWorkEmail = "mustkeembaraskar@gmail.com";
const String ksWorkPhone = "+91 9021706986";
const String ksBuildUsing = "Build using ";
const String ksWithMuch = " with much ";
const String ksCC = "©️ 2024 Mustkeem Baraskar";
const String ksYoung = "When I was young, I was a kid!";
const String ksNobody = "I'm NOBODY";
const String ksSpecialization =
    "I specialize in Mobile Technologies and highly passionate about developing quality applications and AI.";
const String ksWhoAmI = 'Who Am I?';
const String ksWhatILove = "What I Love To Do";
const String ksBriefAboutMe =
    "Hi! I'm a Front-end Software Engineer who is passionate about emerging Technologies and AI. I have fairly extensive amount of experience in developing high quality applications. I often work on freelance projects.";
const String ksMyLife =
    "I was a third year student from the SVERI's College of Engineering, Pandharpur, India, when i got my first Internship as Flutter Frontend Developer";
const String ksProfession =
    "I started working as a Flutter Developer since 2023. Later, I fell in love with it. I'm eager to contribute in Flutter community.";

const String ksMyTools =
    "I use a bunch of tools and technologies to make design and implementation process easier. ";
const String ksWeapon = "My favorite choice of weapon is ";
const String ksFlutter = "Flutter & Dart";

const String ksMobile = 'Mobile Technologies';
const String ksWebAndOther = 'Web & Other Technologies';
final List<String> ksMobileTech = ['Flutter', 'Dart'];
final List<String> ksWebTech = [
  'HTML',
  'CSS',
  'C',
  'Java',
];
final List<String> ksOtherTech = [
  'Firebase',
  'GraphQL',
  'REST API',
  'MongoDB',
  'SQL',
  'Python',
  'PostgreeSQL',
];

const String ksCoding = "Software Engineering";
const String ksCodingMobile = "Software\nEngineering";
const String ksCoffee = "Tea";
const String ksReading = "Reading";
const String ksMusic = "90's,00's Music";
const String ksMusicMobile = "90's,00's\nMusic";
const String ksMovie = "Movies";
const String ksExplore = "Exploring more...";
const String ksExploreMobile = "Exploring\nmore...";

final List<RouteModel> ksMenu = [
  RouteModel(label: ksHome, route: Routes.home),
  RouteModel(label: ksProject, route: Routes.projects),
  RouteModel(label: ksExperience, route: Routes.experience),
  RouteModel(label: ksCertificates, route: Routes.certificates),
  RouteModel(label: ksAbout, route: Routes.about),
  RouteModel(label: ksContact, route: Routes.contact),
];


const String ksActivities = "Activities I've joined";
final List<Activity> ksActivityList = [
  Activity(
    title: ksActivities,
    name:
        "YUKTI Innovation Challenge",
    icon: kiActivity,
    details:
        "YUKTI – National Innovation Repository (NIR) is an initiative of the Ministry of Education (MoE) Government of India and it is implemented by MoE's Innovation Cell and AICTE to build a system of repository of ideas",
  ),
  Activity(
    name:
        "AVISHKAR 2023",
    icon: kiActivity,
    details:
        "It's a Research Competition among all Universities of Maharashtra. This is a Special effort towards the participation of the talented students from rural and urban areas in such a Research Competition.",
  ),
];

final List<Experience> ksExperiences = [
  Experience(
    company: "AIE Technologies Pvt. Ltd.",
    position: "Flutter Frontend Intern",
    responsibilities: [
      "Developed and integrated animations and wireframes for new UI components, enhancing the user experience and visual appeal.",
      "Designed and implemented 10+ custom drawers tailored for diverse applications, improving navigation and functionality.",
      "Collaborated on the integration of 3D characters into the UI, contributing to a more dynamic and engaging interface.",
      "Worked closely with design teams to translate conceptual wireframes into interactive and visually consistent frontend components.",
    ],
    startDate: DateTime(2023, 4),
    endDate: DateTime(2023, 8),
  ),
  Experience(
    company: "Insta ICT Solutions Pvt. Ltd.",
    position: "Software Developer",
    responsibilities: [
      "Led a team through 3 consecutive successful projects, demonstrating strong leadership and project management skills.",
      "Developed backend architecture and authentication flow for a face recognition-based attendance application, ensuring secure and efficient user verification",
      "Generated APIs for the admin panel of the attendance project, facilitating seamless data management and user interaction.",
      "Designed and integrated APIs with the frontend for the BuildIndia real estate application, creating a responsive and user-friendly client interface.",
    ],
    startDate: DateTime(2024, 1),
    endDate: DateTime.now(),
  ),
];

final List<Certificate> ksCertificateList = [
  Certificate(
    name: "GraphQL Associate Certificate",
    image: kaGraphQLCerti,
    link: "",
  ),
  Certificate(
    name: "Deep Learning Specialization (Coursera)",
    image: kaDeepLearningCerti,
    link: "",
  ),
  Certificate(
    name: "Intermediate Python (DataCamp)",
    image: kaPythonCerti,
    link: "",
  ),
  Certificate(
    name: "JST Japan-Asia Youth Exchange Program",
    image: kaJSTCerti,
    link: "",
  ),
  Certificate(
    name: "TF SCALE Leadership Exchange Program",
    image: kaTMESEKCerti,
    link: "",
  ),
];

const String _nikolaTesla = "Nikola Tesla";
const String _kentBeck = "Kent Beck";
const String _linusTorvalds = "Linus Torvalds";
const String _donaldKnuth = "Donald Knuth";
const String _albertEinstein = "Albert Einstein";
const String _alanTuring = "Alan Turing";
const String _johnLennon = "John Lennon";
const String _steveJobs = "Steve Jobs";
const String _kurtCobain = "Kurt Cobain";
const String _jamesClear = "James Clear";
final List<Quote> ksQuotes = [
  Quote(
    name:
        "Our virtues and our failings are inseparable, like force and matter. When they separate, man is no more.",
    author: _nikolaTesla,
  ),
  Quote(
    name:
        "I’m not a great programmer. I’m just a good programmer with great habits.",
    author: _kentBeck,
  ),
  Quote(
    name: "I'm generally a very pragmatic person: that which works, works.",
    author: _linusTorvalds,
  ),
  Quote(
    name: "Premature optimization is the root of all evil.",
    author: _donaldKnuth,
  ),
  Quote(
    name:
        "Everyday life is like programming, I guess. If you love something you can put beauty into it.",
    author: _donaldKnuth,
  ),
  Quote(
    name: "A person who never made a mistake never tried anything new.",
    author: _albertEinstein,
  ),
  Quote(
    name: "I have no special talent. I am only passionately curious.",
    author: _albertEinstein,
  ),
  Quote(
    name:
        "Sometimes it is the people who no one imagines anything of who do the things that no one can imagine.",
    author: _alanTuring,
  ),
  Quote(
    name: "Life is what happens when you're busy making other plans.",
    author: _johnLennon,
  ),
  Quote(
    name: "The duty of youth is to challenge corruption.",
    author: _kurtCobain,
  ),
  Quote(
    name: "Stay hungry, stay foolish.",
    author: _steveJobs,
  ),
  Quote(
    name: "It's hard to build momentum if you're dividing your attention.",
    author: _jamesClear,
  ),
  Quote(
    name: "Deconstruction creates knowledge. Recombination creates value.",
    author: _jamesClear,
  ),
];

const String ksFacebookLink = 'https://www.facebook.com/ye.lwin.oo.someone';
const String ksGithubLink = 'https://github.com/YeLwinOo-Steve';
const String ksLinkedInLink = 'https://www.linkedin.com/in/ye-lwin-oo-ucsm/';
const String ksMediumLink = 'https://yelwino.medium.com/';
const String ksStackoverflowLink =
    'https://stackoverflow.com/users/19209151/ye-lwin-oo';
const String ksDiscordLink = 'https://discordapp.com/users/809527318632071178';
final List<SocialMedia> ksSocialMedia = [
  SocialMedia(
    link: ksFacebookLink,
    icon: FaIcon(
      FontAwesomeIcons.facebook,
      color: kSecondary,
      size: s18,
    ),
  ),
  SocialMedia(
    link: ksGithubLink,
    icon: FaIcon(
      FontAwesomeIcons.github,
      color: kSecondary,
      size: s18,
    ),
  ),
  SocialMedia(
    link: ksLinkedInLink,
    icon: FaIcon(
      FontAwesomeIcons.linkedin,
      color: kSecondary,
      size: s18,
    ),
  ),
  SocialMedia(
    link: ksMediumLink,
    icon: FaIcon(
      FontAwesomeIcons.medium,
      color: kSecondary,
      size: s18,
    ),
  ),
  SocialMedia(
    link: ksStackoverflowLink,
    icon: FaIcon(
      FontAwesomeIcons.stackOverflow,
      color: kSecondary,
      size: s18,
    ),
  ),
  SocialMedia(
    link: ksDiscordLink,
    icon: FaIcon(
      FontAwesomeIcons.discord,
      color: kSecondary,
      size: s18,
    ),
  ),
];

const String _FLUTTER = 'Flutter';
const String _DART = 'Dart';
const String _FIREBASE = 'Firebase';
const String _HTML = 'Html';
const String _CSS = 'Css';
const String _JAVASCRIPT = 'Javascript';
const String _GRAPHQL = "GraphQL";
const String _ME = 'Ye Lwin Oo';

const String _ANDROID = 'Android';
const String _IOS = 'Ios';
const String _WINDOWS = 'Windows';
const String _LINUX = 'Linux';
const String _MAC = 'MacOs';
const String _WEB = 'Web';
final List<ShowcaseProject> ksShowcaseProjects = [
  ShowcaseProject(
    title: 'Pulse-X State Management',
    image: kaPulseX,
    shortDescription:
        "Pulse-X is a state management library for Flutter projects.",
    description: """
        Pulse-X is the state management for Flutter projects. It has four features:
          - state management
          - context-less routing
          - dependency injection 
          - reaction (side effects)
        """,
    link: ProjectInfo(
      icon: kiLink,
      label: "Project Links",
      isLink: true,
      contents: [
        "https://pub.dev/packages/pulse_x",
        "https://github.com/YeLwinOo-Steve/pulse_x",
      ],
    ),
    heroTag: 'pulse-x',
    tags: ProjectInfo(
      icon: kiTag,
      label: 'Tags',
      isTag: true,
      contents: [
        'package',
        _FLUTTER.toLowerCase(),
        _DART.toLowerCase(),
        'state management',
      ],
    ),
    tech: ProjectInfo(
      icon: kiChip,
      label: 'Tools & Technologies',
      contents: [
        _FLUTTER.toUpperCase(),
        _DART.toUpperCase(),
      ],
    ),
    author: ProjectInfo(
      icon: kiPerson,
      label: 'Developer',
      contents: [
        _ME,
      ],
    ),
    platform: ProjectInfo(
      icon: kiLaptop,
      label: 'Available Platforms',
      contents: [
        _ANDROID,
        _IOS,
        _WINDOWS,
        _LINUX,
        _MAC,
      ],
    ),
  ),
  ShowcaseProject(
    title: 'Notee Personal Management App',
    image: kaNotee,
    shortDescription: "Notee is a personal management app built with Flutter",
    description: """
        Notee is a personal management app that includes four parts :
          - Note taking
          - To-Do List
          - Timer
          - Account Control
        """,
    link: ProjectInfo(
        icon: kiLink,
        label: "Project Links",
        isLink: true,
        contents: [
          "https://github.com/YeLwinOo-Steve/notee",
        ]),
    heroTag: 'notee',
    tags: ProjectInfo(
      icon: kiTag,
      label: 'Tags',
      isTag: true,
      contents: [
        'app',
        _FLUTTER.toLowerCase(),
        _DART.toLowerCase(),
        'note',
        'to-do',
        'timer',
      ],
    ),
    tech: ProjectInfo(
      icon: kiChip,
      label: 'Tools & Technologies',
      contents: [
        _FLUTTER.toUpperCase(),
        _DART.toUpperCase(),
        _FIREBASE.toUpperCase(),
      ],
    ),
    author: ProjectInfo(
      icon: kiPerson,
      label: 'Developer',
      contents: [
        _ME,
      ],
    ),
    platform: ProjectInfo(
      icon: kiLaptop,
      label: 'Available Platforms',
      contents: [
        _ANDROID,
        _IOS,
      ],
    ),
  ),
  ShowcaseProject(
    title: 'Threads Logo Animation',
    image: kaThread,
    shortDescription:
        "Animated Facebook Threads App Logo made with custom paths and painters",
    description: """
        Here, I provide you with 4 things:
          1. Two versions of animated threads logo - stroked thread logo and filled threads logo
          2. Custom Gradient slider with gradient thumb
          3. Custom Gradient Text
          4. Custom Gradient Icon Button
        """,
    link: ProjectInfo(
      icon: kiLink,
      label: "Project Links",
      isLink: true,
      contents: [
        "https://github.com/YeLwinOo-Steve/thread_logo_animation",
      ],
    ),
    heroTag: 'threads_logo',
    tags: ProjectInfo(
      icon: kiTag,
      label: 'Tags',
      isTag: true,
      contents: [
        'animation',
        _FLUTTER.toLowerCase(),
        _DART.toLowerCase(),
      ],
    ),
    tech: ProjectInfo(
      icon: kiChip,
      label: 'Tools & Technologies',
      contents: [
        _DART.toUpperCase(),
        _FLUTTER.toUpperCase(),
      ],
    ),
    author: ProjectInfo(
      icon: kiPerson,
      label: 'Developer',
      contents: [
        _ME,
      ],
    ),
    platform: ProjectInfo(
      icon: kiLaptop,
      label: 'Available Platforms',
      contents: [
        _ANDROID,
        _IOS,
        _WEB,
      ],
    ),
  ),
  ShowcaseProject(
    title: 'The Golden Land (Myanmar) ',
    image: kaTheGoldenLand,
    shortDescription:
        "The Golden Land (Myanmar) is a website for showing Myanmar's Culture.",
    description: """
        An all-in-one website that you can explore Myanmar's Traditions
        
        This is the web project showing the Culture, Cuisine, Festivals, Famous Places, Ethnic Groups and Handicrafts in Myanmar.
        Some of the data may be inaccurate because I collect most of my data on the Internet.
        """,
    link: ProjectInfo(
        icon: kiLink,
        label: "Project Links",
        isLink: true,
        contents: [
          "https://the-golden-land.vercel.app/",
          "https://github.com/YeLwinOo-Steve/TheGoldenLand",
        ]),
    heroTag: 'the-golden-land',
    tags: ProjectInfo(
      icon: kiTag,
      label: 'Tags',
      isTag: true,
      contents: [
        'website',
        _HTML.toLowerCase(),
        _CSS.toLowerCase(),
        _JAVASCRIPT.toLowerCase(),
      ],
    ),
    tech: ProjectInfo(
      icon: kiChip,
      label: 'Tools & Technologies',
      contents: [
        _HTML.toUpperCase(),
        _CSS.toUpperCase(),
        _JAVASCRIPT.toUpperCase(),
      ],
    ),
    author: ProjectInfo(
      icon: kiPerson,
      label: 'Developer',
      contents: [
        _ME,
      ],
    ),
    platform: ProjectInfo(
      icon: kiLaptop,
      label: 'Available Platforms',
      contents: [
        _WEB,
      ],
    ),
  ),
  ShowcaseProject(
    title: 'Pretty Animated Buttons',
    image: kaAnimatedButtons,
    shortDescription:
        "A collection of ready-to-use smoothly animated pretty buttons written in Flutter",
    description: """
        Pretty Animated Buttons is a package for a collection of beautiful animated buttons which are highly customizable too.
        Currently, a total of 12 animated buttons are available. More fancy buttons are coming soon...
        """,
    link: ProjectInfo(
      icon: kiLink,
      label: "Project Links",
      isLink: true,
      contents: [
        "https://pub.dev/packages/pretty_animated_buttons",
        "https://github.com/YeLwinOo-Steve/pretty_animated_buttons",
      ],
    ),
    heroTag: 'pretty_animated_buttons',
    tags: ProjectInfo(
      icon: kiTag,
      label: 'Tags',
      isTag: true,
      contents: [
        'package',
        _FLUTTER.toLowerCase(),
        _DART.toLowerCase(),
        'animation',
      ],
    ),
    tech: ProjectInfo(
      icon: kiChip,
      label: 'Tools & Technologies',
      contents: [
        _FLUTTER.toUpperCase(),
        _DART.toUpperCase(),
      ],
    ),
    author: ProjectInfo(
      icon: kiPerson,
      label: 'Developer',
      contents: [
        _ME,
      ],
    ),
    platform: ProjectInfo(
      icon: kiLaptop,
      label: 'Available Platforms',
      contents: [
        _ANDROID,
        _IOS,
        _LINUX,
        _MAC,
        _WEB,
      ],
    ),
  ),
  ShowcaseProject(
    title: 'Flappy Ironman',
    image: kaIronMan,
    shortDescription: "Flappy Ironman game inspired by Flappy Bird Game",
    description: """
        This is Flappy Ironman game inspired by Flappy Bird Game. 
        No external game engine packages are used.
        Written in Flutter ...
        """,
    link: ProjectInfo(
      icon: kiLink,
      label: "Project Links",
      isLink: true,
      contents: [
        "https://github.com/YeLwinOo-Steve/FlappyIronman",
      ],
    ),
    heroTag: 'flappy_ironman',
    tags: ProjectInfo(
      icon: kiTag,
      label: 'Tags',
      isTag: true,
      contents: [
        'game',
        _FLUTTER.toLowerCase(),
        _DART.toLowerCase(),
      ],
    ),
    tech: ProjectInfo(
      icon: kiChip,
      label: 'Tools & Technologies',
      contents: [
        _DART.toUpperCase(),
        _FLUTTER.toUpperCase(),
      ],
    ),
    author: ProjectInfo(
      icon: kiPerson,
      label: 'Developer',
      contents: [
        _ME,
      ],
    ),
    platform: ProjectInfo(
      icon: kiLaptop,
      label: 'Available Platforms',
      contents: [
        _ANDROID,
        _IOS,
      ],
    ),
  ),
  ShowcaseProject(
    title: 'AI Chat Bot',
    image: kaAIChatBot,
    shortDescription: "AI chat bot using Flutter and Dialogflow.",
    description: """
        AI chat bot using Flutter and Dialogflow.
        ⚠️ Dialogflow key is now expired so it won't work no more ...
        """,
    link: ProjectInfo(
      icon: kiLink,
      label: "Project Links",
      isLink: true,
      contents: [
        "https://github.com/YeLwinOo-Steve/AIChatbot",
      ],
    ),
    heroTag: 'ai_chat_bot',
    tags: ProjectInfo(
      icon: kiTag,
      label: 'Tags',
      isTag: true,
      contents: [
        'chat bot',
        _FLUTTER.toLowerCase(),
        _DART.toLowerCase(),
      ],
    ),
    tech: ProjectInfo(
      icon: kiChip,
      label: 'Tools & Technologies',
      contents: [
        _DART.toUpperCase(),
        _FLUTTER.toUpperCase(),
      ],
    ),
    author: ProjectInfo(
      icon: kiPerson,
      label: 'Developer',
      contents: [
        _ME,
      ],
    ),
    platform: ProjectInfo(
      icon: kiLaptop,
      label: 'Available Platforms',
      contents: [
        _ANDROID,
        _IOS,
      ],
    ),
  ),
  ShowcaseProject(
    title: 'GraphQL Notes',
    image: kaGraphQLNotes,
    shortDescription: "My Apollo graphQL Associate Certified Developer path",
    description: """
       My Apollo graphQL Associate Certified Developer path coding practice notes
       All of these notes are available at Apollo GraphQL Tutorials
        """,
    link: ProjectInfo(
      icon: kiLink,
      label: "Project Links",
      isLink: true,
      contents: [
        "https://github.com/YeLwinOo-Steve/graphql-associate-dev",
      ],
    ),
    heroTag: 'graphql_notes',
    tags: ProjectInfo(
      icon: kiTag,
      label: 'Tags',
      isTag: true,
      contents: ['GraphQL', 'note'],
    ),
    tech: ProjectInfo(
      icon: kiChip,
      label: 'Tools & Technologies',
      contents: [
        _GRAPHQL.toLowerCase(),
      ],
    ),
    author: ProjectInfo(
      icon: kiPerson,
      label: 'Developer',
      contents: [
        _ME,
      ],
    ),
    platform: ProjectInfo(
      icon: kiLaptop,
      label: 'Available Platforms',
      contents: [],
    ),
  ),
  ShowcaseProject(
    title: 'Design Patterns',
    image: kaDesignPatterns,
    shortDescription:
        "Design patterns usage with simple examples written in Dart",
    description: """
        Design patterns usage with simple examples written in Dart
        Currently, not all design patterns are available yet.
        Still developing ...
        """,
    link: ProjectInfo(
      icon: kiLink,
      label: "Project Links",
      isLink: true,
      contents: [
        "https://github.com/YeLwinOo-Steve/design_patterns",
      ],
    ),
    heroTag: 'design_patterns',
    tags: ProjectInfo(
      icon: kiTag,
      label: 'Tags',
      isTag: true,
      contents: [
        'design_patterns',
        _DART.toLowerCase(),
      ],
    ),
    tech: ProjectInfo(
      icon: kiChip,
      label: 'Tools & Technologies',
      contents: [
        _DART.toUpperCase(),
      ],
    ),
    author: ProjectInfo(
      icon: kiPerson,
      label: 'Developer',
      contents: [
        _ME,
      ],
    ),
    platform: ProjectInfo(
      icon: kiLaptop,
      label: 'Available Platforms',
      contents: [],
    ),
  ),
];
