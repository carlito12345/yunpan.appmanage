package com.yunpan.appmanage.bean;

/* loaded from: classes.dex */
public class ShortcutDefinition {
    private String className;
    private int iconRes;

    /* renamed from: id, reason: collision with root package name */
    private String f3780id;
    private String label;
    private String packageName;

    public ShortcutDefinition(String str, String str2, int i10, String str3, String str4) {
        this.f3780id = str;
        this.label = str2;
        this.iconRes = i10;
        this.packageName = str3;
        this.className = str4;
    }

    public String getClassName() {
        return this.className;
    }

    public int getIconRes() {
        return this.iconRes;
    }

    public String getId() {
        return this.f3780id;
    }

    public String getLabel() {
        return this.label;
    }

    public String getPackageName() {
        return this.packageName;
    }
}
