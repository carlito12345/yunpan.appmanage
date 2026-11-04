package com.yunpan.appmanage.bean;

/* loaded from: classes.dex */
public class AppDetailHistoryLogBean {
    public String className;
    public String packageName;
    public String state;
    public long timeStamp;
    public String timeStr;
    public int type;

    public AppDetailHistoryLogBean(String str) {
        this.timeStamp = 0L;
        this.timeStr = str;
    }

    public AppDetailHistoryLogBean(int i10, String str, String str2, String str3, long j10, String str4) {
        this.type = i10;
        this.state = str;
        this.packageName = str2;
        this.className = str3;
        this.timeStamp = j10;
        this.timeStr = str4;
    }
}
