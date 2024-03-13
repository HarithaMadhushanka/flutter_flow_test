import 'package:flutter/material.dart';

class ProviderSelectComponent extends StatelessWidget {
  const ProviderSelectComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 310,
      decoration: BoxDecoration(
        color: const Color(0XFFcccccc),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 140,
            margin: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/airtel.png'),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 40,
            width: 140,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  scale: 0.8,
                  fit: BoxFit.contain,
                  image: AssetImage('assets/momo.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
