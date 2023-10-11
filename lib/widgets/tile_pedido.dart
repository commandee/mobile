import 'package:flutter/material.dart';
import 'package:teste/model/order.dart';

class TilePedido extends StatefulWidget {
  const TilePedido({super.key, required this.order});
  final Order order;

  @override
  State<TilePedido> createState() => _TilePedidoState();
}

class _TilePedidoState extends State<TilePedido> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.surface,
      child: ListTile(
        title: Text(widget.order.item.name),
        subtitle: widget.order.notes != null ? Text(widget.order.notes!) : null,
        trailing: Text(
            'R\$ ${widget.order.item.price}\nQntd: ${widget.order.quantity}'),
      ),
    );
  }
}
