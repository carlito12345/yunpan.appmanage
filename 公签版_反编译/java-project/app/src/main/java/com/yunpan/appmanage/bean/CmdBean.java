package com.yunpan.appmanage.bean;

/* loaded from: classes.dex */
public class CmdBean {
    public int ico;
    public String name;
    public String str1;
    public String str2;

    public CmdBean(int i10, String str) {
        this.str1 = "";
        this.str2 = "";
        this.ico = i10;
        this.name = str;
    }

    public CmdBean(int i10, String str, String str2, String str3) {
        this.ico = i10;
        this.name = str;
        this.str1 = str2;
        this.str2 = str3;
    }
}
