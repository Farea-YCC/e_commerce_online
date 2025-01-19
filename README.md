<<<<<<< HEAD
Here’s a professional **Markdown** guide for your GitHub repository, including your Dart project and Git workflow documentation:

---

# E-Commerce Online

## Overview

This project is a **Flutter-based e-commerce application** developed with a structured and dynamic folder architecture using **Dart**. The structure ensures scalability and maintainability for future enhancements.

---

## 🛠️ Project Structure Generation Script

The following Dart script automatically creates a dynamic and well-organized folder structure for the Flutter project.

### Code:

```dart
import 'dart:io';

void main() {
  // Current project path
  final projectPath = "${Directory.current.path}/lib";

  // List of directories and their files
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

  // Loop to create folders and files
  directories.forEach((dirPath, files) {
    final directory = Directory(dirPath);

    // Check if the folder exists; if not, create it
=======
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
>>>>>>> 60c658d (تم حل كثير من المشاكل واضافة تحسين في التصميم)
    if (!directory.existsSync()) {
      directory.createSync(recursive: true);
      print('Created directory: $dirPath ✔');
    } else {
      print('Directory already exists: $dirPath');
    }

<<<<<<< HEAD
    // Create files inside the folder
=======
    // إنشاء الملفات داخل المجلد
>>>>>>> 60c658d (تم حل كثير من المشاكل واضافة تحسين في التصميم)
    for (var file in files) {
      final filePath = File('$dirPath/$file');
      if (!filePath.existsSync()) {
        filePath.createSync();
        print('Created file: ${filePath.path} ✔');
      } else {
        print('File already exists: ${filePath.path}');
      }
    }
<<<<<<< HEAD
  });

  print('Folders and files created successfully ✔');
}
```

---

### 📂 Generated Folder Structure

This script generates the following **directory structure**:

```
lib/
  ├── core/
  │     └── utils/
  │             ├── constants.dart
  │             └── helpers.dart
  ├── data/
  │     ├── models/
  │     │       ├── product_model.dart
  │     │       └── user_model.dart
  │     ├── repositories/
  │     │       ├── product_repository_impl.dart
  │     │       └── user_repository_impl.dart
  │     └── datasources/
  │             ├── product_remote_data_source.dart
  │             └── user_remote_data_source.dart
  ├── domain/
  │     ├── entities/
  │     │       ├── product.dart
  │     │       └── user.dart
  │     ├── repositories/
  │     │       ├── product_repository.dart
  │     │       └── user_repository.dart
  │     └── usecases/
  │             ├── get_products.dart
  │             └── get_user_info.dart
  └── presentation/
        ├── pages/
        │       ├── home_page.dart
        │       ├── product_details_page.dart
        │       └── cart_page.dart
        └── widgets/
                ├── product_card.dart
                └── cart_item.dart
```

---

## 🌀 Git Workflow

### Step-by-Step Guide for Collaborating on This Project

Follow these steps to ensure smooth collaboration using **Git**:

1. **Update the main branch**:
    - Switch to the main branch:
      ```bash
      git checkout master
      ```
    - Fetch the latest updates:
      ```bash
      git pull origin master
      ```

2. **Create a new feature branch**:
    - Create and switch to a new branch:
      ```bash
      git checkout -b feature-branch
      ```

3. **Start coding**:
    - Make the necessary changes in your project files.

4. **Save your changes locally (Commit)**:
    - Stage your changes:
      ```bash
      git add .
      ```
    - Commit with a descriptive message:
      ```bash
      git commit -m "Description of the changes"
      ```

5. **Sync with the main branch**:
    - Switch to the main branch:
      ```bash
      git checkout master
      ```
    - Fetch the latest changes:
      ```bash
      git pull origin master
      ```

6. **Merge changes from the main branch into your feature branch**:
    - Switch back to your feature branch:
      ```bash
      git checkout feature-branch
      ```
    - Merge the latest changes:
      ```bash
      git merge master
      ```

7. **Push your changes to the remote repository**:
    - Push your feature branch:
      ```bash
      git push origin feature-branch
      ```

8. **Create a Pull Request (PR)**:
    - Open GitHub or GitLab.
    - Create a **Pull Request (PR)** to merge your changes into the `master` branch.
    - Wait for code review and approval.

---

## ✨ Contribution Guidelines

- Ensure all new code is properly documented.
- Follow the project's coding standards and naming conventions.
- Run all necessary tests before pushing changes.
- Raise issues or discuss major changes in advance.

---

## 📜 License

This project is licensed under the [MIT License](LICENSE).

--- 

Feel free to use and modify this template for your GitHub repository! 😊
=======
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
>>>>>>> 60c658d (تم حل كثير من المشاكل واضافة تحسين في التصميم)
