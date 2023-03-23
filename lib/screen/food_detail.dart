import 'package:basic_recipe_app/food.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FoodDetail extends StatefulWidget {
  final Food food;
  const FoodDetail({Key? key, required this.food}) : super(key: key);

  @override
  State<FoodDetail> createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  bool x = false;
  bool x1 = false;
  bool x2 = false;
  double total = 0;
  double sl = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${widget.food.name}'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    height: 300,
                    width: double.infinity,
                    child: Image.asset('images/${widget.food.img}'),
                  ),
                  Text(widget.food.name.toString()),
                  Text("${widget.food.price}"),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text("Small"),
                  Checkbox(
                    value: x,
                    onChanged: (value) {
                      setState(() {
                        x = !x;
                        if (x == true) {
                          total += widget.food.price-1;
                        } else {
                          total -=widget.food.price-1;
                        }
                      });
                    },
                  ),
                  Text("Medium"),
                  Checkbox(
                    value: x1,
                    onChanged: (value) {
                      setState(() {
                        x1 = !x1;
                        if (x1 == true) {
                          total = total + widget.food.price;
                        } else {
                          total -= widget.food.price;
                        }
                      });
                    },
                  ),
                  Text("Large"),
                  Checkbox(
                    value: x2,
                    onChanged: (value) {
                      setState(() {
                        x2 = !x2;
                        if (x2 == true) {
                          total += widget.food.price + 1;
                        } else {
                          total -= widget.food.price + 1;
                        }
                      });
                    },
                  )
                ],
              ),
            ),
            Slider(
              min: 1,
              max: 6,
              value: sl,
              label: sl.toInt().toString(),
              divisions: 5,
              onChanged: (value) {
                setState(() {
                  sl = value.round().toDouble();
                });
              },
            ),
            Text("Ttal sum: ${total * sl.toInt().round()}")
          ],
        ));
  }
}
