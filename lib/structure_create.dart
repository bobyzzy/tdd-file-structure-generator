import 'dart:developer';
import 'dart:io';

import 'folder_create.dart';
import 'package:path/path.dart' as p;

void addCustomStructure(String projectName) async {
  print('Adding custom structure to the project');

  final scriptDirectory = p.dirname(p.dirname(Platform.script.toFilePath()));

  // Путь к файлам пакета
  final packageLibDirectory = p.join(scriptDirectory, 'lib');

  log(packageLibDirectory);
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
    content: await readContentFromFile('$packageLibDirectory/content/bloc_scope.txt'),
  );

  createFile(
    'lib/core/bloc/bloc_observer.dart',
    content: await readContentFromFile('$packageLibDirectory/content/bloc_observer.txt'),
  );

  /* ============================= CONSTANTS FILE CREATE ========================================*/

  createFile(
    'lib/core/constants/constatns.dart',
    content: await readContentFromFile('$packageLibDirectory/content/constants.txt'),
  );

  /* =========================== CONFIG FILES CREATE ========================================*/

  createFile(
    'lib/core/config/local_config.dart',
    content: await readContentFromFile('$packageLibDirectory/content/local_config.txt'),
  );

  createFile(
    'lib/core/config/network_config.dart',
    content: await readContentFromFile('$packageLibDirectory/content/network_config.txt'),
  );

  /* =========================== ROUTES FILES CREATE ========================================*/

  createFile(
    'lib/core/routes/app_router.dart',
    content: await readContentFromFile('$packageLibDirectory/content/app_router.txt'),
  );

  createFile(
    'lib/core/routes/navigation_observer.dart',
    content: await readContentFromFile('$packageLibDirectory/content/navigation_observer.txt'),
  );

  /* ============================= DI FILE CREATE ========================================*/

  createFile(
    'lib/core/di/service_locator.dart',
    content: await readContentFromFile('$packageLibDirectory/content/di.txt'),
  );

  /* ============================= ERRORS FILE CREATE ========================================*/

  createFile(
    'lib/core/errors/exeptions.dart',
    content: await readContentFromFile('$packageLibDirectory/content/exeptions.txt'),
  );

  createFile(
    'lib/core/errors/failure.dart',
    content: await readContentFromFile('$packageLibDirectory/content/failure.txt'),
  );

  /* =========================== EXTENSION FILE CREATE ========================================*/

  createFile(
    'lib/core/extensions/extension.dart',
    content: await readContentFromFile('$packageLibDirectory/content/extension.txt'),
  );

  /* ============================= ENUMS FILE CREATE ========================================*/

  createFile(
    'lib/core/enums/enums.dart',
    content: await readContentFromFile('$packageLibDirectory/content/enums.txt'),
  );

/* =========================== USECASE FILE CREATE ========================================*/

  createFile(
    'lib/core/usecases/usecase.dart',
    content: await readContentFromFile('$packageLibDirectory/content/usecase.txt'),
  );

/* ============================= UTILS FILE CREATE ========================================*/

  createFile(
    'lib/core/utils/validators.dart',
    content: await readContentFromFile('$packageLibDirectory/content/validator.txt'),
  );
  createFile(
    'lib/core/utils/formatters.dart',
    content: await readContentFromFile('$packageLibDirectory/content/formatters.txt'),
  );

/* ============================= THEMES FILE CREATE ========================================*/

  createFile(
    'lib/core/themes/app_diemens.dart',
    content: await readContentFromFile('$packageLibDirectory/content/app_diemens.txt'),
  );

  createFile(
    'lib/core/themes/app_colors.dart',
    content: await readContentFromFile('$packageLibDirectory/content/app_colors.txt'),
  );
  createFile(
    'lib/core/themes/app_fonts.dart',
    content: await readContentFromFile('$packageLibDirectory/content/app_fonts.txt'),
  );

  createFile(
    'lib/core/themes/app_theme.dart',
    content: await readContentFromFile('$packageLibDirectory/content/app_theme.txt'),
  );
}
