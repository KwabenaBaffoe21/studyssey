import 'package:flutter/material.dart';
import '../../../../constant.dart';
import '../resultlist.dart';

late List<Map<String, dynamic>> resultItem;
int totalCredit = resultContent1
    .map<int>((e) => e['Credit'] as int)
    .reduce((value, element) => value + element);

SizedBox buildDataTable(BuildContext context,
    {required List<Map<String, dynamic>> resultItem}) {
  return SizedBox(
    width: 1120,
    child: DataTable(

      columnSpacing: 40,
      horizontalMargin: 5,
      columns: [
        DataColumn(
          label: Text(
            'course code'.toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: textColor1),
          ),
        ),
        DataColumn(
          label: Text(
            'course title'.toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: textColor1),
          ),
        ),
        DataColumn(
          numeric: true,
          label: Text(
            'credit'.toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: textColor1),
          ),
        ),
        DataColumn(
          numeric: "e['Class mark']" is int,
          label: Text(
            'class mark'.toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: textColor1),
          ),
        ),
        DataColumn(
          numeric: true,
          label: Text(
            'exam mark'.toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: textColor1),
          ),
        ),
        DataColumn(
          numeric: true,
          label: Text(
            'mark'.toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: textColor1),
          ),
        ),
        DataColumn(
          label: Text(
            'grade'.toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: textColor1),
          ),
        ),
      ],
      rows: resultItem
          .map(
            (e) => DataRow(cells: [
              DataCell(
                Text(
                  e['Course Code'].toString(),
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: textColor1),
                ),
              ),
              DataCell(
                Text(
                  e['Course Title'].toString(),
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: textColor1),
                ),
              ),
              DataCell(
                Text(
                  e['Credit'].toString(),
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: textColor1),
                ),
              ),
              DataCell(
                Text(
                  e['Class Mark'].toString(),
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: e['Class Mark'] is String
                          ? kErrorBorderColor
                          : textColor1),
                ),
              ),
              DataCell(
                Text(
                  e['Exam Mark'] != null ? e['Exam Mark'].toString() : '',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: e['Exam Mark'] != null
                            ? Colors.black
                            : Colors.white,
                      ),
                ),
              ),
              DataCell(
                Text(
                  e['Mark'] != null ? e['Mark'].toString() : '',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: e['Exam Mark'] != null
                            ? Colors.black
                            : Colors.white,
                      ),
                ),
              ),
              DataCell(
                Text(
                  e['Grade'] != null ? e['Grade'].toString() : '',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: e['Exam Mark'] != null
                            ? Colors.black
                            : Colors.white,
                      ),
                ),
              ),
            ]),
          )
          .toList()
        ..add(
          const DataRow(cells: [
            DataCell(Text('')),
            DataCell(Text('')),
            DataCell(Text('')),
            DataCell(Text('')),
            DataCell(Text('')),
            DataCell(Text('')),
            DataCell(Text('')),
          ]),
        )
        ..add(
          DataRow(cells: [
            const DataCell(Text('')),
            const DataCell(Text('')),
            const DataCell(Text('')),
            const DataCell(Text('')),
            const DataCell(Text('')),
            DataCell(
              Text(
                'Semester',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: textColor1,
                    decoration: TextDecoration.underline,
                    decorationColor: color11,
                    decorationStyle: TextDecorationStyle.solid,
                    decorationThickness: 5),
              ),
            ),
            DataCell(
              Text(
                'Cumulative',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: textColor1,
                    decoration: TextDecoration.underline,
                    decorationColor: color11,
                    decorationStyle: TextDecorationStyle.solid,
                    decorationThickness: 5),
              ),
            ),
          ]),
        )
        ..add(
          DataRow(cells: [
            const DataCell(Text('')),
            const DataCell(Text('')),
            const DataCell(Text('')),
            const DataCell(Text('')),
            DataCell(
              Text(
                'Total Credit: ',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: textColor1,
                    ),
              ),
            ),
            DataCell(
              Text(
                totalCredit.toString(),
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: textColor1,
                    ),
              ),
            ),
            DataCell(
              Text(
                totalCredit.toString(),
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: textColor1,
                    ),
              ),
            ),
          ]),
        )
        ..add(
          DataRow(cells: [
            const DataCell(Text('')),
            const DataCell(Text('')),
            const DataCell(Text('')),
            const DataCell(Text('')),
            DataCell(
              Text(
                'Credit Obtained: ',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: textColor1,
                    ),
              ),
            ),
            DataCell(
              Text(
                '18',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: textColor1,
                    ),
              ),
            ),
            DataCell(
              Text(
                '18',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: textColor1,
                    ),
              ),
            ),
          ]),
        )
        ..add(
          DataRow(cells: [
            const DataCell(Text('')),
            const DataCell(Text('')),
            const DataCell(Text('')),
            const DataCell(Text('')),
            DataCell(
              Text(
                'Weighted marks: ',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: textColor1,
                    ),
              ),
            ),
            DataCell(
              Text(
                '1412',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: textColor1,
                    ),
              ),
            ),
            DataCell(
              Text(
                '1412',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: textColor1,
                    ),
              ),
            ),
          ]),
        )
        ..add(
          DataRow(cells: [
            const DataCell(Text('')),
            const DataCell(Text('')),
            const DataCell(Text('')),
            const DataCell(Text('')),
            DataCell(
              Text(
                'Weighted\naverage: ',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: textColor1,
                    ),
              ),
            ),
            DataCell(
              Text(
                '78.44',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: textColor1,
                    ),
              ),
            ),
            DataCell(
              Text(
                '78.44',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: textColor1,
                    ),
              ),
            ),
          ]),
        ),
    ),
  );
}
