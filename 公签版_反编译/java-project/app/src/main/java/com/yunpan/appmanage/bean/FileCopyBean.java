package com.yunpan.appmanage.bean;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import x9.w3;

/* loaded from: classes.dex */
public class FileCopyBean {
    public String fromDir;
    public String toDir;
    public List<w3> fromPaths = new ArrayList();
    public boolean isDelete = false;
    public List<w3> dirs = new ArrayList();
    public List<w3> files = new ArrayList();
    public AtomicBoolean isHasRepeatFile = new AtomicBoolean(false);
}
