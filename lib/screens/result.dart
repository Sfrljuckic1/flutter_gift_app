import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  const Result(this.resultScore, this.resetHandler, {super.key});

  String get resultPhrase {
    String resultText;

    if (resultScore <= 10) {
      resultText = 'Gift Card or Certificate';
    } else if (resultScore <= 20) {
      resultText = 'Sporting Equipment';
    } else if (resultScore <= 30) {
      resultText = 'A Good Book';
    } else if (resultScore <= 40) {
      resultText = 'Fashion Accessory';
    } else if (resultScore <= 50) {
      resultText = 'Buy them a Game';
    } else {
      resultText = 'Gift Card or Certificate';
    }
    return resultText;
  }

  String get subtext {
    String subtext;

    if (resultScore <= 10) {
      subtext =
      'The recipient may be difficult to buy for because of specific tastes and preferences. A gift card or gift certificate to a favorite store, restaurant, or recreational spot is the perfect way to show you care.'
          'Gift cards are great for people you don''t know well, those who like to shop, and when you have a limited budget. Buy a generic card for use anywhere that accepts them and choose an amount that fits what you''re willing to spend for this kind of recipient.'
          'Hopefully now you have a better idea what type of item to shop for';

    } else if (resultScore <= 20) {
      subtext = 'This person spends a lot of time playing sports, exercising, or enjoying an active life. Contribute to their lifestyle with an athletic gift like:'
          'Water bottle, Gym bag, Yoga mat, Sports jersey, and a New piece of equipment'
          'Look for inspiration in their favorite sport, sports team, or specific exercise routine to find the right present.'
          'Hopefully now you have a better idea what type of item to shop for.';

    } else if (resultScore <= 30) {
      subtext = 'This person has a thirst for knowledge and appreciates the fantasy worlds created in literature but likes to spend time alone. Look for a book on the current New York Times Best Seller list or a subject about a topic the recipient loves. Also consider reading accessories or themed items:\''
          'Book light'
          'E-reader device'
          'E-reader or book cover'
          'Home decor with literary quotes';

    } else if (resultScore <= 40) {
      subtext =
      'This person loves fashion, shopping, and looking good. Buy them a stylish accessory like: '
          'Jewelry, Tie or bowtie, Scarf, Purse or bag, Hat, and Sunglasses.'
          ''
          'Fashion accessories are available in all price points so they work with every budget and make a big impression even with the smallest investment.'
          'Hopefully now you have a better idea what type of item to shop for.';

    } else if (resultScore <= 50) {
      subtext = 'Card, board, or video games make this person happy. They like good, clean, old-fashioned fun provided by gaming alone or with loved ones. '
          'This person is the guy or girl next door who enjoys a traditional lifestyle with a hint of creativity mixed in on occasion. '
          'Hopefully now you have a better idea what type of item to shop for.';

    } else {
      subtext = 'The recipient may be difficult to buy for because of specific tastes and preferences. A gift card or gift certificate to a favorite store, restaurant, or recreational spot is the perfect way to show you care.'
          'Gift cards are great for people you don''t know well, those who like to shop, and when you have a limited budget. Buy a generic card for use anywhere that accepts them and choose an amount that fits what you''re willing to spend for this kind of recipient.'
          'Hopefully now you have a better idea what type of item to shop for';

    }
    return subtext;
  }

  AssetImage get resultImage {
    AssetImage image;

    if (resultScore <= 10) {
      image = const AssetImage('assets/images/result_card.png');

    } else if (resultScore <= 20) {
      image = const AssetImage('assets/images/result_sport.png');

    } else if (resultScore <= 30) {
      image = const AssetImage('assets/images/result_book.png');

    } else if (resultScore <= 40) {
      image = const AssetImage('assets/images/result_fashion.png');

    } else if (resultScore <= 50) {
      image = const AssetImage('assets/images/result_game.png');

    } else {
      image = const AssetImage('assets/images/result_card.png');
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
