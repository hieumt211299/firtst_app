import 'package:flutter/material.dart';

class AwesomeCollectionWidget extends StatelessWidget {
  const AwesomeCollectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Awesome Collections',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w600,
            height: 0.08,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  'assets/img/awesomecollection1.png',
                  fit: BoxFit.cover, // Ensure the image covers the entire width
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      'assets/img/awesomecollection2.png',
                      fit: BoxFit
                          .cover, // Ensure the image covers the entire width
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      'assets/img/awesomecollection3.png',
                      fit: BoxFit
                          .cover, // Ensure the image covers the entire width
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
