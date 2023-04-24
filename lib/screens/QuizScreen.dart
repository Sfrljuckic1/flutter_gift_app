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
      {'text': 'Online', 'score': 10},
      {'text': 'In a catalog', 'score': 20},
      {'text': 'Big name retailer', 'score': 30},
      {'text': 'Thrift shop', 'score': 40},
      {'text': 'Specialty Store', 'score': 50},
    ]
  },

  {
    'questionText': '5. Which animal would this person like best as a pet?',
    'answers': [
      {'text': 'Pig', 'score': 10},
      {'text': 'Cat', 'score': 20},
      {'text': 'Bulldog', 'score': 30},
      {'text': 'Badger', 'score': 40},
      {'text': 'Dragon', 'score': 50},
    ]
  },

  {
    'questionText': '2. How close is your relationship to this person?',
    'answers': [
      {'text': 'We get together every now and then.', 'score': 10},
      {'text': 'Facebook friends, but don’t talk in the real world.', 'score': 20},
      {'text': 'We see each other daily, but only because we spend a lot of time in the same place.', 'score': 30},
      {'text': 'Talk on the phone every day.', 'score': 40},
      {'text': 'We see each other every day by choice.', 'score': 50},
    ]
  },

  {
    'questionText': '6. What is this person’s favorite movie or entertainment genre?',
    'answers': [
      {'text': 'Animated', 'score': 10},
      {'text': 'Horror', 'score': 20},
      {'text': 'Action', 'score': 30},
      {'text': 'Documentary', 'score': 40},
      {'text': 'Romance', 'score': 40},
    ]
  },

  {
    'questionText': '7. How long does it typically take this person to get ready for a night out?',
    'answers': [
      {'text': '30 Minutes', 'score': 10},
      {'text': 'I’m not sure', 'score': 20},
      {'text': 'Over an hour', 'score': 30},
      {'text': 'Days (outfit planning)', 'score': 40},
      {'text': 'Less than ~5 minutes', 'score': 50},
    ]
  },

  {
    'questionText': '8. What is this person’s favorite drink?',
    'answers': [
      {'text': 'Energy drink', 'score': 10},
      {'text': 'Wine', 'score': 20},
      {'text': 'Gatorade', 'score': 30},
      {'text': 'Water', 'score': 40},
      {'text': 'Tea', 'score': 50},
      {'text': 'Craft beer', 'score': 60},
    ]
  },

  {
    'questionText': '1. What is your budget for this present?',
    'answers': [
      {'text': '\$100 or more', 'score': 10},
      {'text': 'Under \$10', 'score': 20},
      {'text': '\$50-\$100', 'score': 30},
      {'text': '\$10-\$20', 'score': 40},
      {'text': '\$20-\$30', 'score': 50},
    ]
  },

  {
    'questionText': '9. How much time does this person spend on recreational activities?',
    'answers': [
      {'text': 'None', 'score': 10},
      {'text': 'A few hours per month', 'score': 20},
      {'text': '3-5 hours per week', 'score': 30},
      {'text': 'All of their free time', 'score': 40},
      {'text': '2-3 days per week', 'score': 50},
      {'text': 'About an hour each week', 'score': 60},
    ]
  },

  {
    'questionText': '10. Which type of restaurant does this person prefer?',
    'answers': [
      {'text': 'Family Dining', 'score': 10},
      {'text': 'Fast Food', 'score': 20},
      {'text': 'Healthy Foods', 'score': 30},
      {'text': 'Diverse Cultural Cuisines', 'score': 40},
      {'text': 'Fine Dining', 'score': 50},
    ]
  },

  {
    'questionText': '11. Which of these color options do you think this person would like the best?',
    'answers': [
      {'text': 'Brown', 'score': 10},
      {'text': 'I’m not sure', 'score': 20},
      {'text': 'Black', 'score': 30},
      {'text': 'Pink', 'score': 40},
      {'text': 'Blue', 'score': 50},
      {'text': 'Red', 'score': 60},
    ]
  },

  {
    'questionText': '12. How do you plan to deliver the gift?',
    'answers': [
      {'text': 'Via mail or package delivery service', 'score': 10},
      {'text': 'As a special delivery to their work/school', 'score': 20},
      {'text': 'At a small and intimate party/event', 'score': 30},
      {'text': 'Privately in person', 'score': 40},
      {'text': 'At a big social gathering (blowout bash)', 'score': 50},
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
        title: const Text('Gift Quiz'),
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                '${_questionIndex + 1}/${_questions.length}',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 20),
              ),
            ),
            _questionIndex > 0
                ? ElevatedButton.icon(
              onPressed: _goBack,
              icon: const Icon(Icons.arrow_back),
              label: const Text('Previous'),
            )
                : const SizedBox.shrink(),
          ],
        ),
      )
          : Result(_totalScore, _resetQuiz),
    );
  }


}