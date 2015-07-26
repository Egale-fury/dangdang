package com.eagle.dangdang.test;

import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.eagle.dangdang.order.entity.Order;
import com.eagle.dangdang.order.entity.OrderLine;
import com.eagle.dangdang.order.service.OrderService;
import com.eagle.dangdang.product.entity.Product;
import com.eagle.dangdang.user.entity.ReceiveAddress;
import com.eagle.dangdang.user.entity.User;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "/applicationContext.xml" })
public class OrderServiceTest {

	@Resource
	private OrderService orderService;

	//@Test
	public void testSave(){
		Order order =new Order();
		order.setOrderTime(new Date());
		order.setOrderDesc(false);
		order.setStatus("已付款");
		order.setTotalPrice(0.0);
		User user =new User();
		user.setId(1);
		order.setUser(user);
		OrderLine item=new OrderLine();
		Product product =new Product();
		product.setId(1);
		item.setProduct(product);
		item.setProductNum(2);
		item.setAmount(product.getDangPrice()*item.getProductNum());
		Set<OrderLine> set =new HashSet<OrderLine>();
		set.add(item);
		order.setOrderLines(set);
		ReceiveAddress address =new ReceiveAddress();
		address.setId(1);
		System.out.println(orderService.createOrder(order));
	}
	
	
	@Test
	public void testGetByUserID(){
		List<Order> orders =orderService.getOrderByUserId(1);
		
	}
	
	public OrderService getOrderService() {
		return orderService;
	}

	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}
	
	
	
}
