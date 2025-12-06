import 'package:flutter/material.dart';
import 'package:proper/shoe.dart';
import 'package:provider/provider.dart';

import 'cart.dart';

class CartItem extends StatefulWidget{
  Shoe shoe;
  CartItem({super.key,required this.shoe});
  @override
  State<CartItem> createState() => _CartItem();
}


class _CartItem extends State<CartItem>{
  void removeItemFromCart(Shoe shoe){
    Provider.of<Cart>(context,listen: false).removeItemFromCart(widget.shoe);
  }
  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        contentPadding: EdgeInsets.only(left: 20),
        leading: Image.asset(widget.shoe.imagepath,width: 60,),
        title: Text(widget.shoe.name),
        subtitle: Text('\$${widget.shoe.price}'),
        trailing: IconButton(onPressed:()=>removeItemFromCart(widget.shoe),  icon: Icon(Icons.delete)),
      ),
    );
  }
}
