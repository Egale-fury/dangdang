package com.eagle.dangdang.product.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.security.access.method.P;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.eagle.dangdang.product.entity.Book;
import com.eagle.dangdang.product.service.BookService;

@Controller
@RequestMapping(value="/book")
public class BookController {

	@Resource
	private BookService bookService;

	@RequestMapping(value="/hot/{num}",method=RequestMethod.GET)
	public String getHotBooks(@PathVariable("num")int num,Model model){
		List<Book> books =bookService.getHotBooks(num);
		model.addAttribute("hotBooks", books);
		return "";//自定义试图名称
	}
	
	@RequestMapping(value="/last/{num}",method=RequestMethod.GET)
	public String getRecentBooks(@PathVariable("num")int num,Model model){
		List<Book> books =bookService.getHotBooks(num);
		model.addAttribute("recentBooks", books);
		return "";//自定义试图名称
	}
	
	public BookService getBookService() {
		return bookService;
	}

	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}
	
	
	
}
