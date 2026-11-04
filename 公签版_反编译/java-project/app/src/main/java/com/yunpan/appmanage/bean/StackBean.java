package com.yunpan.appmanage.bean;

/* loaded from: classes.dex */
public class StackBean {
    public String appBounds;
    public String appName;
    public String className;
    public String displayBounds;
    public int displayId;
    public String packageName;
    public int stackId;
    public int taskId;
    public String topActivity;
    public int userId;

    public StackBean(int i10, String str, int i11, int i12, int i13, String str2, String str3, String str4, String str5, String str6) {
        this.displayId = i10;
        this.displayBounds = str;
        this.stackId = i11;
        this.userId = i12;
        this.taskId = i13;
        this.appName = str2;
        this.packageName = str3;
        this.className = str4;
        this.topActivity = str5;
        this.appBounds = str6;
    }
}
