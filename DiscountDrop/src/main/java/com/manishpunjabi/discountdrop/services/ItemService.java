package com.manishpunjabi.discountdrop.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manishpunjabi.discountdrop.models.Item;
import com.manishpunjabi.discountdrop.repositories.ItemRepository;

@Service
public class ItemService {
	
	@Autowired
	private ItemRepository itemRepo;
	
	public List<Item> allItems(){
		return itemRepo.findAll();
	}
	
	public Item findOneItem(Long id) {
		Optional <Item> optionalItem = itemRepo.findById(id);
		if(optionalItem.isPresent()) {
			return optionalItem.get();
		}else {
			return null;
		}
	}
	
	public Item createItem(Item item) {
		return itemRepo.save(item);
	}

	public Item updateItem(Item item) {
		return itemRepo.save(item);
	}
	
	public void deleteItem(Long id) {
		itemRepo.deleteById(id);
	}
}
