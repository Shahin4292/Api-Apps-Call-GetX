import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  const ContactCard(
      {super.key,
      required this.name,
      required this.email,
      required this.address,
      required this.city,
      required this.country});

  final String name;
  final String email;
  final String address;
  final String city;
  final String country;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            const CircleAvatar(),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name: $name",
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500)),
                Text(
                  "Email: $email",
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  "Address: $address",
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  "City: $city",
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  "Country: $country",
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
