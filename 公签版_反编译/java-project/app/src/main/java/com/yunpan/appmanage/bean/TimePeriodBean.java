package com.yunpan.appmanage.bean;

import z7.o;

/* loaded from: classes.dex */
public class TimePeriodBean {
    public int endH;
    public int endM;
    public o jsonArray;
    public int startH;
    public int startM;

    public TimePeriodBean(int i10, int i11, int i12, int i13, o oVar) {
        this.startH = i10;
        this.startM = i11;
        this.endH = i12;
        this.endM = i13;
        this.jsonArray = oVar;
    }
}
