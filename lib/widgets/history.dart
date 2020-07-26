import 'package:flutter/material.dart';

import '../src/domain/company.dart';
import '../src/domain/place.dart';
import '../src/domain/record.dart';
import '../src/domain/time.dart';
import 'record.dart';

class SliverListHistory extends StatelessWidget {
  const SliverListHistory({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          final company = Company(id: 'electro', name: 'Electronorte');
          final record = Record(
            uid: 'record1',
            checkIn: Time(DateTime(2020, 3, 2, 8, 30)),
            checkOut: null,
            company: company,
            place: Place(
              id: 'oficina1',
              name: 'Oficina principal',
              company: company,
            ),
          );
          final record2 = Record(
            uid: 'record2',
            checkIn: Time(DateTime(2020, 3, 2, 8, 30)),
            checkOut: Time(DateTime(2020, 3, 2, 8, 45)),
            company: company,
            place: Place(
              id: 'oficina1',
              name: 'Oficina principal',
              company: company,
            ),
          );

          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: index == 0
                ? RecordWidget(record: record)
                : RecordWidget(record: record2),
          );
        },
        childCount: 25,
      ),
    );
  }
}
