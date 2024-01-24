import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mobilki/comp/grocery_item_tile.dart';
import 'package:mobilki/models/cart_model.dart';
import 'cart_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 35),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal:10),
              child: Text("Sweet tooth?",
                style: TextStyle(
                  color: Color.fromARGB(211, 230, 88, 238),
                  fontFamily: 'Sarina',
                  fontSize: 40,
                  shadows: [
                    Shadow(
                      color: Color.fromARGB(255, 107, 106, 106),
                      offset: Offset(2, 5),
                      blurRadius: 4,
                   ),
                 ],
               ),
              ),
            ),
            SizedBox(height: 15),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal:10) ,
              child: Text("Let's dive into it!",
                style: TextStyle(
                  fontFamily: 'DarkerGrotesque',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 68, 53, 66)
                ),
              ),
            ),

            SizedBox(height: 24),

            Divider(
              thickness: 1,
              color: Color.fromARGB(137, 190, 189, 189),
            ),

            SizedBox(height: 15),
        
          //fresh items+grid
            const Padding(
              padding: EdgeInsets.only(left:10),
              child: Text('everything you need:',
                style: TextStyle(
                  fontFamily: 'DarkerGrotesque',
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 196, 0, 176)
               ),
             ),
           ),
            
            Expanded(
              child: Consumer<CartModel>(
                builder: (context, value, child) {
                  return GridView.builder(
                    itemCount: value.shopItems.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,),
                    itemBuilder: (context, index) {
                      return GroceryItemTile(
                        itemName: value.shopItems[index][0],
                        itemPrice: value.shopItems[index][1],
                        imagePath: value.shopItems[index][2],
                        color: value.shopItems[index][3],
                        onPressed: () =>
                          Provider.of<CartModel>(context, listen: false)
                              .addItemToCart(index),
                        );
                    },
                  );
               },
             ),
           )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(211, 230, 88, 238),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CartPage();
            },
          ),
        ),
        child: const Icon(Icons.shopping_bag,color: Colors.white,),
      ),
    );
  }
}

