import 'package:flutter/material.dart';

class DeliveryPickupScreen extends StatefulWidget {
  const DeliveryPickupScreen({super.key});

  @override
  State<DeliveryPickupScreen> createState() => _DeliveryPickupScreenState();
}

class _DeliveryPickupScreenState extends State<DeliveryPickupScreen> {
  String _selectedOption = 'Deliver';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildOptionButton('Deliver'),
                const SizedBox(width: 20),
                _buildOptionButton('Pick Up'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOptionButton(String title) {
    final isSelected = _selectedOption == title;
    return SizedBox(
      width: 154,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            _selectedOption = title;
          });
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? const Color(0xFFC67C4E) : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
