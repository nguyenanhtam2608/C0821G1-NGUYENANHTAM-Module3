package service.impl;

import model.Product;
import service.IProductService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements IProductService {
    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "Bánh", 30000, "Ngot", "CoSy"));
        products.put(2, new Product(2, "Kẹo", 50000, "Ngot", "Milk"));
        products.put(3, new Product(3, "Sữa", 90000, "Ngot", "VinaMilk"));


    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {

    }

    @Override
    public Product findById(int id) {
        return null;
    }

    @Override
    public void update(int id, Product product) {

    }

    @Override
    public void remove(int id) {

    }
}

