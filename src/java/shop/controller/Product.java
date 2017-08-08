/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import shop.entities.Category;
import shop.service.CategoryService;

/**
 *
 * @author EOV
 */
@Controller
@RequestMapping("/product")
public class Product {
    
    @Autowired
    private CategoryService categoryService;
    
    @RequestMapping(value = "list", method = RequestMethod.GET)
    public String list(ModelMap modelMap) {
            modelMap.put("title", "Category products");
            modelMap.put("action", "list");
            return "product.list";
    }
    
    @RequestMapping(value = "specials", method = RequestMethod.GET)
    public String specials(ModelMap modelMap) {
            modelMap.put("title", "Specials product");
            modelMap.put("action", "specials");
            return "product.specials";
    }
    
    @RequestMapping(value = "category/{id}", method = RequestMethod.GET)
    public String category(@PathVariable("id") Integer id, ModelMap modelMap) {
        Category category = categoryService.find(id);
        modelMap.put("title", "Category products");
        modelMap.put("category", category);
        modelMap.put("products", category.getProducts());
        modelMap.put("action", "list");
        return "product.category";
    } 
}