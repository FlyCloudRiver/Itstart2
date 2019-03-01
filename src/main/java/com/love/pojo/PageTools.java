package com.love.pojo;

import java.io.Serializable;


/**
 * 这是一个分页工具类
 */
public class PageTools implements Serializable {

    private static final long serialVersionUID = -3198048449643774660L;

    private int pageNow = 1; //当前页

    private int pageSize = 5; //每页显示的数据

    private int totalCount;  //总数据条数

    private int totalPageCount; //总数据页数

    @SuppressWarnings("unused")
    private int startPos; //开始位置，0开始


    /**
     * 通过构造方法传入总页数和当前页数
     * @param pageNow
     * @param totalPageCount
     */
    public PageTools(int pageNow, int totalPageCount) {
        this.pageNow = pageNow;
        this.totalPageCount = totalPageCount;
    }


    public int getTotalPageCount(){
        totalPageCount = getTotalCount()/getPageSize();

        return (totalCount%pageSize==0)?totalPageCount:totalPageCount+1;
    }


    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public int getPageNow() {
        return pageNow;
    }

    public int getPageSize() {
        return pageSize;
    }

    public int getTotalCount() {
        return totalCount;
    }

    public int getStartPos() {
        return startPos;
    }

    public void setPageNow(int pageNow) {
        this.pageNow = pageNow;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    public void setTotalPageCount(int totalPageCount) {
        this.totalPageCount = totalPageCount;
    }

    /**
     * 记录选择的初始位置
     * @param startPos
     */
    public void setStartPos(int startPos) {
        this.startPos = (pageNow-1)*pageSize;
    }


}
