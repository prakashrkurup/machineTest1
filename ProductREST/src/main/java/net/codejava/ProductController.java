package net.codejava;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.NoSuchElementException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ProductController {

	
	@Autowired
	private ProductService service;
	
	@GetMapping("/products")
	public List<Product> list() {
		List<Product> products = service.listAll();
		Comparator<Product> descPrice = (Product itm1, Product itm2) -> Double.compare(itm1.getPrice(), itm2.getPrice());
         Collections.sort(products, descPrice);
         Collections.reverse(products);
		
		return products;
	}
	
	@GetMapping("/products/{id}")
	public ResponseEntity<Product> get(@PathVariable Integer id) {
		try {
			Product product =  service.get(id);
			return new ResponseEntity<Product>(product, HttpStatus.OK);
		} catch (NoSuchElementException e) {
			return new ResponseEntity<Product>(HttpStatus.NOT_FOUND);
		}
	}
	
	
}
