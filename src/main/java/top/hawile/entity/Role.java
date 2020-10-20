package top.hawile.entity;

import java.io.Serializable;
import java.util.Date;

public class Role implements Serializable {
    private Integer authId;

    private String name;

    private String symbol;

    private Integer firstType;

    private Integer secondType;

    private Integer thirdType;

    private Integer parentId;

    private Date updateTime;

    private static final long serialVersionUID = 1L;

    public Integer getAuthId() {
        return authId;
    }

    public void setAuthId(Integer authId) {
        this.authId = authId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getSymbol() {
        return symbol;
    }

    public void setSymbol(String symbol) {
        this.symbol = symbol == null ? null : symbol.trim();
    }

    public Integer getFirstType() {
        return firstType;
    }

    public void setFirstType(Integer firstType) {
        this.firstType = firstType;
    }

    public Integer getSecondType() {
        return secondType;
    }

    public void setSecondType(Integer secondType) {
        this.secondType = secondType;
    }

    public Integer getThirdType() {
        return thirdType;
    }

    public void setThirdType(Integer thirdType) {
        this.thirdType = thirdType;
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", authId=").append(authId);
        sb.append(", name=").append(name);
        sb.append(", symbol=").append(symbol);
        sb.append(", firstType=").append(firstType);
        sb.append(", secondType=").append(secondType);
        sb.append(", thirdType=").append(thirdType);
        sb.append(", parentId=").append(parentId);
        sb.append(", updateTime=").append(updateTime);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}