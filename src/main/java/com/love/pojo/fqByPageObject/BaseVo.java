package com.love.pojo.fqByPageObject;

import java.util.List;

public class BaseVo<T> {
    /**
     * 总页数
     */
    private Integer totalpage = 0;


    /**
     * 本次查询总记录数
     */
    private Integer records = 0;

    /**
     * 结果集
     */
    private List<T> vo;

    public Integer getTotal() {
        return totalpage;
    }

    public void setTotal(Integer totalpage) {
        this.totalpage = totalpage;
    }

 /*   public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }*/

    public Integer getRecords() {
        return records;
    }

    public void setRecords(Integer records) {
        this.records = records;
    }

    public List<T> getRows() {
        return vo;
    }

    public void setRows(List<T> vo) {
        this.vo = vo;
    }

    @Override
    public String toString() {
        return "BaseVo{" +
                "total=" + totalpage +
                ", records=" + records +
                ", vo=" + vo +
                '}';
    }

    public void count() {
        int page=this.records/10;
        int plus=this.records%10==0?0:1;
        this.totalpage=page+plus;
    }
}
