import 'package:flutter/material.dart';
import 'package:proper/cart.dart';
import 'package:proper/shoe.dart';
import 'package:provider/provider.dart';

import 'cartitem.dart';

class CartPage extends StatefulWidget{
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPage();
}

class _CartPage extends State<CartPage>{

  @override
  Widget build(BuildContext context){
    return Consumer<Cart>(
        builder: (context,value,child)=>Padding(padding: EdgeInsets.only(top: 30,left: 20),child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('MY CART',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            
            SizedBox(height: 20,),
            
            Expanded(child: ListView.builder(
              itemCount: value.getUserCart().length,
                itemBuilder: (context,index){
              Shoe individualShoe = value.getUserCart()[index];
              return CartItem(
                shoe: individualShoe,
              );
            }))
          ],
        ),)
    );
  }
}
