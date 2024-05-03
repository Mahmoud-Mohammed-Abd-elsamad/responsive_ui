import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/widgets/custo_container.dart';
import 'package:responsive_dashboard/widgets/quic_invoice_header.dart';
import 'package:responsive_dashboard/widgets/quic_invoice_latest_transaction.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return  const CustomContainer(child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        SizedBox(height: 12,),
        QuickInvoiceHeader(),
        QuickInvoiceLatestTransaction()
      ],),
    ));
  }
}
