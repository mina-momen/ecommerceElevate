import 'package:ecommerce_elevate/config/constants.dart';
import 'package:ecommerce_elevate/core/api_manager/api_manager.dart';
import 'package:ecommerce_elevate/features/home/data/datasource/contract/datasource_contract.dart';
import 'package:ecommerce_elevate/features/home/domain/entities/category_entity.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: DataSourceContract)
class RemoteDataSourceImpl implements DataSourceContract {
  ApiManager apiManager;

  RemoteDataSourceImpl(this.apiManager);

  @override
  Future<List<CategoryEntity>> getCategories() async{

   await  apiManager.getData(endPoint: AppConstants.getCategoriesEndpoint);
      return <CategoryEntity>[];
  }
}
