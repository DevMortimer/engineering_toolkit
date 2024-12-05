import 'package:engineering_toolkit/references/materialPropertiesModel.dart';
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
              Text(
                'Carbon Steel',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 512,
                child: StickyHeadersTable(
                  columnsLength: carbonSteelHeader.length,
                  rowsLength: carbonSteelSideBar.length,
                  columnsTitleBuilder: (i) => Text(
                    carbonSteelHeader[i],
                    style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                  rowsTitleBuilder: (i) => Text(
                    carbonSteelSideBar[i],
                    style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                  contentCellBuilder: (i, j) => Text(
                    carbonSteel[j][i],
                    style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                  showHorizontalScrollbar: false,
                  showVerticalScrollbar: false,
                  legendCell: Text(
                    'Material',
                    style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              ),

              // Alloy Steel
              Text(
                'Alloy Steel',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 512,
                child: StickyHeadersTable(
                  columnsLength: alloySteelHeader.length,
                  rowsLength: alloySteelSideBar.length,
                  columnsTitleBuilder: (i) => Text(
                    alloySteelHeader[i],
                    style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                  rowsTitleBuilder: (i) => Text(
                    alloySteelSideBar[i],
                    style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                  contentCellBuilder: (i, j) => Text(
                    alloySteel[j][i],
                    style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                  showHorizontalScrollbar: false,
                  showVerticalScrollbar: false,
                  legendCell: Text(
                    'Material',
                    style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              ),

              // Stainless Steel
              Text(
                'Stainless Steel',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 512,
                child: StickyHeadersTable(
                  columnsLength: stainlessSteelHeader.length,
                  rowsLength: stainlessSteelSideBar.length,
                  columnsTitleBuilder: (i) => Text(
                    stainlessSteelHeader[i],
                    style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                  rowsTitleBuilder: (i) => Text(
                    stainlessSteelSideBar[i],
                    style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                  contentCellBuilder: (i, j) => Text(
                    stainlessSteel[j][i],
                    style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                  showHorizontalScrollbar: false,
                  showVerticalScrollbar: false,
                  legendCell: Text(
                    'Material',
                    style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              ),

              // Cast Irons
              Text(
                'Cast Iron',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: StickyHeadersTable(
                  columnsLength: castIronHeader.length,
                  rowsLength: castIronSideBar.length,
                  columnsTitleBuilder: (i) => Text(
                    castIronHeader[i],
                    style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                  rowsTitleBuilder: (i) => Text(
                    castIronSideBar[i],
                    style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                  contentCellBuilder: (i, j) => Text(
                    castIron[j][i],
                    style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                  showHorizontalScrollbar: false,
                  showVerticalScrollbar: false,
                  legendCell: Text(
                    'Material',
                    style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              ),

              // Aluminum Alloys
              Text(
                'Aluminum Alloys',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 450,
                child: StickyHeadersTable(
                  columnsLength: aluminumAlloyHeader.length,
                  rowsLength: aluminumAlloySideBar.length,
                  columnsTitleBuilder: (i) => Text(
                    aluminumAlloyHeader[i],
                    style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                  rowsTitleBuilder: (i) => Text(
                    aluminumAlloySideBar[i],
                    style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                  contentCellBuilder: (i, j) => Text(
                    aluminumAlloy[j][i],
                    style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                  showHorizontalScrollbar: false,
                  showVerticalScrollbar: false,
                  legendCell: Text(
                    'Material',
                    style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              ),

              // Nickel Alloys
              Text(
                'Nickel Alloys',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 512,
                child: StickyHeadersTable(
                  columnsLength: nickelAlloyHeader.length,
                  rowsLength: nickelAlloySideBar.length,
                  columnsTitleBuilder: (i) => Text(
                    nickelAlloyHeader[i],
                    style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                  rowsTitleBuilder: (i) => Text(
                    nickelAlloySideBar[i],
                    style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                  contentCellBuilder: (i, j) => Text(
                    nickelAlloy[j][i],
                    style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                  showHorizontalScrollbar: false,
                  showVerticalScrollbar: false,
                  legendCell: Text(
                    'Material',
                    style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              ),

              // Copper Alloys
              Text(
                'Copper Alloys',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 500,
                child: StickyHeadersTable(
                  columnsLength: copperAlloyHeader.length,
                  rowsLength: copperAlloySideBar.length,
                  columnsTitleBuilder: (i) => Text(
                    copperAlloyHeader[i],
                    style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                  rowsTitleBuilder: (i) => Text(
                    copperAlloySideBar[i],
                    style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                  contentCellBuilder: (i, j) => Text(
                    copperAlloy[j][i],
                    style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                  showHorizontalScrollbar: false,
                  showVerticalScrollbar: false,
                  legendCell: Text(
                    'Material',
                    style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              ),

              // Titanium Alloys
              Text(
                'Titanium Alloys',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: StickyHeadersTable(
                  columnsLength: titaniumAlloyHeader.length,
                  rowsLength: titaniumAlloySideBar.length,
                  columnsTitleBuilder: (i) => Text(
                    titaniumAlloyHeader[i],
                    style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                  rowsTitleBuilder: (i) => Text(
                    titaniumAlloySideBar[i],
                    style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                  contentCellBuilder: (i, j) => Text(
                    titaniumAlloy[j][i],
                    style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                  showHorizontalScrollbar: false,
                  showVerticalScrollbar: false,
                  legendCell: Text(
                    'Material',
                    style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
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
