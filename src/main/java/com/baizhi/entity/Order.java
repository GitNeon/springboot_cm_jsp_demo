package com.baizhi.entity;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;
import tk.mybatis.mapper.annotation.KeySql;

import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor

@Table(name="gw_order")
public class Order implements Serializable {


    @Id
    @KeySql(useGeneratedKeys = true)
    private Integer orderId;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private Date orderCreattime;
    private String orderUsername;
    private String orderUseraddress;
    private String orderTelphone;

    @Override
    public String toString() {
        return "Order{" +
                "orderId=" + orderId +
                ", orderCreattime=" + orderCreattime +
                ", orderUsername='" + orderUsername + '\'' +
                ", orderUseraddress='" + orderUseraddress + '\'' +
                ", orderTelphone='" + orderTelphone + '\'' +
                '}';
    }
}
