package com.eagle.dangdang.test;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.eagle.dangdang.user.entity.ReceiveAddress;
import com.eagle.dangdang.user.service.ReceiveAddressService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "/applicationContext.xml" })
public class ReceiveAddressServiceTest {

	@Resource
	private ReceiveAddressService receiveAddressService;

	@Test
	public void testSave(){
		ReceiveAddress address =new ReceiveAddress();
		address.setFullAddress("江苏省苏州市观前街");
		address.setMobile("18896583964");
		address.setPhone("0");
		address.setPostalCode("224200");
		address.setReceiveName("zhoushadiao");
		
		System.out.println(receiveAddressService.saveAddress(address));
	}
	
	public ReceiveAddressService getReceiveAddressService() {
		return receiveAddressService;
	}

	public void setReceiveAddressService(ReceiveAddressService receiveAddressService) {
		this.receiveAddressService = receiveAddressService;
	}
	
	
}
