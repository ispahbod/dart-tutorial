import 'dart:io';

class Task {
  late String title;
  late String description;
  bool isCompleted = false;

  Task(this.title, this.description);

  void displayTask() {
    print("Title: $title");
    print("Description: $description");
    print("Status: ${isCompleted ? 'Completed' : 'Not Completed'}");
    print("------------------------");
  }
}

class TaskManager {
  late List<Task> tasks;

  TaskManager() {
    tasks = [];
  }

  void addTask(Task task) {
    tasks.add(task);
  }

  void displayAllTasks() {
    for (Task task in tasks) {
      task.displayTask();
    }
  }

  Task findTaskByTitle(String title) {
    return tasks.firstWhere((task) => task.title == title, orElse: () => Task("", ""));
  }

  void editTask(String title, String newDescription) {
    Task task = findTaskByTitle(title);
    if (task.title.isNotEmpty) {
      task.description = newDescription;
      print("Task edited successfully!");
    } else {
      print("Task not found.");
    }
  }

  void deleteTask(String title) {
    Task task = findTaskByTitle(title);
    if (task.title.isNotEmpty) {
      tasks.remove(task);
      print("Task deleted successfully!");
    } else {
      print("Task not found.");
    }
  }

  void markTaskAsCompleted(String title) {
    Task task = findTaskByTitle(title);
    if (task.title.isNotEmpty) {
      task.isCompleted = true;
      print("Task marked as completed!");
    } else {
      print("Task not found.");
    }
  }

  void saveTasksToFile() {
    File file = File('tasks.txt');
    IOSink sink = file.openWrite();

    for (Task task in tasks) {
      sink.writeln("${task.title}, ${task.description}, ${task.isCompleted}");
    }

    sink.close();
  }

  void loadTasksFromFile() {
    File file = File('tasks.txt');

    if (file.existsSync()) {
      List<String> lines = file.readAsLinesSync();

      for (String line in lines) {
        List<String> data = line.split(', ');
        Task task = Task(data[0], data[1]);
        task.isCompleted = data[2] == 'true';
        tasks.add(task);
      }
    }
  }

  void displayIncompleteTasks() {
    print("Incomplete Tasks:");
    for (Task task in tasks.where((task) => !task.isCompleted)) {
      task.displayTask();
    }
  }

  void completeTask() {
    displayIncompleteTasks();
    stdout.write("Enter Task Title to Mark as Completed: ");
    String completeTitle = stdin.readLineSync()!;
    Task task = findTaskByTitle(completeTitle);
    if (task.title.isNotEmpty) {
      markTaskAsCompleted(completeTitle);
    } else {
      print("Task not found.");
    }
  }
}

void main() {
  TaskManager taskManager = TaskManager();
  taskManager.loadTasksFromFile();

  while (true) {
    print("\n1. Add Task");
    print("2. Display All Tasks");
    print("3. Display Incomplete Tasks");
    print("4. Edit Task");
    print("5. Delete Task");
    print("6. Mark Task as Completed");
    print("7. Show Completed Tasks");
    print("8. Save and Exit");

    stdout.write("Enter your choice (1-8): ");
    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        stdout.write("Enter Task Title: ");
        String title = stdin.readLineSync()!;
        stdout.write("Enter Task Description: ");
        String description = stdin.readLineSync()!;
        Task newTask = Task(title, description);
        taskManager.addTask(newTask);
        break;

      case '2':
        taskManager.displayAllTasks();
        break;

      case '3':
        taskManager.displayIncompleteTasks();
        break;

      case '4':
        stdout.write("Enter Task Title to Edit: ");
        String editTitle = stdin.readLineSync()!;
        stdout.write("Enter New Task Description: ");
        String newDescription = stdin.readLineSync()!;
        taskManager.editTask(editTitle, newDescription);
        break;

      case '5':
        stdout.write("Enter Task Title to Delete: ");
        String deleteTitle = stdin.readLineSync()!;
        taskManager.deleteTask(deleteTitle);
        break;

      case '6':
        taskManager.completeTask();
        break;

      case '7':
        print("Completed Tasks:");
        taskManager.tasks.where((task) => task.isCompleted).forEach((task) => task.displayTask());
        break;

      case '8':
        taskManager.saveTasksToFile();
        print("Tasks saved successfully. Exiting the Task Manager. Goodbye!");
        exit(0);

      default:
        print("Invalid choice. Please enter a number between 1 and 8.");
    }
  }
}
