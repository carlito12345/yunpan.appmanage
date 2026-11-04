package com.yunpan.appmanage.bean;

/* loaded from: classes.dex */
public class InputMethodBean {
    public String className;
    public boolean isDefault;
    public String name;
    public String packageName;

    public InputMethodBean(String str, String str2, String str3, boolean z) {
        this.name = str;
        this.packageName = str2;
        this.className = str3;
        this.isDefault = z;
    }
}
