package com.yunpan.appmanage.bean;

import java.util.List;

/* loaded from: classes.dex */
public class KeyMapLogcatSuperFindBean {
    public int index;
    public String tag_bs;
    public List<String> downLogcat = null;
    public List<String> upLogcat = null;
    public List<String> zhLogcat = null;
    public boolean isOpen = true;
    public boolean isWaitingUp = false;
    public boolean isOne = false;
    public int OutTimeOneMap = 0;
    public boolean isOutTimeOneMap = false;
    public boolean isConsistent = false;
    public boolean isHaveClick = false;
    public boolean isHaveDoubleClick = false;
}
