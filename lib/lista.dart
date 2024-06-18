import 'package:flutter/material.dart';

class Lista extends StatelessWidget {
  final List<String> dias = [
    'domingo',
    'segunda',
    'terça',
    'quarta',
    'quinta',
    'sexta',
    'sábado'
  ];

  Lista({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Row(
            children: [
              Text(dias[index]),
              if (index < dias.length - 1) SizedBox(width: 30),
            ],
          );
        },
        childCount: dias.length,
      ),
    );
  }
}
