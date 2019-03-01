package com.love.pojo.fqByPageObject;

public class BaseQo<T> {
    private T qo;
    /**
     * 当页索引
     */
    private Integer currindex;

    /**
     * 当前页
     */
    private Integer page;

    /**
     * 每页记录数
     */
    private Integer rows=10;


    public T getQo() {
        return qo;
    }

    public void setQo(T qo) {
        this.qo = qo;
    }

    public Integer getCurrindex() {
        return currindex;
    }

    public void setCurrindex(Integer currindex) {
        this.currindex = currindex;
    }

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getRows() {
        return rows;
    }

    public void setRows(Integer rows) {
        this.rows = rows;
    }

    public void count(){
        this.currindex=this.rows*(this.page-1);
        System.out.println("currindex"+currindex);
    }

    @Override
    public String toString() {
        return "BaseQo{" +
                "qo=" + qo +
                ", currindex=" + currindex +
                ", page=" + page +
                ", rows=" + rows +
                '}';
    }
}
