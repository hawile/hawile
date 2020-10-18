package top.hawile.entity;

import java.io.Serializable;

public class Department extends Authority {
    private Integer deptId;
    private String deptName;
    private Integer formNo;

    private static final long serialVersionUID = 1L;

    public Integer getDeptId() {
        return deptId;
    }

    public void setDeptId(Integer deptId) {
        this.deptId = deptId;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName == null ? null : deptName.trim();
    }

    public Integer getFormNo() {
        return formNo;
    }

    public void setFormNo(Integer formNo) {
        this.formNo = formNo;
    }
}