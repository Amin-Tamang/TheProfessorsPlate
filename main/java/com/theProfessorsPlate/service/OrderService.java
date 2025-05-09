package com.TheProfessorsPlate.service;

import com.TheProfessorsPlate.config.DbConfig;
import com.TheProfessorsPlate.model.Order;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class OrderService {
    public List<Order> getAllOrders() {
        List<Order> orders = new ArrayList<>();
        String query = "SELECT * FROM orders";

        try (Connection connection = DbConfig.getDbConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query);
             ResultSet resultSet = preparedStatement.executeQuery()) {

            while (resultSet.next()) {
                Order order = new Order(
                        resultSet.getInt("order_id"),
                        resultSet.getString("order_status"),
                        resultSet.getInt("order_quantity"),
                        resultSet.getString("order_date")
                );
                orders.add(order);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return orders;
    }
}