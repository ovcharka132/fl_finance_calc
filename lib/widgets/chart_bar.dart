import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String _day;
  final double _amount;
  final double _fractionOfTotal;

  ChartBar(this._day, this._amount, this._fractionOfTotal);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(_day),
        SizedBox(height: 5),
        Container(
          height: 100,
          width: 25,
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                    width: 1,
                  ),
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              FractionallySizedBox(
                alignment: Alignment.bottomCenter,
                heightFactor: _fractionOfTotal,
                widthFactor: 1.0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 5),
        Container(
          height: 20,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              '\$${_amount.toStringAsFixed(2)}',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
        ),
      ],
    );
  }
}
