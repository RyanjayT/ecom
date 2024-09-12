import 'package:ecom/models/cart.dart';
import 'package:ecom/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItems extends StatefulWidget {
  Shoe shoe;
  CartItems({
    super.key,
    required this.shoe,
  });

  @override
  State<CartItems> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CartItems> {
  // remove item from the cart
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemToCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 10, bottom: 10, right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(widget.shoe.name),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text("\$" + widget.shoe.price),
        ),
        trailing:
            IconButton(onPressed: removeItemFromCart, icon: Icon(Icons.delete)),
      ),
    );
  }
}
