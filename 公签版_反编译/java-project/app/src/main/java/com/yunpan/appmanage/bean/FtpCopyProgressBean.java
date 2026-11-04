package com.yunpan.appmanage.bean;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import x9.n5;

/* loaded from: classes.dex */
public class FtpCopyProgressBean {
    public List<WpPathBean> paths;
    public String rootDirPath_form;
    public String rootDirPath_to;
    public n5 userInfo;
    public int file_count = 0;
    public AtomicInteger file_success = new AtomicInteger();
    public AtomicLong size_count = new AtomicLong();
    public AtomicLong size_success = new AtomicLong();
    public boolean isStop = false;
    public List<WpPathBean> filePaths = new ArrayList();
    public List<WpPathBean> failurePaths = new ArrayList();
    public AtomicInteger taskCount = new AtomicInteger();
}
