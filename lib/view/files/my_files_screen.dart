import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iranian_pooshesh/res/app_ir_pooshesh_icons.dart';
import 'package:provider/provider.dart';

import '../../data/response/status.dart';
import '../../res/components/circular_progress.dart';
import '../../res/components/text_field.dart';
import '../../res/components/toggle_button.dart';
import '../../view_model/file_view_model.dart';
import 'card_item.dart';

class MyFileScreen extends StatefulWidget {
  const MyFileScreen({Key? key}) : super(key: key);

  @override
  State<MyFileScreen> createState() => _MyFileScreenState();
}

class _MyFileScreenState extends State<MyFileScreen> {
  FileViewModel fileViewModel = FileViewModel();
  late List<bool> _isSelected;
  @override
  void initState() {
    _isSelected = [false, true, false];
    fileViewModel.fetchMyFilesListApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return ChangeNotifierProvider<FileViewModel>(
      create: (BuildContext context) => fileViewModel,
      child: Consumer<FileViewModel>(
        builder: (context, value, _) {
          switch (value.myFilesList.status) {
            case Status.LOADING:
              return const MyCircularProgress();
            case Status.ERROR:
              return Center(
                child: Text(
                  value.myFilesList.message.toString(),
                ),
              );
            case Status.COMPLETED:
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    Center(
                      child: Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: width - (width / 4),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color(0xff1C4870),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ToggleButtonItem(
                              index: 0,
                              title: "صدور بیمه بدنه",
                              isSelectedList: _isSelected,
                              onTap: () {
                                setState(() {
                                  _isSelected = [true, false, false];
                                });
                              },
                            ),
                            ToggleButtonItem(
                              index: 1,
                              title: "بازدید بدنه",
                              isSelectedList: _isSelected,
                              onTap: () {
                                setState(() {
                                  _isSelected = [false, true, false];
                                });
                              },
                            ),
                            ToggleButtonItem(
                              index: 2,
                              title: "اعلام خسارت",
                              isSelectedList: _isSelected,
                              onTap: () {
                                setState(() {
                                  _isSelected = [false, false, true];
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const MyTextField(
                      hintText: "شناسه پرونده را وارد نمایید",
                      suffixIcon: IRPooshesh.search_normal,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Expanded(
                      child: ListView.separated(
                          shrinkWrap: true,
                          itemCount: value.myFilesList.data?.length ?? 0,
                          physics: const BouncingScrollPhysics(),
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              height: 16,
                            );
                          },
                          itemBuilder: (context, index) {
                            final myFilesList = value.myFilesList.data ?? [];
                            return CardItem(
                              myFile: myFilesList[index],
                            );
                          }),
                    ),
                  ],
                ),
              );
            default:
              return const MyCircularProgress();
          }
        },
      ),
    );
  }
}
