import 'folder_create.dart';

void addCustomStructure(String projectName) async {
  print('Adding custom structure to the project');
/* =========================== CREATE CORE AND FEATURE ========================================*/
  createDirectoryAndFile('lib/core');
  createDirectoryAndFile('lib/core/services');
  createDirectoryAndFile('lib/core/widgets');
  createDirectoryAndFile('lib/core/enums');
  createDirectoryAndFile('lib/core/constants');
  createDirectoryAndFile('lib/core/bloc');
  createDirectoryAndFile('lib/core/config');
  createDirectoryAndFile('lib/core/di');
  createDirectoryAndFile('lib/core/errors');
  createDirectoryAndFile('lib/core/extensions');
  createDirectoryAndFile('lib/core/observers');
  createDirectoryAndFile('lib/core/routes');
  createDirectoryAndFile('lib/core/themes');
  createDirectoryAndFile('lib/core/usecases');
  createDirectoryAndFile('lib/core/utils');

  createDirectoryAndFile('lib/features');

/* =========================== BLOC FILES CREATE ========================================*/

  createFile(
    'lib/core/bloc/bloc_scope.dart',
    content: await readContentFromFile('lib/assets/bloc_scope.txt'),
  );

  createFile(
    'lib/core/bloc/bloc_observer.dart',
    content: await readContentFromFile('lib/assets/bloc_observer.txt'),
  );

  /* ============================= CONSTANTS FILE CREATE ========================================*/

  createFile(
    'lib/core/constants/constatns.dart',
    content: await readContentFromFile('lib/assets/constants.txt'),
  );

  /* =========================== CONFIG FILES CREATE ========================================*/

  createFile(
    'lib/core/config/local_config.dart',
    content: await readContentFromFile('lib/assets/local_config.txt'),
  );

  createFile(
    'lib/core/config/network_config.dart',
    content: await readContentFromFile('lib/assets/network_config.txt'),
  );

  /* =========================== ROUTES FILES CREATE ========================================*/

  createFile(
    'lib/core/routes/app_router.dart',
    content: await readContentFromFile('lib/assets/app_router.txt'),
  );

  createFile(
    'lib/core/routes/navigation_observer.dart',
    content: await readContentFromFile('lib/assets/navigation_observer.txt'),
  );

  /* ============================= DI FILE CREATE ========================================*/

  createFile(
    'lib/core/di/service_locator.dart',
    content: await readContentFromFile('lib/assets/di.txt'),
  );

  /* ============================= ERRORS FILE CREATE ========================================*/

  createFile(
    'lib/core/errors/exeptions.dart',
    content: await readContentFromFile('lib/assets/exeptions.txt'),
  );

  createFile(
    'lib/core/errors/failure.dart',
    content: await readContentFromFile('lib/assets/failure.txt'),
  );

  /* =========================== EXTENSION FILE CREATE ========================================*/

  createFile(
    'lib/core/extensions/extension.dart',
    content: await readContentFromFile('lib/assets/extension.txt'),
  );

  /* ============================= ENUMS FILE CREATE ========================================*/

  createFile(
    'lib/core/enums/enums.dart',
    content: await readContentFromFile('lib/assets/enums.txt'),
  );

/* =========================== USECASE FILE CREATE ========================================*/

  createFile(
    'lib/core/usecases/usecase.dart',
    content: await readContentFromFile('lib/assets/usecase.txt'),
  );

/* ============================= UTILS FILE CREATE ========================================*/

  createFile(
    'lib/core/utils/validators.dart',
    content: await readContentFromFile('lib/assets/validator.txt'),
  );
  createFile(
    'lib/core/utils/formatters.dart',
    content: await readContentFromFile('lib/assets/formatters.txt'),
  );

/* ============================= THEMES FILE CREATE ========================================*/

  createFile(
    'lib/core/themes/app_diemens.dart',
    content: await readContentFromFile('lib/assets/app_diemens.txt'),
  );

  createFile(
    'lib/core/themes/app_colors.dart',
    content: await readContentFromFile('lib/assets/app_colors.txt'),
  );
  createFile(
    'lib/core/themes/app_fonts.dart',
    content: await readContentFromFile('lib/assets/app_fonts.txt'),
  );

  createFile(
    'lib/core/themes/app_theme.dart',
    content: await readContentFromFile('lib/assets/app_theme.txt'),
  );
}
