// Path: lib/features/project_owner/presentation/providers/project_category_provider.dart
import 'package:find_invest_mobile/features/project_category/domain/entities/project_category_entity.dart';
import 'package:find_invest_mobile/features/project_category/domain/usecases/get_categories_usecase.dart';
import 'package:find_invest_mobile/features/project_category/domain/usecases/get_category_by_id_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:find_invest_mobile/config/service_locator.dart';

// Enum pour gérer les types d'erreurs
enum ProjectErrorType {
  network,
  validation,
  notFound,
  server,
  unknown,
}

class ProjectCategoryState {
  final List<ProjectCategoryEntity> categories;
  final ProjectCategoryEntity? selectedCategory;
  final bool isLoading;
  final ProjectErrorType? errorType;
  final String? errorMessage;

  ProjectCategoryState({
    this.categories = const [],
    this.selectedCategory,
    this.isLoading = false,
    this.errorType,
    this.errorMessage,
  });

  ProjectCategoryState copyWith({
    List<ProjectCategoryEntity>? categories,
    ProjectCategoryEntity? selectedCategory,
    bool? isLoading,
    ProjectErrorType? errorType,
    String? errorMessage,
  }) {
    return ProjectCategoryState(
      categories: categories ?? this.categories,
      selectedCategory: selectedCategory ?? this.selectedCategory,
      isLoading: isLoading ?? this.isLoading,
      errorType: errorType,
      errorMessage: errorMessage,
    );
  }
}

final projectCategoryProvider =
    StateNotifierProvider<ProjectCategoryNotifier, ProjectCategoryState>((ref) {
  return ProjectCategoryNotifier(
    getCategoriesUseCase: getIt<GetCategories>(),
    getCategoryByIdUseCase: getIt<GetCategoryById>(),
  );
});

class ProjectCategoryNotifier extends StateNotifier<ProjectCategoryState> {
  final GetCategories getCategoriesUseCase;
  final GetCategoryById getCategoryByIdUseCase;

  ProjectCategoryNotifier({
    required this.getCategoriesUseCase,
    required this.getCategoryByIdUseCase,
  }) : super(ProjectCategoryState());

  // Méthode utilitaire pour gérer les erreurs
  ProjectErrorType _mapErrorToType(dynamic error) {
    // À personnaliser selon vos besoins (par exemple, vérifier le type d'exception)
    if (error.toString().contains('Network')) return ProjectErrorType.network;
    if (error.toString().contains('404')) return ProjectErrorType.notFound;
    if (error.toString().contains('Validation')) {
      return ProjectErrorType.validation;
    }
    if (error.toString().contains('Server')) return ProjectErrorType.server;
    return ProjectErrorType.unknown;
  }

  Future<void> fetchCategories(
      {String? parent,
      bool includeInactive = false,
      bool includeCount = false}) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final categories = await getCategoriesUseCase(
          parent: parent,
          includeInactive: includeInactive,
          includeCount: includeCount);
      state = state.copyWith(categories: categories, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> fetchCategoryById(String id) async {
    state =
        state.copyWith(isLoading: true, errorType: null, errorMessage: null);
    try {
      final category = await getCategoryByIdUseCase(id);
      state = state.copyWith(selectedCategory: category, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorType: _mapErrorToType(e),
        errorMessage: e.toString(),
      );
    }
  }
}
