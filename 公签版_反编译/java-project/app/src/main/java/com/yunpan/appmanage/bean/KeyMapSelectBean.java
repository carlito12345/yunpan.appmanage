package com.yunpan.appmanage.bean;

/* loaded from: classes.dex */
public class KeyMapSelectBean {
    public String gn_name;
    public int gn_type;
    public int ico;

    public KeyMapSelectBean(String str) {
        this.gn_type = -1;
        this.gn_name = str;
    }

    public KeyMapSelectBean(String str, int i10) {
        this.gn_name = str;
        this.gn_type = i10;
    }

    public KeyMapSelectBean(int i10, String str) {
        this.gn_type = -2;
        this.ico = i10;
        this.gn_name = str;
    }
}
