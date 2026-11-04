package com.yunpan.appmanage.bean;

/* loaded from: classes.dex */
public class PsBean {
    public String addr;
    public String name;
    public String packageName;
    public String pid;
    public String ppid;
    public long rss;
    public String rss_str;
    public String state;
    public String user;
    public long vsz;
    public String vsz_str;
    public String wchan;

    public PsBean() {
        this.packageName = "";
    }

    public PsBean(PsBean psBean) {
        this.packageName = "";
        this.user = psBean.user;
        this.pid = psBean.pid;
        this.ppid = psBean.ppid;
        this.vsz = psBean.vsz;
        this.rss = psBean.rss;
        this.vsz_str = psBean.vsz_str;
        this.rss_str = psBean.rss_str;
        this.wchan = psBean.wchan;
        this.addr = psBean.addr;
        this.state = psBean.state;
        this.name = psBean.name;
        this.packageName = psBean.packageName;
    }
}
