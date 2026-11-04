package com.yunpan.appmanage.bean;

/* loaded from: classes.dex */
public class AppTrafficBean {
    public long count;
    public String name;
    public String packageName;
    public long sim;
    public int uid;
    public long wifi;

    public AppTrafficBean(String str, String str2, int i10, long j10, long j11, long j12) {
        this.name = str;
        this.packageName = str2;
        this.uid = i10;
        this.sim = j10;
        this.wifi = j11;
        this.count = j12;
    }
}
