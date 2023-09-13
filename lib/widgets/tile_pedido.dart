import 'package:flutter/material.dart';
import 'package:teste/model/commanda.dart';

class TilePedido extends StatefulWidget {
  TilePedido({super.key, required this.commanda, required index});
  final Commanda commanda;
  int index = 0;

  @override
  State<TilePedido> createState() => _TilePedidoState();
}

class _TilePedidoState extends State<TilePedido> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('${widget.commanda.orders[widget.index].item.name}'),
        subtitle: Text(widget.commanda.orders[widget.index].notes != null
            ? '${widget.commanda.orders[widget.index].notes}'
            : ''),
        trailing: Text(
            'R\$ ${widget.commanda.orders[widget.index].item.price}\nQntd: ${widget.commanda.orders[widget.index].quantity}'),
      ),
    );
  }
}
