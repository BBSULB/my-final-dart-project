import 'dart:io';

void main() {
  // Menu and prices
  List<String> menu = ["Burger", "Pizza", "Fries", "Biryani", "Cold Drink"];
  List<int> prices = [300, 800, 150, 250, 100];

  // Customer order
  List<String> order = [];
  List<int> orderPrice = [];

  while (true) {
    print("\n1. Show Menu");
    print("2. Add Food Item");
    print("3. Take Order");
    print("4. Show Bill");
    print("5. Exit");

    stdout.write("Enter choice: ");
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      print("\n----- MENU -----");
      for (int i = 0; i < menu.length; i++) {
        print("${i + 1}. ${menu[i]} - Rs ${prices[i]}");
      }
    } else if (choice == 2) {
      stdout.write("Food Name: ");
      String name = stdin.readLineSync()!;
      stdout.write("Price: ");
      int price = int.parse(stdin.readLineSync()!);
      menu.add(name);
      prices.add(price);
      print("$name added to menu!");
    } else if (choice == 3) {
      print("\n----- MENU -----");
      for (int i = 0; i < menu.length; i++) {
        print("${i + 1}. ${menu[i]} - Rs ${prices[i]}");
      }
      stdout.write("Enter item number to order: ");
      int item = int.parse(stdin.readLineSync()!);
      if (item > 0 && item <= menu.length) {
        order.add(menu[item - 1]);
        orderPrice.add(prices[item - 1]);
        print("${menu[item - 1]} added to order!");
      } else {
        print("Invalid number!");
      }
    } else if (choice == 4) {
      print("\n----- BILL -----");
      int total = 0;
      for (int i = 0; i < order.length; i++) {
        print("${order[i]} - Rs ${orderPrice[i]}");
        total += orderPrice[i];
      }
      print("----------------");
      print("Total: Rs $total");
    } else if (choice == 5) {
      print("Thank you!");
      break;
    } else {
      print("Invalid choice!");
    }
  }
}
