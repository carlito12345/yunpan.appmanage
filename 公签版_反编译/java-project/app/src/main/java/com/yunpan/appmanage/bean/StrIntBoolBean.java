package com.yunpan.appmanage.bean;

/* loaded from: classes.dex */
public class StrIntBoolBean {
    public boolean boolValue;
    public int intValue;
    public String strValue;
    public String value_str2;

    public StrIntBoolBean(String str, int i10) {
        this.boolValue = false;
        this.strValue = str;
        this.intValue = i10;
    }

    public StrIntBoolBean(String str, int i10, boolean z) {
        this.strValue = str;
        this.intValue = i10;
        this.boolValue = z;
    }

    public StrIntBoolBean(String str) {
        this.boolValue = false;
        this.strValue = str;
    }

    public StrIntBoolBean(String str, String str2) {
        this.boolValue = false;
        this.strValue = str;
        this.value_str2 = str2;
    }
}
