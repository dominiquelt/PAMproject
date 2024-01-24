import 'package:flutter/material.dart'; 

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;
  final void Function()? onPressed;

  GroceryItemTile({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 255, 241, 252),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 251, 0, 251).withOpacity(0.2), 
              spreadRadius: 2, 
              blurRadius: 4, 
              offset: Offset(2, 3)
           ),
          ],
       ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Image.asset(
                imagePath,
                height: 120,
                width: 120,
              ),
            ),


            Text(
              itemName,
              style: TextStyle(
                fontFamily: 'DarkGrotesque',
                fontSize: 16,
              ),
            ),

                MaterialButton(
                  onPressed: onPressed,
                  color: color,
                  child: Text(
                    '\$' + itemPrice,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}