package top.hawile.entity;

import java.io.Serializable;
import java.util.Date;

public class FormInput implements Serializable {
    private Integer id;

    private String name;

    private String formName;

    private Integer formNo;

    private String formPath;

    private Date createTime;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getFormName() {
        return formName;
    }

    public void setFormName(String formName) {
        this.formName = formName == null ? null : formName.trim();
    }

    public Integer getFormNo() {
        return formNo;
    }

    public void setFormNo(Integer formNo) {
        this.formNo = formNo;
    }

    public String getFormPath() {
        return formPath;
    }

    public void setFormPath(String formPath) {
        this.formPath = formPath == null ? null : formPath.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

}