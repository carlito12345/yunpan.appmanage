package com.yunpan.appmanage.bean;

/* loaded from: classes.dex */
public class CodeEditorTopBean {
    public int ico;
    public String name;
    public int tag;

    public CodeEditorTopBean(int i10) {
        this.name = "";
        this.tag = -1;
        this.ico = i10;
    }

    public CodeEditorTopBean(String str) {
        this.ico = -1;
        this.tag = -1;
        this.name = str;
    }

    public CodeEditorTopBean(String str, int i10) {
        this.ico = -1;
        this.name = str;
        this.tag = i10;
    }
}
