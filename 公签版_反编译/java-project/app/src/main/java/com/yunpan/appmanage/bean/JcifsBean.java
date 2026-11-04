package com.yunpan.appmanage.bean;

import com.hierynomus.smbj.SMBClient;
import com.hierynomus.smbj.connection.Connection;
import com.hierynomus.smbj.session.Session;
import com.hierynomus.smbj.share.DiskShare;
import java.io.InputStream;

/* loaded from: classes.dex */
public class JcifsBean {
    public InputStream in;
    public String url;
    public SMBClient client = null;
    public Connection connection = null;
    public Session session = null;
    public DiskShare share = null;
}
