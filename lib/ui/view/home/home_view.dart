import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_view_model.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onModelReady: (model) async {
        // await model.initViewModelDatas();
      },
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Test categories'),
        ),
        body: model.isBusy
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : RefreshIndicator(
                onRefresh: model.initialise,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    height: 80,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: model.allcatagory.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () => model.getSubCatagoryOfRoot(
                            model.allcatagory[index],
                          ),
                          child: Card(
                            elevation: 5,
                            child: Container(
                              width: 75,
                              child: Column(
                                children: [
                                  const Icon(
                                    Icons.ac_unit,
                                    color: Colors.redAccent,
                                    size: 35,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6.0),
                                    child: Text(
                                      model.allcatagory[index].name!.toString(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
