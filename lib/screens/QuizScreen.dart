import 'package:flutter/material.dart';
import 'result.dart';
import 'quiz.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _QuizScreenState();
  }
}

class _QuizScreenState extends State<QuizScreen> {

  final _questions = const [
    {
      'questionText': '1. What is your budget for this present?',
      'answers': [
        {'text': '\$100 or more', 'score': 0},
        {'text': 'Under \$10', 'score': 0},
        {'text': '\$50-\$100', 'score': 0},
        {'text': '\$10-\$20', 'score': 0},
        {'text': '\$20-\$30', 'score': 0},
      ]
    },

    {
      'questionText': '2. How close is your relationship to this person?',
      'answers': [
        {'text': 'We get together every now and then.', 'score': 0},
        {
          'text': 'Facebook friends, but don’t talk in the real world.',
          'score': 0
        },
        {
          'text': 'We see each other daily, but only because we spend a lot of time in the same place.',
          'score': 0
        },
        {'text': 'Talk on the phone every day.', 'score': 0},
        {'text': 'We see each other every day by choice.', 'score': 0},
      ]
    },

    {
      'questionText': '3. This person (your gift recipient) has a free afternoon. Which activity are they choosing?',
      'answers': [
        {'text': 'Go out to eat', 'score': 10},
        {'text': 'Play a round of golf', 'score': 20},
        {'text': 'Head to the library', 'score': 30},
        {'text': 'Go shopping', 'score': 40},
        {'text': 'Play video games', 'score': 50},
      ]
    },

    {
      'questionText': '4. This person needs to buy a new outfit, where do they look first?',
      'answers': [
        {'text': 'Online', 'score': 0},
        {'text': 'In a catalog', 'score': 0},
        {'text': 'Big name retailer', 'score': 0},
        {'text': 'Thrift shop', 'score': 0},
        {'text': 'Specialty Store', 'score': 0},
      ]
    },

    {
      'questionText': '5. Which animal would this person like best as a pet?',
      'answers': [
        {'text': 'Pig', 'score': 0},
        {'text': 'Cat', 'score': 0},
        {'text': 'Bulldog', 'score': 0},
        {'text': 'Badger', 'score': 0},
        {'text': 'Dragon', 'score': 0},
      ]
    },

    {
      'questionText': '6. What is this person’s favorite movie or entertainment genre?',
      'answers': [
        {'text': 'Animated', 'score': 0},
        {'text': 'Horror', 'score': 0},
        {'text': 'Action', 'score': 0},
        {'text': 'Documentary', 'score': 0},
        {'text': 'Romance', 'score': 0},
      ]
    },

    {
      'questionText': '7. How long does it typically take this person to get ready for a night out?',
      'answers': [
        {'text': '30 Minutes', 'score': 0},
        {'text': 'I’m not sure', 'score': 0},
        {'text': 'Over an hour', 'score': 0},
        {'text': 'Days (outfit planning)', 'score': 0},
        {'text': 'Less than ~5 minutes', 'score': 0},
      ]
    },

    {
      'questionText': '8. What is this person’s favorite drink?',
      'answers': [
        {'text': 'Energy drink', 'score': 0},
        {'text': 'Wine', 'score': 0},
        {'text': 'Gatorade', 'score': 0},
        {'text': 'Water', 'score': 0},
        {'text': 'Tea', 'score': 0},
        {'text': 'Craft beer', 'score': 0},
      ]
    },

    {
      'questionText': '9. How much time does this person spend on recreational activities?',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'A few hours per month', 'score': 0},
        {'text': '3-5 hours per week', 'score': 0},
        {'text': 'All of their free time', 'score': 0},
        {'text': '2-3 days per week', 'score': 0},
        {'text': 'About an hour each week', 'score': 0},
      ]
    },

    {
      'questionText': '10. Which type of restaurant does this person prefer?',
      'answers': [
        {'text': 'Family Dining', 'score': 0},
        {'text': 'Fast Food', 'score': 0},
        {'text': 'Healthy Foods', 'score': 0},
        {'text': 'Diverse Cultural Cuisines', 'score': 0},
        {'text': 'Fine Dining', 'score': 0},
      ]
    },

    {
      'questionText': '11. Which of these color options do you think this person would like the best?',
      'answers': [
        {'text': 'Brown', 'score': 0},
        {'text': 'I’m not sure', 'score': 0},
        {'text': 'Black', 'score': 0},
        {'text': 'Pink', 'score': 0},
        {'text': 'Blue', 'score': 0},
        {'text': 'Red', 'score': 0},
      ]
    },

    {
      'questionText': '12. How do you plan to deliver the gift?',
      'answers': [
        {'text': 'Via mail or package delivery service', 'score': 0},
        {'text': 'As a special delivery to their work/school', 'score': 0},
        {'text': 'At a small and intimate party/event', 'score': 0},
        {'text': 'Privately in person', 'score': 0},
        {'text': 'At a big social gathering (blowout bash)', 'score': 0},
      ]
    },

  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestions(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    if (_questionIndex < _questions.length) {
      print('We have more Questions!');
    } else {
      print('No more questions for you sadly!');
    }
  }

  void _goBack() {
    setState(() {
      _questionIndex = _questionIndex - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text('Gift Quiz'),
            const SizedBox(width: 90),
            Image.asset(
              'assets/images/gift_logo.png',
              height: 45, // adjust the height as needed
            ),
            const SizedBox(width: 15)
          ],
        ),
        backgroundColor: const Color(0xFF951170),
        leading: _questionIndex > 0
            ? IconButton(
          icon: const Icon(Icons.arrow_back_sharp),
          onPressed: _goBack,
        )
            : null,
      ),
      body: _questionIndex < _questions.length
          ? Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            Quiz(
              answerQuestions: _answerQuestions,
              questionIndex: _questionIndex,
              questions: _questions,
            ),
            const SizedBox(height: 20),
            _questionIndex > 0
                ? ElevatedButton.icon(
              onPressed: _goBack,
              icon: const Icon(Icons.arrow_back),
              label: const Text(''),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF951170),
              ),
            )
                : const SizedBox.shrink(),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                '${_questionIndex + 1} / ${_questions.length}',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      )
          : Result(_totalScore, _resetQuiz),
    );
  }



}