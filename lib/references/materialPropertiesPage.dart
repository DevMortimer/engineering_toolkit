import 'package:engineering_toolbox/references/materialPropertiesModel.dart';
import 'package:flutter/material.dart';
import 'package:table_sticky_headers/table_sticky_headers.dart';

class MaterialPropertiesPage extends StatelessWidget {
  const MaterialPropertiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Material Properties"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Carbon Steel
              const Text(
                'Carbon Steel',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 512,
                child: StickyHeadersTable(
                  columnsLength: carbonSteelHeader.length,
                  rowsLength: carbonSteelSideBar.length,
                  columnsTitleBuilder: (i) => Text(carbonSteelHeader[i]),
                  rowsTitleBuilder: (i) => Text(carbonSteelSideBar[i]),
                  contentCellBuilder: (i, j) => Text(carbonSteel[j][i]),
                  showHorizontalScrollbar: false,
                  showVerticalScrollbar: false,
                  legendCell: const Text('Material'),
                ),
              ),

              // Alloy Steel
              const Text(
                'Alloy Steel',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 512,
                child: StickyHeadersTable(
                  columnsLength: alloySteelHeader.length,
                  rowsLength: alloySteelSideBar.length,
                  columnsTitleBuilder: (i) => Text(alloySteelHeader[i]),
                  rowsTitleBuilder: (i) => Text(alloySteelSideBar[i]),
                  contentCellBuilder: (i, j) => Text(alloySteel[j][i]),
                  showHorizontalScrollbar: false,
                  showVerticalScrollbar: false,
                  legendCell: const Text('Material'),
                ),
              ),

              // Stainless Steel
              const Text(
                'Stainless Steel',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 512,
                child: StickyHeadersTable(
                  columnsLength: stainlessSteelHeader.length,
                  rowsLength: stainlessSteelSideBar.length,
                  columnsTitleBuilder: (i) => Text(stainlessSteelHeader[i]),
                  rowsTitleBuilder: (i) => Text(stainlessSteelSideBar[i]),
                  contentCellBuilder: (i, j) => Text(stainlessSteel[j][i]),
                  showHorizontalScrollbar: false,
                  showVerticalScrollbar: false,
                  legendCell: const Text('Material'),
                ),
              ),

              // Cast Irons
              const Text(
                'Cast Iron',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: StickyHeadersTable(
                  columnsLength: castIronHeader.length,
                  rowsLength: castIronSideBar.length,
                  columnsTitleBuilder: (i) => Text(castIronHeader[i]),
                  rowsTitleBuilder: (i) => Text(castIronSideBar[i]),
                  contentCellBuilder: (i, j) => Text(castIron[j][i]),
                  showHorizontalScrollbar: false,
                  showVerticalScrollbar: false,
                  legendCell: const Text('Material'),
                ),
              ),

              // Aluminum Alloys
              const Text(
                'Aluminum Alloys',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 450,
                child: StickyHeadersTable(
                  columnsLength: aluminumAlloyHeader.length,
                  rowsLength: aluminumAlloySideBar.length,
                  columnsTitleBuilder: (i) => Text(aluminumAlloyHeader[i]),
                  rowsTitleBuilder: (i) => Text(aluminumAlloySideBar[i]),
                  contentCellBuilder: (i, j) => Text(aluminumAlloy[j][i]),
                  showHorizontalScrollbar: false,
                  showVerticalScrollbar: false,
                  legendCell: const Text('Material'),
                ),
              ),

              // Nickel Alloys
              const Text(
                'Nickel Alloys',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 512,
                child: StickyHeadersTable(
                  columnsLength: nickelAlloyHeader.length,
                  rowsLength: nickelAlloySideBar.length,
                  columnsTitleBuilder: (i) => Text(nickelAlloyHeader[i]),
                  rowsTitleBuilder: (i) => Text(nickelAlloySideBar[i]),
                  contentCellBuilder: (i, j) => Text(nickelAlloy[j][i]),
                  showHorizontalScrollbar: false,
                  showVerticalScrollbar: false,
                  legendCell: const Text('Material'),
                ),
              ),

              // Copper Alloys
              const Text(
                'Copper Alloys',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 500,
                child: StickyHeadersTable(
                  columnsLength: copperAlloyHeader.length,
                  rowsLength: copperAlloySideBar.length,
                  columnsTitleBuilder: (i) => Text(copperAlloyHeader[i]),
                  rowsTitleBuilder: (i) => Text(copperAlloySideBar[i]),
                  contentCellBuilder: (i, j) => Text(copperAlloy[j][i]),
                  showHorizontalScrollbar: false,
                  showVerticalScrollbar: false,
                  legendCell: const Text('Material'),
                ),
              ),

              // Titanium Alloys
              const Text(
                'Titanium Alloys',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: StickyHeadersTable(
                  columnsLength: titaniumAlloyHeader.length,
                  rowsLength: titaniumAlloySideBar.length,
                  columnsTitleBuilder: (i) => Text(titaniumAlloyHeader[i]),
                  rowsTitleBuilder: (i) => Text(titaniumAlloySideBar[i]),
                  contentCellBuilder: (i, j) => Text(titaniumAlloy[j][i]),
                  showHorizontalScrollbar: false,
                  showVerticalScrollbar: false,
                  legendCell: const Text('Material'),
                ),
              ),

              const SizedBox(height: 64),
            ],
          ),
        ),
      ),
    );
  }
}
