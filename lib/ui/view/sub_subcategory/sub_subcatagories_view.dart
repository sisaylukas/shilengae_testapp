import 'package:apitest/data_model/catagory_model/catagory_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'sub_subcatagories_viewmodel.dart';

class SubSubCatagoriesView extends StatelessWidget {
  final List<CatagoryModel> subCatagories;
  final List<int> allParentId;
  SubSubCatagoriesView({
    required this.subCatagories,
    required this.allParentId,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SubSubCatagorieViewModel>.reactive(
      viewModelBuilder: () => SubSubCatagorieViewModel(),
      builder: (
        BuildContext context,
        SubSubCatagorieViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          appBar: AppBar(
            title: Text(""),
          ),
          body: model.isBusy
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 3 / 1,
                      crossAxisCount: 2,
                    ),
                    itemCount: subCatagories.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        elevation: 2,
                        child: GestureDetector(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 50,
                              child: Center(
                                child: Text(
                                  subCatagories[index].name!.toString(),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                      ;
                    },
                  ),
                ),
        );
      },
    );
  }
}
