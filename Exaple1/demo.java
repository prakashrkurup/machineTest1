

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import java.io.*;
import java.lang.*;
import java.util.*;

class Item {

    private Integer id;
    private String shortDescription;
    private String brand;
    private Double price;

    Item(int id, String shortDescription, String brand, double price) {
        this.id = id;
        this.shortDescription = shortDescription;
        this.brand = brand;
        this.price = price;
    }

    public Integer getId() {
        return id;
    }

    public String getShortDescription() {
        return shortDescription;
    }

    public String getBrand() {
        return brand;
    }

    public Double getPrice() {
        return price;
    }
}

class ItemManager {

    private List<Item> itemArray;

    ItemManager() {

        itemArray = new ArrayList();
        itemArray.add(new Item(2, "Black colour, 64GB Internal", "Brand1", 14000.34));
        itemArray.add(new Item(3, "White colour, 104GB Internal", "TDKBrand2", 14000.35));
        itemArray.add(new Item(4, "Red colour, 38GB Internal", "TRIBrand3", 8000.87));
        itemArray.add(new Item(5, "Blue colour, 38GB Internal", "GHIBrand3", 9000.887));
        itemArray.add(new Item(7, "Red colour, 84GB Internal", "TLIBrand3", 10000.34));

    }

    public List<Item> findItemsByBrand(String searchString) {
        List<Item> newItemList = itemArray
                .stream()
                .filter(c -> c.getBrand().startsWith(searchString))
                .collect(Collectors.toList());

        return newItemList;
    }

    public List<Item> sortByPrice() {
        Comparator<Item> descPrice = (Item itm1, Item itm2) -> Double.compare(itm1.getPrice(), itm2.getPrice());
        Collections.sort(itemArray, descPrice);
        Collections.reverse(itemArray);


        return itemArray;

    }
}

class Test {
    public static void main(String[ ] args) {

        ItemManager itemManager = new ItemManager();
        List<Item> items = itemManager.findItemsByBrand("T");

        System.out.println("Search results related to 'T'=====>");
        items.forEach(itm -> System.out.println(itm.getId() +" " +itm.getShortDescription() +" " +itm.getBrand() +" " +itm.getPrice()));

        List<Item> sortedList = itemManager.sortByPrice();

        System.out.println("Sorted List=====>");


        sortedList.forEach(itm -> System.out.println(itm.getId() +" " +itm.getShortDescription() +" " +itm.getBrand() +" " +itm.getPrice()));

    }
}