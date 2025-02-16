import 'package:ecommerce_elevate/features/home/domain/entities/category_entity.dart';

abstract class  DataSourceContract{
  Future<List<CategoryEntity>> getCategories();

}
