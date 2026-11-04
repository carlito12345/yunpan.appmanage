package com.yunpan.appmanage.bean;

/* loaded from: classes.dex */
public class SidebarCheckBean {
    public boolean checked;
    public String name;
    public int size;
    public int type = 2;

    public SidebarCheckBean(String str, boolean z) {
        this.name = str;
        this.checked = z;
    }

    public SidebarCheckBean(int i10) {
        this.size = i10;
    }
}
