package com.manishpunjabi.discountdrop.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.manishpunjabi.discountdrop.models.Item;
import com.manishpunjabi.discountdrop.models.User;
import com.manishpunjabi.discountdrop.services.ItemService;
import com.manishpunjabi.discountdrop.services.UserService;

@Controller
public class HomeController {
	
	@Autowired
	private ItemService itemService;
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/merchant")
//	public String merchant(@PathVariable("id") Long id, Model model, HttpSession session)
	public String merchant( Model model, HttpSession session){
		if(session.getAttribute("userId")==null) {
			return "redirect:/";
		}
		Long userId = (Long) session.getAttribute("userId");
		User user = userService.findOneuser(userId);
		List<Item> items = itemService.allItems();
		model.addAttribute("user", user);
		model.addAttribute("items", items);
		Item newItem = new Item();
		model.addAttribute("newItem", newItem);
//		Item updateItem =itemService.findOneItem(id);
//		model.addAttribute("updateItem", updateItem);
		return "supplier.jsp";
	}
	
	@PostMapping("/merchant/new")
	public String processItem(@Valid @ModelAttribute("newItem") Item newItem, BindingResult result) {
		if(result.hasErrors()) {
			return "supplier.jsp";
		}else {
			itemService.createItem(newItem);
			return "redirect:/merchant";
		}
	}
	
//	@PutMapping("/merchant/{id)/edit")
//	public String processUpdate(@ModelAttribute("putItem") Item putItem, BindingResult result) {
//		if(result.hasErrors()) {
//			return "supplier.jsp";
//		}else {
//			itemService.updateItem(putItem);
//			return "redirect:/merchant";
//		}
//	}
	
	@DeleteMapping("/merchant/{id}/delete")
	public String deleteItem(@PathVariable("id") Long id) {
		itemService.deleteItem(id);
		return "redirect:/merchant";
	}
	
	@GetMapping("/customer")
	public String customer(Model model, HttpSession session) {
	if(session.getAttribute("userId")==null) {
		return "redirect:/";
		}
	Long userId = (Long) session.getAttribute("userId");
	User user = userService.findOneuser(userId);
	model.addAttribute("user", user);
	return "consumer.jsp";
	}
	
}
