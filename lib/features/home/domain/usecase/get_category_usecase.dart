import 'package:ecommerce_elevate/features/home/domain/entities/category_entity.dart';
import 'package:ecommerce_elevate/features/home/domain/repo/category_repo_contract.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCategoriesUseCase{
  CategoryRepoContract categoryRepo;
  GetCategoriesUseCase({required this.categoryRepo});
  Future<List<CategoryEntity>> call() => categoryRepo.getCategory() ;
}