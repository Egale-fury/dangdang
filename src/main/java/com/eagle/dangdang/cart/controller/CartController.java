package com.eagle.dangdang.cart.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.eagle.dangdang.cart.Cart;
import com.eagle.dangdang.product.entity.Product;
import com.eagle.dangdang.product.service.ProductService;

@Controller
@RequestMapping(value = "/cart")
public class CartController {

	@Resource
	private ProductService productService;

	private static final Logger logger = LogManager
			.getLogger(CartController.class);

	// 添加商品
	@RequestMapping(value = "/addProduct", method = RequestMethod.POST)
	public void addPdt2Cart(@RequestParam("productId") long productId,
			@RequestParam("num") int num, HttpSession session) {
		Product product = productService.findProductById(productId);
		Cart cart = (Cart) session.getAttribute("currentCart");
		if (cart == null) {// 创建一个新的购物车并添加商品存入session
			cart = new Cart();
			cart.addProduct(product, num);
			session.setAttribute("currentCart", cart);// 存入session
		} else {
			cart.addProduct(product, num);
			session.setAttribute("currentCart", cart);
		}
	}

	// 删除列表
	@RequestMapping(value = "/deleteItem", method = RequestMethod.POST)
	public void deleteItem(@RequestParam("productId") long productId,
			HttpSession session) {
		Cart cart = (Cart) session.getAttribute("currentCart");
		if (cart == null) {
			logger.info("购物车为空，没有订单项删除");
		} else {
			cart.deleteLine(productId);
			session.setAttribute("currentCart", cart);
		}

	}

	// 回复列表
	@RequestMapping(value = "/restore", method = RequestMethod.POST)
	public void restoreItem(@RequestParam("productId") long productId,
			HttpSession session) {
		Cart cart = (Cart) session.getAttribute("currentCart");
		if (cart == null) {
			logger.info("购物车为空，没有订单项恢复");
		} else {
			cart.restore(productId);
			session.setAttribute("currentCart", cart);
		}
	}

	// 数量修改
	@RequestMapping(value="/fixNum",method=RequestMethod.POST)
	public void changeNum(@RequestParam("productId") long productId,
			@RequestParam("num") int num, HttpSession session) {
		Cart cart = (Cart) session.getAttribute("currentCart");
		if (cart == null) {
			logger.info("购物车为空，没有订单项修改");
		} else {
			cart.changeNum(productId, num);
			session.setAttribute("currentCart", cart);
		}
	}
	
	//清空购物车
	@RequestMapping(value="/empty")
	public void empty(HttpSession session){
		Cart cart = (Cart) session.getAttribute("currentCart");
		if (cart == null) {
			logger.info("购物车为空，无法清空");
		} else {
			cart.empty();
			session.setAttribute("currentCart", cart);
		}
	}
	
	
	//购物车列表显示
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public String cartList(HttpSession session){
		Cart cart =(Cart)session.getAttribute("currentCart");
		if(cart==null){
			cart=new Cart();
			session.setAttribute("currentCart", cart);
		}
		return "cart/cart_list";
	}
	
	//结算(计算节省金额和商品总额)
	//实际应该转到订单处理模块，生成订单准备确认
	
	
	public ProductService getProductService() {
		return productService;
	}

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

}
