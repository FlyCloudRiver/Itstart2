package com.love.pojo;

public class Order {
    private Integer orderId;

    private String orderNumber;

    private Float orderCost;

    private Integer orderStatus;

    private  Client client;
    private  LessonDetail lessonDetail;


    public Order(Integer orderId, String orderNumber, Float orderCost, Integer orderStatus) {
        this.orderId = orderId;
        this.orderNumber = orderNumber;
        this.orderCost = orderCost;
        this.orderStatus = orderStatus;
    }

    public Order() {
        super();
    }

    public LessonDetail getLessonDetail() {
        return lessonDetail;
    }

    public void setLessonDetail(LessonDetail lessonDetail) {
        this.lessonDetail = lessonDetail;
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public String getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(String orderNumber) {
        this.orderNumber = orderNumber == null ? null : orderNumber.trim();
    }

    public Float getOrderCost() {
        return orderCost;
    }

    public void setOrderCost(Float orderCost) {
        this.orderCost = orderCost;
    }

    public Integer getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(Integer orderStatus) {
        this.orderStatus = orderStatus;
    }

    @Override
    public String toString() {
        return "Order{" +
                "orderId=" + orderId +
                ", orderNumber='" + orderNumber + '\'' +
                ", orderCost=" + orderCost +
                ", orderStatus=" + orderStatus +
                ", client=" + client +
                ", lessonDetail=" + lessonDetail +
                '}';
    }
}