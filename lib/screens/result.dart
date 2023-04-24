import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  const Result(this.resultScore, this.resetHandler, {super.key});

  String get resultPhrase {
    String resultText;

    if (resultScore <= 120) {
      resultText = 'Buy them a Game!';
    } else if (resultScore <= 150) {
      resultText = 'Might be really awesome I reckon';
    } else if (resultScore <= 200) {
      resultText = 'You are so good!';
    } else if (resultScore <= 450) {
      resultText = 'Fashion Accessory';
    } else if (resultScore <= 500) {
      resultText = 'Sporting Equipment';
    } else {
      resultText = 'You are the best of us';
    }
    return resultText;
  }

  String get subtext {
    String subtext;

    if (resultScore <= 120) {
      subtext = 'Card, board, or video games make this person happy. They like good, clean, old-fashioned fun provided by gaming alone or with loved ones. '
          'This person is the guy or girl next door who enjoys a traditional lifestyle with a hint of creativity mixed in on occasion. '
          'Hopefully now you have a better idea what type of item to shop for.';

    } else if (resultScore <= 150) {
      subtext = 'You did pretty well, but there is still room for improvement. Keep up the good work and you will be a pro in no time!';

    } else if (resultScore <= 200) {
      subtext = 'You are a true expert! Your knowledge and skills are impressive. Keep up the great work!';

    } else if (resultScore <= 450) {
      subtext =
      'This person loves fashion, shopping, and looking good. Buy them a stylish accessory like: '
          'Jewelry, Tie or bowtie, Scarf, Purse or bag, Hat, and Sunglasses.'
          ''
          'Fashion accessories are available in all price points so they work with every budget and make a big impression even with the smallest investment.'
          'Hopefully now you have a better idea what type of item to shop for.';

    } else if (resultScore <= 500) {
      subtext = 'This person spends a lot of time playing sports, exercising, or enjoying an active life. Contribute to their lifestyle with an athletic gift like:'
          'Water bottle, Gym bag, Yoga mat, Sports jersey, and a New piece of equipment'
          'Look for inspiration in their favorite sport, sports team, or specific exercise routine to find the right present.'
          'Hopefully now you have a better idea what type of item to shop for.';

    } else {
      subtext = 'Wow, you are simply amazing! Your knowledge and skills are unmatched. You are a true inspiration to us all!';
    }
    return subtext;
  }

  AssetImage get resultImage {
    AssetImage image;
    if (resultScore <= 120) {
      image = const AssetImage('assets/images/result_game.png');
    } else if (resultScore <= 150) {
      image = const AssetImage('assets/images/result_game.png');
    } else if (resultScore <= 200) {
      image = const AssetImage('assets/images/result_game.png');
    } else if (resultScore <= 450) {
      image = const AssetImage('assets/images/result_fashion.png');
    } else if (resultScore <= 500) {
      image = const AssetImage('assets/images/result_sport.png');
    } else {
      image = const AssetImage('assets/images/result_game.png');
    }
    return image;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              child: Image(
                image: resultImage,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              resultPhrase,
              style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16), // Add some vertical spacing
            Text(
              subtext,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32), // Add more vertical spacing
            ElevatedButton(
              onPressed: resetHandler,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text('Restart Quiz!'),
            ),
          ],
        ),
      ),
    );
  }
}
