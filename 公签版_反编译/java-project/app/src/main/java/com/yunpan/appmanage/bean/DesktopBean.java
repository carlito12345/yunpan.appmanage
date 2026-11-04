package com.yunpan.appmanage.bean;

/* loaded from: classes.dex */
public class DesktopBean {
    public boolean isDefaultDesktop;
    public boolean isDisable;
    public boolean isHide;
    public boolean isSystemApp;
    public boolean isUninstall;
    public String name;
    public String packageName;

    public DesktopBean(String str, String str2, boolean z, boolean z4, boolean z10, boolean z11, boolean z12) {
        this.name = str;
        this.packageName = str2;
        this.isSystemApp = z;
        this.isDisable = z4;
        this.isHide = z10;
        this.isUninstall = z11;
        this.isDefaultDesktop = z12;
    }

    public DesktopBean(String str, String str2) {
        this.name = str;
        this.packageName = str2;
    }
}
