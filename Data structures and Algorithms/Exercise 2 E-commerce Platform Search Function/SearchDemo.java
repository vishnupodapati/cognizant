import java.util.Arrays;
import java.util.Comparator;

public class SearchDemo {

    // Linear Search - O(n)
    public static Product linearSearch(Product[] products, String name) {
        for (Product p : products) {
            if (p.productName.equalsIgnoreCase(name)) {
                return p;
            }
        }
        return null;
    }

    // Binary Search - O(log n)
    public static Product binarySearch(Product[] products, String name) {
        int low = 0;
        int high = products.length - 1;

        while (low <= high) {
            int mid = (low + high) / 2;

            int cmp = products[mid].productName.compareToIgnoreCase(name);

            if (cmp == 0) {
                return products[mid];
            } else if (cmp < 0) {
                low = mid + 1;
            } else {
                high = mid - 1;
            }
        }

        return null;
    }

    public static void main(String[] args) {

        Product[] products = {
            new Product(101, "Laptop", "Electronics"),
            new Product(102, "Shoes", "Fashion"),
            new Product(103, "Phone", "Electronics"),
            new Product(104, "Watch", "Accessories"),
            new Product(105, "Bag", "Fashion"),
            new Product(106, "Tablet", "Electronics"),
            new Product(107, "Headphones", "Electronics")
        };

        String searchItem = "Phone";

        System.out.println("==================================");
        System.out.println("📌 E-COMMERCE SEARCH FUNCTION");
        System.out.println("Searching for: " + searchItem);
        System.out.println("==================================\n");

        // Linear Search
        System.out.println("🔍 Linear Search Result:");
        Product result1 = linearSearch(products, searchItem);
        if (result1 != null) {
            result1.display();
        } else {
            System.out.println("Not Found");
        }

        System.out.println("\nTime Complexity: O(n)");
        System.out.println("Best Case: O(1), Worst Case: O(n)");

        // Sort for Binary Search
        Arrays.sort(products, Comparator.comparing(p -> p.productName.toLowerCase()));

        // Binary Search
        System.out.println("\n🔍 Binary Search Result:");
        Product result2 = binarySearch(products, searchItem);
        if (result2 != null) {
            result2.display();
        } else {
            System.out.println("Not Found");
        }

        System.out.println("\nTime Complexity: O(log n)");
        System.out.println("Best Case: O(1), Worst Case: O(log n)");

        // Final Analysis
        System.out.println("\n==================================");
        System.out.println("📊 FINAL ANALYSIS");
        System.out.println("Linear Search → Simple but slow for large data");
        System.out.println("Binary Search → Fast but needs sorted data");
        System.out.println("Best Choice for E-commerce → Binary Search");
        System.out.println("==================================");
    }
}