import 'package:flutter/material.dart';
import 'package:iranian_pooshesh/models/file.dart';

import '../../res/app_ir_pooshesh_icons.dart';
import '../../res/color.dart';
import '../../res/components/card_info_listTile.dart';
import '../../res/components/clip_path/hexagon.dart';
import '../../res/components/clip_path/lable.dart';
import '../../res/components/outlined_button.dart';

class CardItem extends StatelessWidget {
  final MyFile myFile;
  const CardItem({
    Key? key,
    required this.myFile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: const Color(0xffC3C3C3).withOpacity(0.24),
            blurRadius: 8,
            offset: const Offset(0, 4),
          )
        ],
        border: Border.all(
          width: 1.0,
          color: AppColors.borderColor,
        ),
      ),
      child: Stack(
        children: [
          if (myFile.creatorUserType == "self")
            Align(
              alignment: Alignment.centerLeft,
              child: ClipPath(
                clipper: Lable(),
                child: Container(
                  alignment: Alignment.center,
                  color: AppColors.primaryColor,
                  width: 30,
                  height: 35,
                  child: Text(
                    "خودم",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                if (myFile.creatorUserType == "self")
                  const SizedBox(
                    height: 25,
                  ),
                CardInfoListTile(
                  title: "شناسه پرونده",
                  value: myFile.orderId.toString(),
                ),
                CardInfoListTile(
                  title: "نام مشتری",
                  value: myFile.applicantUserFullName,
                ),
                CardInfoListTile(
                  title: "تلفن همراه",
                  value: myFile.applicantUserPhoneNumber,
                ),
                CardInfoListTile(
                  title: "محل بازدید",
                  value: myFile.visitLocation,
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF6F6F8),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      CardInfoListTile(
                        title: "وضعیت پرونده",
                        prefixIcon: IRPooshesh.document_text,
                        value: myFile.status,
                      ),
                      CardInfoListTile(
                        isZeroPadding: true,
                        title: "زمان بازدید",
                        prefixIcon: IRPooshesh.clock,
                        value: "${myFile.visitDate} _ ${myFile.visitTime}",
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                LayoutBuilder(builder: (context, BoxConstraints constraints) {
                  return Row(
                    mainAxisAlignment: myFile.healthCertificateUpload ?? false
                        ? MainAxisAlignment.end
                        : MainAxisAlignment.center,
                    children: [
                      MyOutlinedButton(
                        onPressed: () {},
                        title: 'ورود به صفحه پرونده',
                      ),
                      if (myFile.healthCertificateUpload ?? false)
                        SizedBox(
                          width: constraints.minWidth / 5,
                        ),
                      if (myFile.healthCertificateUpload ?? false)
                        Column(
                          children: [
                            ClipPath(
                              clipper: Hexagon(),
                              child: Container(
                                color: AppColors.greenColor,
                                width: 41,
                                height: 41,
                                child: const Icon(
                                  IRPooshesh.tick,
                                  size: 14,
                                  color: AppColors.whiteColor,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              'انجام شد',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                    color: AppColors.greenColor,
                                  ),
                            ),
                          ],
                        ),
                    ],
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
