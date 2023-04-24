import 'package:flutter/material.dart';

class ForumScreen extends StatelessWidget {
  const ForumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forum'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: [
          _buildCategoryCard(
            context,
            'General Discussion',
            'assets/images/general_discussion.png',
            'Talk about anything and everything',
          ),
          const SizedBox(height: 8),
          _buildCategoryCard(
            context,
            'Gift Ideas',
            'assets/images/gift_ideas.png',
            'Share and get gift ideas for any occasion',
          ),
          const SizedBox(height: 8),
          _buildCategoryCard(
            context,
            'Personal Finance',
            'assets/images/personal_finance.png',
            'Discuss personal finance and saving money tips',
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryCard(
      BuildContext context,
      String title,
      String imageAsset,
      String description,
      ) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ForumCategoryScreen(
                title: title, categoryTitle: '',
              ),
            ),
          );
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageAsset,
              width: 80,
              height: 80,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ForumCategoryScreen extends StatelessWidget{
  final String categoryTitle;

  const ForumCategoryScreen({Key? key, required this.categoryTitle, required String title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildPost(
              context,
              'Jane',
              'assets/images/avatar.png',
              'Hey everyone, what are your favorite gift ideas for birthdays?',
              DateTime.now(),
            ),
            _buildResponse(
              context,
              'John',
              'assets/images/avatar2.png',
              'I always like to get people something personalized like a customized mug or a monogrammed keychain',
              DateTime.now().subtract(const Duration(minutes: 30)),
            ),
            _buildPost(
              context,
              'Sarah',
              'assets/images/avatar3.png',
              'Does anyone have any good tips for saving money on groceries?',
              DateTime.now().subtract(const Duration(hours: 2)),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to the new post screen
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildPost(BuildContext context, String username, String avatarAsset,
      String postContent, DateTime postTime) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(avatarAsset),
                radius: 20,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      username,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      postTime.toString(),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(postContent),
          const SizedBox(height: 8),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  // Navigate to the new response screen
                },
                child: const Text('Reply'),
              ),
              const SizedBox(width: 8),
              TextButton(
                onPressed: () {},
                child: const Text('3 replies'),
              ),
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }

  Widget _buildResponse(BuildContext context, String username, String avatarAsset,
      String responseContent, DateTime responseTime) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(avatarAsset),
                radius: 20,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      username,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      responseTime.toString(),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(responseContent),
          const SizedBox(height: 8),
          const Divider(),
        ],
      ),
    );
  }
}
