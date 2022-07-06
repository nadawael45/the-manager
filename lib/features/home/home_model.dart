
import 'package:flutter/material.dart';


import '../../core/app_images/app_images.dart';
import '../clients/view.dart';
import '../sports/view.dart';
import '../stadium/view.dart';
import '../subscription/view.dart';



class HomeModel {

  final String? name;
  final String? image;
  final Widget? page;


  HomeModel({this.name,this.image,this.page});


}
List<HomeModel> homeGridList=
[
  HomeModel(
    image: AppImages.subscription,
    name: 'الاشتراكات',
    page: SubscriptionView()
  ),
  HomeModel(
    image: AppImages.sports,
    name: 'الالعاب',
      page: const SportsView()


  ),
  HomeModel(
    image: AppImages.stadium,
    name: 'الملاعب',
      page: const StadiumView()

  ),
  HomeModel(
    image: AppImages.clients,
    name: 'العملاء',
      page: const ClientView()


  ),

] ;







