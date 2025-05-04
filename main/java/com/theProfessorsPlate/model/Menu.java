package com.theProfessorsPlate.model;

public class Menu {
    private int foodId;
    private String foodName;
    private String foodDescription;
    private double foodPrice;
    private String foodCategory;
    private String foodImage;
    private int discountId;

    public Menu(int foodId, String foodName, String foodDescription, double foodPrice, String foodCategory, String foodImage, int discountId) {
        this.foodId = foodId;
        this.foodName = foodName;
        this.foodDescription = foodDescription;
        this.foodPrice = foodPrice;
        this.foodCategory = foodCategory;
        this.foodImage = foodImage;
        this.discountId = discountId;
    }

    // Getters and Setters
}