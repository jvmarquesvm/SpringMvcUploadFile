package com.padrao.spring.controllers;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.ServletContext;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;

import com.padrao.spring.entities.Product;

@Controller
@RequestMapping(value = "product")
public class ProductController implements ServletContextAware {
	private ServletContext servletContext;
	
	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("product", new Product());
		return "product/index";
	}
	
	@RequestMapping(value = "save", method = RequestMethod.POST)
	public String save(@ModelAttribute("product") Product product, 
			                @RequestParam(value = "file") MultipartFile file,
			                      ModelMap modelMap) {
		String fileName = saveImage(file);
		product.setPhoto(fileName);
		modelMap.put("product", product);
		return "product/success";
	}
	
	private String saveImage(MultipartFile multiFile) {
		try {
			byte[] bytes = multiFile.getBytes();
			Path path = Paths.get(servletContext.getRealPath("/resources/images/" + multiFile.getOriginalFilename() ) );
			Files.write(path, bytes );
			return multiFile.getOriginalFilename();
		} catch(IOException e) {
			return null;
		}
	}
	
	@Override
	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
	}
}
