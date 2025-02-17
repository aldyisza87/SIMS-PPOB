import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sims_ppob/widgets/history_card.dart';
import 'package:sims_ppob/widgets/saldo_card.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Transaksi', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SaldoCard(saldo: 2000000, showVisibilityToggle: false),
            Gap(38),
            Text(
              'Transaksi',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Gap(24),
            HistoryCard(amount: 20000, transactionType: 'Top Up Saldo'),
            Gap(24),
            HistoryCard(amount: 10000, transactionType: 'Pulsa Prabayar'),
            Gap(24),
            HistoryCard(amount: 50000, transactionType: 'Listrik Pascabayar'),
          ],
        ),
      ),
    );
  }
}
