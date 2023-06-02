import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vjezba_1/food/classes/allergy.dart';

class AllergiesContainer extends StatefulWidget {
  AllergiesContainer(
      {super.key,
      required this.gluten,
      required this.orasastiPlodovi,
      required this.soja,
      required this.riba,
      required this.jaja});
  bool gluten, orasastiPlodovi, soja, riba, jaja;

  Allergy getAllergies() {
    return Allergy(
        gluten: gluten,
        orasastiPlodovi: orasastiPlodovi,
        soja: soja,
        riba: riba,
        jaja: jaja);
  }

  @override
  State<AllergiesContainer> createState() => _AllergiesContainerState();
}

class _AllergiesContainerState extends State<AllergiesContainer> {
  List<TableRow> _buildTable() {
    TextStyle style = GoogleFonts.aBeeZee(
        fontSize: 24, color: Colors.white, fontWeight: FontWeight.w900);
    var tableRow = <TableRow>[];
    tableRow.add(TableRow(
      children: [
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Text(
            "GLUTEN",
            style: style,
          ),
        ),
        const SizedBox(
          width: 30,
          height: 70,
        ),
        TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: Switch.adaptive(
                value: widget.gluten,
                onChanged: (value) => setState(() {
                      widget.gluten = value;
                    })))
      ],
    ));
    tableRow.add(TableRow(
      children: [
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Text(
            "ORASASTI PLODOVI\nI KIKIRIKI",
            style: style,
          ),
        ),
        const SizedBox(
          width: 30,
          height: 90,
        ),
        TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: Switch.adaptive(
                value: widget.orasastiPlodovi,
                onChanged: (value) => setState(() {
                      widget.orasastiPlodovi = value;
                    })))
      ],
    ));
    tableRow.add(TableRow(
      children: [
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Text(
            "SOJA",
            style: style,
          ),
        ),
        const SizedBox(
          width: 30,
          height: 70,
        ),
        TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: Switch.adaptive(
                value: widget.soja,
                onChanged: (value) => setState(() {
                      widget.soja = value;
                    })))
      ],
    ));
    tableRow.add(TableRow(
      children: [
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Text(
            "RIBA",
            style: style,
          ),
        ),
        const SizedBox(
          width: 30,
          height: 70,
        ),
        TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: Switch.adaptive(
                value: widget.riba,
                onChanged: (value) => setState(() {
                      widget.riba = value;
                    })))
      ],
    ));
    tableRow.add(TableRow(
      children: [
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Text(
            "JAJA",
            style: style,
          ),
        ),
        const SizedBox(
          width: 30,
          height: 70,
        ),
        TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: Switch.adaptive(
                value: widget.jaja,
                onChanged: (value) => setState(() {
                      widget.jaja = value;
                    })))
      ],
    ));
    return tableRow;
  }

  @override
  Widget build(BuildContext context) {
    return Table(
        border: const TableBorder(
            horizontalInside: BorderSide(width: 1, color: Colors.white)),
        defaultColumnWidth: const IntrinsicColumnWidth(),
        children: _buildTable());
  }
}
