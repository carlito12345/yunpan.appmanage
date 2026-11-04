package com.yunpan.appmanage.bean;

/* loaded from: classes.dex */
public class PresentationBean {
    public String className;
    public int mDisplayId;
    public String name;
    public String packageName;
    public int taskId;

    public PresentationBean(int i10, int i11, String str, String str2, String str3) {
        this.mDisplayId = i10;
        this.taskId = i11;
        this.name = str;
        this.packageName = str2;
        this.className = str3;
    }
}
