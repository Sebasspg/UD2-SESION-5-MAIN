import 'package:flutter/material.dart';

class BandejaPage extends StatelessWidget {
  const BandejaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<dynamic> products = [
      {
        'name': 'CocaCola',
        'description': '500ml',
        'pCompra': '2.00',
        'pVenta': '3.50',
      },
      {
        'name': 'Oreo',
        'description': '500ml',
        'pCompra': '2.00',
        'pVenta': '3.50',
      },
      {
        'name': 'CocaCola',
        'description': '500ml',
        'pCompra': '2.00',
        'pVenta': '3.50',
      },
      {
        'name': 'CocaCola',
        'description': '500ml',
        'pCompra': '2.00',
        'pVenta': '3.50',
      },
      {
        'name': 'CocaCola',
        'description': '500ml',
        'pCompra': '2.00',
        'pVenta': '3.50',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Datable'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DataTable(
            border: TableBorder.all(color: Colors.white),
            columns: const [
              DataColumn(
                label: Text('Name'),
              ),
              DataColumn(
                label: Text('Description'),
              ),
              DataColumn(
                label: Text('p.Compra'),
              ),
              DataColumn(
                label: Text('p.Venta'),
              ),
            ],
            rows: products
                .map(
                  (e) => DataRow(
                    cells: [
                      DataCell(Text(e['name'])),
                      DataCell(Text(e['description'])),
                      DataCell(Text('s/.' + e['pCompra'])),
                      DataCell(Text('s/.' + e['pVenta'])),
                    ],
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
