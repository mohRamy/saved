// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:get/get.dart';
// import 'package:share_plus/share_plus.dart';
// import '../../themes/app_colors.dart';
// import '../helpers/app_helper/app_spacing.dart';
// import '../helpers/app_helper/date_time_helper.dart';

// import '../../features/taps/home/presentation/components/profile_avatar.dart';
// import '../routes/app_pages.dart';
// import 'primary_text.dart';
// import '../constants/app_keys.dart';
// import '../../resources/local/user_local.dart';
// import '../../themes/font_family.dart';
// import '../../utils/sizer_custom/sizer.dart';

// import '../displaies/display_image_video_card.dart';
// import '../components/components.dart';
// import '../../features/taps/home/data/models/post_model.dart';
// import '../../features/taps/home/presentation/controllers/home_controller.dart';
// import 'expandable_post_widget.dart';

// class PostWidget extends GetView<HomeController> {
//   final PostModel postData;
//   final int index;

//   const PostWidget({
//     super.key,
//     required this.postData,
//     required this.index,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         verticalSpace(6),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 15.0),
//           child: Row(
//             children: <Widget>[
//               InkWell(
//                   onTap: () {
//                     postData.userData.id != UserLocal().getUserId()
//                         ? AppNavigator.push(
//                             AppRoutes.anotherProfile,
//                             arguments: {
//                               "user-id": postData.userData.id,
//                             },
//                           )
//                         : AppNavigator.push(
//                             AppRoutes.profile,
//                           );
//                   },
//                   child: postData.userData.photo != ''
//                       ? ProfileAvatar(
//                           imageUrl: postData.userData.photo,
//                           hasBorder: false,
//                           isActive: postData.userData.isOnline,
//                         )
//                       : ProfileAvatar(
//                           imageUrl: AppKeys.urlImageDefault,
//                           hasBorder: false,
//                           isActive: postData.userData.isOnline,
//                         )),
//               horizontalSpace(5),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   AppText(postData.userData.name),
//                   verticalSpace(5),
//                   Text(
//                     timeAgoCustom(postData.createdAt),
//                     style: TextStyle(
//                       color: Get.isDarkMode ? mCL : blackColor,
//                       fontFamily: FontFamily.lato,
//                     ),
//                   ),
//                 ],
//               ),
//               const Spacer(),
//               GetBuilder<HomeController>(builder: (homeCtrl) {
//                 return GestureDetector(
//                   onTap: () {
//                     Get.bottomSheet(
//                       SingleChildScrollView(
//                         child: Container(
//                           decoration: BoxDecoration(
//                             borderRadius:
//                                 BorderRadius.circular(Dimensions.size15),
//                             color: Get.isDarkMode ? blackColor : mCL,
//                           ),
//                           padding: const EdgeInsetsDirectional.only(
//                             top: 4,
//                           ),
//                           width: Dimensions.screenWidth,
//                           height: 200.sp,
//                           child: Column(
//                             children: [
//                               Flexible(
//                                 child: Container(
//                                   height: 6,
//                                   width: 40,
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(
//                                         Dimensions.size20),
//                                     color: Get.isDarkMode
//                                         ? Colors.grey[600]
//                                         : Colors.grey[300],
//                                   ),
//                                 ),
//                               ),
//                               verticalSpace(10),
//                               postData.userId == UserLocal().getUserId()
//                                   ? Column(
//                                       children: [
//                                         Components.buildbottomsheet(
//                                             icon: const Icon(
//                                               Icons.edit,
//                                               color: primaryColor,
//                                             ),
//                                             label: "update".tr,
//                                             ontap: () {
//                                               AppNavigator.pop();
//                                               AppNavigator.push(
//                                                   AppRoutes.updatePost,
//                                                   arguments: {
//                                                     'post': postData,
//                                                   });
//                                             }),
//                                         Divider(
//                                           color: Get.isDarkMode
//                                               ? Colors.white
//                                               : Colors.black,
//                                         ),
//                                       ],
//                                     )
//                                   : const SizedBox(),
//                               postData.userId == UserLocal().getUserId()
//                                   ? Column(
//                                       children: [
//                                         Components.buildbottomsheet(
//                                             icon: const Icon(
//                                               Icons.delete,
//                                               color: Colors.red,
//                                             ),
//                                             label: "delete".tr,
//                                             ontap: () {
//                                               homeCtrl.deletePost(postData.id);
//                                               AppNavigator.pop();
//                                             }),
//                                         Divider(
//                                           color: Get.isDarkMode
//                                               ? Colors.white
//                                               : Colors.black,
//                                         ),
//                                       ],
//                                     )
//                                   : const SizedBox(),
//                               Components.buildbottomsheet(
//                                   icon: const Icon(
//                                     Icons.cancel,
//                                     color: primaryColor,
//                                   ),
//                                   label: "cancel_sheet".tr,
//                                   ontap: () {
//                                     AppNavigator.pop();
//                                   }),
//                             ],
//                           ),
//                         ),
//                       ),
//                       elevation: 0.4,
//                     );
//                   },
//                   child: Icon(
//                     Icons.more_horiz,
//                     size: 20.sp,
//                   ),
//                 );
//               }),
//               horizontalSpace(5),
//               postData.userId != UserLocal().getUserId()
//                   ? GestureDetector(
//                       onTap: () {
//                         Get.bottomSheet(
//                           SingleChildScrollView(
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 borderRadius:
//                                     BorderRadius.circular(Dimensions.size15),
//                                 color: Get.isDarkMode ? blackColor : mCL,
//                               ),
//                               padding: const EdgeInsetsDirectional.only(
//                                 top: 4,
//                               ),
//                               width: Dimensions.screenWidth,
//                               height: 150.sp,
//                               child: Column(
//                                 children: [
//                                   Flexible(
//                                     child: Container(
//                                       height: 6,
//                                       width: 40,
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(
//                                             Dimensions.size20),
//                                         color: Get.isDarkMode
//                                             ? Colors.grey[600]
//                                             : Colors.grey[300],
//                                       ),
//                                     ),
//                                   ),
//                                   verticalSpace(10),
//                                   Components.buildbottomsheet(
//                                       icon: const Icon(
//                                         Icons.delete,
//                                         color: Colors.red,
//                                       ),
//                                       label: "delete_from_list".tr,
//                                       ontap: () {
//                                         controller.posts.removeAt(index);
//                                         AppNavigator.pop();
//                                       }),
//                                   Divider(
//                                     color: Get.isDarkMode
//                                         ? Colors.white
//                                         : Colors.black,
//                                   ),
//                                   Components.buildbottomsheet(
//                                       icon: const Icon(
//                                         Icons.cancel,
//                                         color: primaryColor,
//                                       ),
//                                       label: "cancel_sheet".tr,
//                                       ontap: () {
//                                         AppNavigator.pop();
//                                       }),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           elevation: 0.4,
//                         );
//                       },
//                       child: Icon(
//                         Icons.clear,
//                         size: 20.sp,
//                       ),
//                     )
//                   : const SizedBox(),
//             ],
//           ),
//         ),
//         verticalSpace(10),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 15.0),
//           child: ExpandablePostWidget(
//             text: postData.description ?? "",
//           ),
//           // AppText(postData.description ?? "", type: TextType.medium),
//         ),
//         verticalSpace(6),
//         postData.posts.isNotEmpty
//             ? SizedBox(
//                 height: 380,
//                 child: CarouselSlider.builder(
//                   itemCount: postData.posts.length,
//                   options: CarouselOptions(
//                     viewportFraction: 1.0,
//                     enableInfiniteScroll: false,
//                     height: 380,
//                     scrollPhysics: const BouncingScrollPhysics(),
//                     autoPlay: false,
//                   ),
//                   itemBuilder: (context, i, realIndex) => DisplayImageVideoCard(
//                     file: postData.posts[i].post,
//                     type: postData.posts[i].type,
//                     isOut: false,
//                   ),
//                 ),
//               )
//             : Container(),
//         verticalSpace(6),
//         GetBuilder<HomeController>(builder: (homeCtrl) {
//           return Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 15.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 GestureDetector(
//                   onTap: () {
//                     AppNavigator.push(
//                       AppRoutes.like,
//                       arguments: {
//                         "users-id": postData.likes,
//                       },
//                     );
//                   },
//                   child: Row(
//                     children: <Widget>[
//                       const Icon(
//                         FontAwesomeIcons.thumbsUp,
//                         size: 15.0,
//                         color: primaryColor,
//                       ),
//                       horizontalSpace(3),
//                       Text(
//                         homeCtrl.countPostLikes.containsKey(postData.id)
//                             ? homeCtrl.countPostLikes[postData.id].toString()
//                             : "0",
//                         style: TextStyle(
//                           color: Get.isDarkMode ? mCL : blackColor,
//                           fontFamily: FontFamily.lato,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Row(
//                   children: <Widget>[
//                     Text(
//                       '${postData.comments.length}${'comments'.tr} • ',
//                       style: TextStyle(
//                         color: Get.isDarkMode ? mCL : blackColor,
//                         fontFamily: FontFamily.lato,
//                       ),
//                     ),
//                     Text(
//                       '${postData.shares.length}${'shares'.tr}',
//                       style: TextStyle(
//                         color: Get.isDarkMode ? mCL : blackColor,
//                         fontFamily: FontFamily.lato,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           );
//         }),
//         const Divider(height: 30.0),
//         GetBuilder<HomeController>(builder: (homeCtrl) {
//           return Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 15.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget>[
//                 GestureDetector(
//                   onTap: () {
//                     homeCtrl.changePostLike(
//                       postData.id,
//                     );
//                   },
//                   child: Row(
//                     children: <Widget>[
//                       homeCtrl.postLikes.contains(postData.id)
//                           ? const Icon(
//                               FontAwesomeIcons.solidThumbsUp,
//                               size: 20.0,
//                               color: primaryColor,
//                             )
//                           : const Icon(FontAwesomeIcons.thumbsUp, size: 20.0),
//                       horizontalSpace(5),
//                       AppText('like'.tr, type: TextType.medium),
//                     ],
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     AppNavigator.push(
//                       AppRoutes.comment,
//                       arguments: {
//                         "item-id": postData.id,
//                         "item-type": "post",
//                       },
//                     );
//                   },
//                   child: Row(
//                     children: <Widget>[
//                       const Icon(FontAwesomeIcons.message, size: 20.0),
//                       horizontalSpace(5),
//                       AppText('comment'.tr, type: TextType.medium),
//                     ],
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: () async {
//                     await Share.share(
//                       postData.posts[0].post,
//                       subject: postData.description,
//                     ).then(
//                       (value) => homeCtrl.addPostShare(postData.id),
//                     );
//                   },
//                   child: Row(
//                     children: <Widget>[
//                       const Icon(FontAwesomeIcons.share, size: 20.0),
//                       horizontalSpace(5),
//                       AppText('share'.tr, type: TextType.medium),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           );
//         }),
//         verticalSpace(6),
//       ],
//     );
//   }
// }
