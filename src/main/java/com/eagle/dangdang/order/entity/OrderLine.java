package com.eagle.dangdang.order.entity;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.eagle.dangdang.product.entity.Product;

/**
 * 
 * @author dpc
 * 订单的条目类
 *+--------------+--------------+------+-----+---------+----------------+
| Field        | Type         | Null | Key | Default | Extra          |
+--------------+--------------+------+-----+---------+----------------+
| id           | int(12)      | NO   | PRI | NULL    | auto_increment |
| order_id     | int(10)      | NO   |     | NULL    |                |
| product_id   | int(10)      | NO   |     | NULL    |                |
| product_name | varchar(100) | NO   |     | NULL    |                |
| dang_price   | double       | NO   |     | NULL    |                |
| product_num  | int(10)      | NO   |     | NULL    |                |
| amount       | double       | NO   |     | NULL    |                |
+--------------+--------------+------+-----+---------+----------------+
 */
@Entity
@Table(name="D_ORDERLINE")
public class OrderLine {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	
	@ManyToOne(fetch=FetchType.EAGER)
	private Product product;
	
	private int product_num;
	
	private Order order;
	
	private double amount;
	
	
}
