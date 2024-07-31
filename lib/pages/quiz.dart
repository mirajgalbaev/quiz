import 'package:quiz_1/pages/question.dart';

class Quiz {
  ///
  //soru sayısını kontrol eder
  ///
  int questionNumber = 0;

  ///
  //Soruların ve cevapların listesi
  ///
  List<Question> get questionBank => [
        Question(
          'Чагылган угулганга чейин көрүнүп турат, анткени жарык үнгө караганда ылдамыраак тарайт.',
          true,
        ),
        Question(
          'Депрессия дүйнө жүзү боюнча майыптуулуктун негизги себеби болуп саналат.',
          true,
        ),
        Question(
          'Баш сөөк адамдын денесиндеги эң күчтүү сөөк.',
          false,
        ),
        Question(
          'Сиз уктап жатканда чүчкүрө аласыз.',
          false,
        ),
        Question(
          'Көздү ачып чүчкүрүү мүмкүн эмес.',
          true,
        ),
        Question(
          'Үлүл 3 жылга чейин уктай алат.',
          true,
        ),
        Question(
          'Кока Кола дүйнөнүн бардык өлкөлөрүндө бар.',
          false,
        ),
        Question(
          'Бардык сүт эмүүчүлөр кургактыкта ​​жашашат.',
          false,
        ),
        Question(
          'Пилдин балдары 22 айда төрөлөт.',
          true,
        ),
        Question(
          'Кофе жемиштерден жасалат.',
          true,
        ),
        Question(
          'Чочко дүйнөдөгү бешинчи эң акылдуу жаныбар деп эсептелет.',
          true,
        ),
        Question(
          'Меркурийдин атмосферасы көмүр кычкыл газынан турат.',
          true,
        ),
        Question(
          'Уйду тепкичтен түшүрсө болот, бирок жогору чыгара албайсың.',
          false,
        ),
      ];

  ///
  //Көрүлгөн суроолорду өзгөртүү функциясы
  ///
  void nextQuesiton() {
    if (questionNumber < questionBank.length - 1) {
      questionNumber++;
    }
  }

  ///
  //Суроо тексттерин алуу
  ///
  String getQuestionText() {
    return questionBank[questionNumber].questionText;
  }
  ///
  //Суроолорго жооп алуу
  ///
  bool getQuestionAnswer() {
    return questionBank[questionNumber].questionAnswer;
  }
  ///
  //Суроолордун бүткөнүн же бүтпөгөнүн текшерет туура же катасын текшерет.
  ///
  bool isFinished() {
    if (questionNumber >= questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }
  ///
  //Кайра баштоо үчүн суроо номерин баштапкы абалга келтируу
  ///
  void reset() {
    questionNumber = 0;
  }
}
