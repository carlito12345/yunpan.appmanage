package com.yunpan.appmanage.bean;

/* loaded from: classes.dex */
public class SpecialPermissionsBean {
    public boolean isGrant;
    public String name;
    public String pack;
    public String packageAndClass;
    public String str_state;
    public int uid;

    public SpecialPermissionsBean() {
    }

    public SpecialPermissionsBean(String str, String str2, int i10, boolean z) {
        this.name = str;
        this.pack = str2;
        this.uid = i10;
        this.isGrant = z;
    }

    public SpecialPermissionsBean(String str, String str2, int i10, String str3, boolean z) {
        this.name = str;
        this.pack = str2;
        this.uid = i10;
        this.str_state = str3;
        this.isGrant = z;
    }

    public SpecialPermissionsBean(String str, String str2, int i10, String str3, boolean z, String str4) {
        this.name = str;
        this.pack = str2;
        this.uid = i10;
        this.str_state = str3;
        this.isGrant = z;
        this.packageAndClass = str4;
    }
}
