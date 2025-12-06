import 'package:flutter/material.dart';
import 'package:proper/ShoeTile.dart';
import 'package:proper/cart.dart';
import 'package:proper/shoe.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPage();
}

class _ShopPage extends State<ShopPage> {
  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context,listen: false).addItemToCart(shoe);
    
    showDialog(context: context, builder: (context)=>AlertDialog(
      title: Text('Successfully added!!'),
      content: Text('check your cart'),
    ));
  }
  
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Search bar
          Padding(
            padding: EdgeInsets.only(top: 26, left: 10, right: 10),
            child: Container(
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              height: 40,
              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.black),
                  SizedBox(width: 10),
                  Text('search..', style: TextStyle(color: Colors.black)),
                ],
              ),
            ),
          ),

          // Tagline
          Padding(
            padding: EdgeInsets.only(top: 30, left: 20),
            child: Text(
              'Your journey starts with the right pair..',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),

          // Title row
          Padding(
            padding: EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hot Picks...🔥', style: TextStyle(fontSize: 24)),
                Text('See all..', style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),
          SizedBox(height: 10),
          // Shoes list
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: value.getShoeList().length,
              itemBuilder: (context, index) {
                Shoe shoe = value.getShoeList()[index];

                return ShoeTile(shoe: shoe,
                  onTap: ()=>addShoeToCart(shoe),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
