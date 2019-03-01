package com.love.pojo;

import java.io.Serializable;

public class ClientSource  implements Serializable {
    private Integer clientSourceId;

    private String clientSource;

    public ClientSource(Integer clientSourceId, String clientSource) {
        this.clientSourceId = clientSourceId;
        this.clientSource = clientSource;
    }

    public ClientSource() {
        super();
    }

    public Integer getClientSourceId() {
        return clientSourceId;
    }

    public void setClientSourceId(Integer clientSourceId) {
        this.clientSourceId = clientSourceId;
    }

    public String getClientSource() {
        return clientSource;
    }

    public void setClientSource(String clientSource) {
        this.clientSource = clientSource == null ? null : clientSource.trim();
    }

    @Override
    public String toString() {
        return "ClientSource{" +
                "clientSourceId=" + clientSourceId +
                ", clientSource='" + clientSource + '\'' +
                '}';
    }
}