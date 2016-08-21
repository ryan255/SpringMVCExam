package com.hand.service;

import com.hand.dto.Store;

public interface StoreService {
	public Store find(Integer store_id);

	public void add(Store store);

	public void delete(Store store);

	public void update(Store store);

	public void testTransaction(Store store1, Store store2);

}
