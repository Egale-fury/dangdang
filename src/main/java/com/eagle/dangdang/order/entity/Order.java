package com.eagle.dangdang.order.entity;

import java.util.Date;
import java.util.Set;

import com.eagle.dangdang.user.entity.ReceiveAddress;
import com.eagle.dangdang.user.entity.User;

/**
 * 
 * @author dpc
 * 订单的实体类
 *+--------------+--------------+------+-----+---------+----------------+
| Field        | Type         | Null | Key | Default | Extra          |
+--------------+--------------+------+-----+---------+----------------+
| id           | int(10)      | NO   | PRI | NULL    | auto_increment |
| user_id      | int(10)      | NO   |     | NULL    |                |
| status       | int(10)      | NO   |     | NULL    |                |
| order_time   | bigint(20)   | NO   |     | NULL    |                |
| order_desc   | varchar(100) | YES  |     | NULL    |                |
| total_price  | double       | NO   |     | NULL    |                |
| receive_name | varchar(100) | YES  |     | NULL    |                |
| full_address | varchar(200) | YES  |     | NULL    |                |
| postal_code  | varchar(8)   | YES  |     | NULL    |                |
| mobile       | varchar(20)  | YES  |     | NULL    |                |
| phone        | varchar(20)  | YES  |     | NULL    |                |
+--------------+--------------+------+-----+---------+----------------+
 */
public class Order {

	private long id;
	
	private String status;
	
	private Date orderTime;
	
	private boolean orderDesc;
	
	private Set<OrderLine> orderLines;
	
	private double totalPrice;
	
	private User user;
	
	private ReceiveAddress address;
}
