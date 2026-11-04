package com.yunpan.appmanage.bean;

/* loaded from: classes.dex */
public class PssBean {
    public boolean isCanStarted;
    public String name;
    public String pack;
    public String pack_str;
    public String pid;
    public String process_name;
    public long pss;
    public String pss_str;

    public PssBean() {
        this.pss_str = "";
        this.name = "";
        this.pack = "";
        this.pack_str = "";
        this.process_name = "";
        this.isCanStarted = false;
    }

    public PssBean(PssBean pssBean) {
        this.pss_str = "";
        this.name = "";
        this.pack = "";
        this.pack_str = "";
        this.process_name = "";
        this.isCanStarted = false;
        this.pid = pssBean.pid;
        this.pss = pssBean.pss;
        this.pss_str = pssBean.pss_str;
        this.name = pssBean.name;
        this.pack = pssBean.pack;
        this.pack_str = pssBean.pack_str;
        this.process_name = pssBean.process_name;
        this.isCanStarted = pssBean.isCanStarted;
    }
}
