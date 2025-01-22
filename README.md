# e_commerce_online
import 'dart:io';

void main() {
// مسار المشروع الحالي
final projectPath = "${Directory.current.path}/lib";

// قائمة المجلدات التي سيتم إنشاؤها
final directories = {
'$projectPath/core/utils': ['constants.dart', 'helpers.dart'],
'$projectPath/data/models': ['product_model.dart', 'user_model.dart'],
'$projectPath/data/repositories': ['product_repository_impl.dart', 'user_repository_impl.dart'],
'$projectPath/data/datasources': ['product_remote_data_source.dart', 'user_remote_data_source.dart'],
'$projectPath/domain/entities': ['product.dart', 'user.dart'],
'$projectPath/domain/repositories': ['product_repository.dart', 'user_repository.dart'],
'$projectPath/domain/usecases': ['get_products.dart', 'get_user_info.dart'],
'$projectPath/presentation/pages': ['home_page.dart', 'product_details_page.dart', 'cart_page.dart'],
'$projectPath/presentation/widgets': ['product_card.dart', 'cart_item.dart'],
};

// حلقة لإنشاء كل المجلدات والملفات
directories.forEach((dirPath, files) {
final directory = Directory(dirPath);

    // التحقق من وجود المجلد، وإن لم يكن موجودًا يتم إنشاؤه
    if (!directory.existsSync()) {
      directory.createSync(recursive: true);
      print('Created directory: $dirPath ✔');
    } else {
      print('Directory already exists: $dirPath');
    }

    // إنشاء الملفات داخل المجلد
    for (var file in files) {
      final filePath = File('$dirPath/$file');
      if (!filePath.existsSync()) {
        filePath.createSync();
        print('Created file: ${filePath.path} ✔');
      } else {
        print('File already exists: ${filePath.path}');
      }
    }
});

print('تم إنشاء المجلدات والملفات بنجاح ✔');
}
lib/
├── core/
│   └── utils/
│       ├── constants.dart
│       └── helpers.dart
├── data/
│   ├── models/
│   │   ├── product_model.dart
│   │   └── user_model.dart
│   ├── repositories/
│   │   ├── product_repository_impl.dart
│   │   └── user_repository_impl.dart
│   └── datasources/
│       ├── product_remote_data_source.dart
│       └── user_remote_data_source.dart
├── domain/
│   ├── entities/
│   │   ├── product.dart
│   │   └── user.dart
│   ├── repositories/
│   │   ├── product_repository.dart
│   │   └── user_repository.dart
│   └── usecases/
│       ├── get_products.dart
│       └── get_user_info.dart
├── presentation/
│   ├── pages/
│   │   ├── home_page.dart
│   │   ├── product_details_page.dart
│   │   └── cart_page.dart
│   └── widgets/
│       ├── product_card.dart
│       └── cart_item.dart
