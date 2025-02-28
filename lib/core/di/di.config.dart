// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/home/data/datasource/contract/datasource_contract.dart'
    as _i513;
import '../../features/home/data/datasource/remote/remote_datasource_impl.dart'
    as _i329;
import '../../features/home/data/repo/category_repo_impl.dart' as _i749;
import '../../features/home/domain/repo/category_repo_contract.dart' as _i994;
import '../../features/home/domain/usecase/get_category_usecase.dart' as _i390;
import '../api_manager/api_manager.dart' as _i266;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i266.ApiManager>(() => _i266.ApiManager());
    gh.singleton<_i513.DataSourceContract>(
        () => _i329.RemoteDataSourceImpl(gh<_i266.ApiManager>()));
    gh.factory<_i994.CategoryRepoContract>(
        () => _i749.CategoryRepoImpl(gh<_i513.DataSourceContract>()));
    gh.factory<_i390.GetCategoriesUseCase>(() => _i390.GetCategoriesUseCase(
        categoryRepo: gh<_i994.CategoryRepoContract>()));
    return this;
  }
}
