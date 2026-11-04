package com.yunpan.appmanage.bean;

/* loaded from: classes.dex */
public class PermissionBean {
    public boolean canPMS;
    public boolean isOpen;
    public boolean isSelect;
    public boolean ops_is_open;
    public String permissionDesc;
    public String permissionLabel;
    public String permissionLevel;
    public String permissionName;
    public String permissionName_ops;
    public int permissionType;
    public boolean pms_is_open;
    public String str1;
    public String str_status;

    public PermissionBean() {
        this.permissionName = "";
        this.permissionLabel = "";
        this.permissionLevel = "";
        this.permissionDesc = "";
        this.permissionName_ops = "";
        this.isOpen = false;
        this.str_status = "";
        this.permissionType = -1;
        this.canPMS = false;
        this.ops_is_open = false;
        this.pms_is_open = false;
        this.isSelect = true;
        this.str1 = "";
    }

    public PermissionBean(String str) {
        this.permissionLabel = "";
        this.permissionLevel = "";
        this.permissionDesc = "";
        this.permissionName_ops = "";
        this.isOpen = false;
        this.str_status = "";
        this.permissionType = -1;
        this.canPMS = false;
        this.ops_is_open = false;
        this.pms_is_open = false;
        this.isSelect = true;
        this.str1 = "";
        this.permissionName = str;
    }

    public PermissionBean(String str, String str2) {
        this.permissionLevel = "";
        this.permissionDesc = "";
        this.permissionName_ops = "";
        this.isOpen = false;
        this.str_status = "";
        this.permissionType = -1;
        this.canPMS = false;
        this.ops_is_open = false;
        this.pms_is_open = false;
        this.isSelect = true;
        this.str1 = "";
        this.permissionLabel = str;
        this.permissionName = str2;
    }

    public PermissionBean(String str, String str2, String str3) {
        this.permissionLevel = "";
        this.permissionDesc = "";
        this.isOpen = false;
        this.str_status = "";
        this.permissionType = -1;
        this.canPMS = false;
        this.ops_is_open = false;
        this.pms_is_open = false;
        this.isSelect = true;
        this.str1 = "";
        this.permissionLabel = str;
        this.permissionName = str2;
        this.permissionName_ops = str3;
    }

    public PermissionBean(String str, String str2, String str3, String str4, String str5) {
        this.permissionName_ops = "";
        this.isOpen = false;
        this.permissionType = -1;
        this.canPMS = false;
        this.ops_is_open = false;
        this.pms_is_open = false;
        this.isSelect = true;
        this.str1 = "";
        this.permissionName = str;
        this.permissionLabel = str2;
        this.permissionLevel = str3;
        this.permissionDesc = str4;
        this.str_status = str5;
    }
}
