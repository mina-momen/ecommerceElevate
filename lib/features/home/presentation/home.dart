import 'package:ecommerce_elevate/core/api_manager/api_manager.dart';
import 'package:ecommerce_elevate/features/home/data/datasource/remote/remote_datasource_impl.dart';
import 'package:ecommerce_elevate/features/home/data/repo/category_repo_impl.dart';
import 'package:ecommerce_elevate/features/home/domain/usecase/get_category_usecase.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GetCategoriesUseCase useCase =GetCategoriesUseCase(
        categoryRepo: CategoryRepoImpl(RemoteDataSourceImpl(ApiManager())));
    return Scaffold(
      body:Center(
        child: Text("Home Screen"),
      ) ,
    );
  }
}
