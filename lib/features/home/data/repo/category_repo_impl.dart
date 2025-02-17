import 'package:ecommerce_elevate/features/home/data/datasource/contract/datasource_contract.dart';
import 'package:ecommerce_elevate/features/home/domain/entities/category_entity.dart';
import 'package:ecommerce_elevate/features/home/domain/repo/category_repo_contract.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CategoryRepoContract)
class CategoryRepoImpl implements CategoryRepoContract {
  DataSourceContract dataSource;

  CategoryRepoImpl(this.dataSource);

  @override
  Future<List<CategoryEntity>> getCategory() async {
    final result = await dataSource.getCategories();
    return result;
  }
}
