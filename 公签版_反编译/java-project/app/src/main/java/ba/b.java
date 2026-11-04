package ba;

import ce.t0;
import com.hierynomus.msfscc.FileAttributes;
import com.hierynomus.msfscc.fileinformation.FileIdBothDirectoryInformation;
import com.hierynomus.smbj.SMBClient;
import com.hierynomus.smbj.SmbConfig;
import com.hierynomus.smbj.auth.AuthenticationContext;
import com.hierynomus.smbj.connection.Connection;
import com.hierynomus.smbj.session.Session;
import com.hierynomus.smbj.share.DiskShare;
import com.rapid7.client.dcerpc.mssrvs.ServerService;
import com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo0;
import com.rapid7.client.dcerpc.transport.SMBTransportFactories;
import com.yunpan.appmanage.bean.WpPathBean;
import com.yunpan.appmanage.util.v;
import java.net.URI;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;
import org.simpleframework.xml.strategy.Name;
import org.slf4j.Marker;
import x9.n5;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2674a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ WpPathBean f2675b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ n5 f2676c;

    public /* synthetic */ b(WpPathBean wpPathBean, WpPathBean wpPathBean2, n5 n5Var) {
        this.f2674a = 13;
        this.f2676c = n5Var;
        this.f2675b = wpPathBean2;
    }

    private final void a(mc.b bVar) throws JSONException {
        WpPathBean wpPathBean = this.f2675b;
        String string = "";
        StringBuilder sb2 = new StringBuilder();
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        sb2.append(com.yunpan.appmanage.util.j.f4033a.X);
        sb2.append("/b/api/share/create?");
        sb2.append(qf.c.n("/b/api/share/create"));
        String string2 = sb2.toString();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("driveId", 0);
            jSONObject.put("expiration", "2099-12-12T08:00:00+08:00");
            jSONObject.put("fileIdList", Integer.valueOf(wpPathBean.path));
            jSONObject.put("shareName", wpPathBean.name);
            jSONObject.put("sharePwd", "");
            jSONObject.put("event", "shareCreate");
            jSONObject.put("fileNum", 1);
            jSONObject.put("renameVisible", false);
            jSONObject.put("shareModality", 4);
            jSONObject.put("operatePlace", 2);
            jSONObject.put("trafficLimitSwitch", 1);
            jSONObject.put("trafficLimit", 0);
            jSONObject.put("trafficSwitch", 1);
            string = jSONObject.toString();
        } catch (Exception unused) {
        }
        if (!string.isEmpty()) {
            String strR = qf.c.R(this.f2676c, string2, string, com.yunpan.appmanage.util.j.f4033a.W + "/?homeFilePath=" + wpPathBean.path);
            if (!strR.isEmpty()) {
                try {
                    z7.s sVarG = d.b.b0(strR).g();
                    if (sVarG.o("code").e() == 0) {
                        String strI = sVarG.o("data").g().o("ShareKey").i();
                        if (!strI.isEmpty()) {
                            try {
                                bVar.f(sVarG.q("data").q("shareLinkList").p("list").l(0).i());
                            } catch (Exception unused2) {
                                bVar.f(com.yunpan.appmanage.util.j.f4033a.W + "/s/" + strI);
                            }
                            bVar.b();
                            return;
                        }
                    }
                } catch (Exception unused3) {
                }
            }
        }
        android.support.v4.media.session.a.B("获取出错", bVar);
    }

    private final void b(mc.b bVar) throws Exception {
        n5 n5Var = this.f2676c;
        WpPathBean wpPathBean = this.f2675b;
        try {
            String str = "https://api.feejii.com/app/share/url?" + ("uuid=" + n5Var.l + "&devType=6&devCode=" + n5Var.l + "&devModel=chrome&devVersion=140&appVersion=&timestamp=" + s1.g.q(Long.toString(System.currentTimeMillis())) + "&appToken=" + n5Var.f18300k + "&extra=2");
            z7.s sVar = new z7.s();
            sVar.m("shareId", "");
            sVar.m("fileIds", wpPathBean.is_dir ? "" : wpPathBean.path);
            sVar.m("folderIds", wpPathBean.is_dir ? wpPathBean.path : "");
            sVar.m("code", "");
            sVar.m("amt", "");
            sVar.l("term", 0);
            sVar.l("showRecommend", 0);
            sVar.l("showUpTime", 1);
            sVar.l("showDownloads", 1);
            sVar.l("showComments", 1);
            sVar.l("showStars", 1);
            sVar.l("showLikes", 1);
            z7.s sVarG = d.b.b0(s1.g.I(str, sVar.toString())).g();
            if (sVarG.o("code").e() != 200) {
                throw new Exception(sVarG.o("msg").i());
            }
            bVar.f(sVarG.o("shareUrl").i());
            bVar.b();
        } catch (Exception e7) {
            bVar.d(e7);
        }
    }

    private final void c(mc.b bVar) {
        WpPathBean wpPathBean = this.f2675b;
        n5 n5Var = this.f2676c;
        dh.j jVar = n5Var.A;
        String str = "连接中断,请重新选中网盘";
        if (jVar != null && jVar.f()) {
            try {
                ArrayList arrayListV = com.bumptech.glide.d.V(n5Var, wpPathBean);
                if (arrayListV == null) {
                    android.support.v4.media.session.a.B("读取目录失败", bVar);
                    return;
                } else {
                    bVar.f(arrayListV);
                    bVar.b();
                    return;
                }
            } catch (Exception e7) {
                String strZ = g.b.z(e7, new StringBuilder(""));
                String str2 = strZ.isEmpty() ? "读取目录失败" : strZ;
                if (str2.contains("Connection reset") || str2.contains("Broken pipe") || str2.contains("Connection closed")) {
                    com.bumptech.glide.d.h(n5Var.A);
                } else {
                    str = str2;
                }
            }
        }
        android.support.v4.media.session.a.B(str, bVar);
    }

    private final void d(mc.b bVar) throws Throwable {
        WpPathBean wpPathBean = this.f2675b;
        String strI = p000if.a.i(this.f2676c);
        if (!strI.isEmpty() || wpPathBean.path.isEmpty()) {
            android.support.v4.media.session.a.B(strI, bVar);
        } else {
            bVar.b();
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:104|(9:324|105|320|106|(1:108)(1:115)|116|322|117|301)|(6:127|(5:129|130|(18:132|278|133|286|134|135|292|136|288|137|138|312|139|283|140|144|336|166)|334|167)(1:168)|169|(3:171|(4:174|(3:339|176|342)(3:338|177|341)|340|172)|337)|178|(2:180|(1:182)(8:217|(2:316|219)|(2:223|300)|314|192|304|193|348))(2:225|226))(1:122)|183|(8:185|(2:306|187)|(1:191)|314|192|304|193|348)(9:195|274|196|(4:199|(2:209|(2:211|332)(2:212|333))|201|197)|329|213|268|214|215)|300|314|192|304|193|348) */
    /* JADX WARN: Removed duplicated region for block: B:163:0x03a7 A[Catch: Exception -> 0x037c, all -> 0x0394, TRY_ENTER, TRY_LEAVE, TryCatch #24 {Exception -> 0x037c, blocks: (B:140:0x0372, B:163:0x03a7), top: B:283:0x0372 }] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x03ab  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x0569 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:276:0x0570 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:290:0x058b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:308:0x0584 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:314:0x043f A[EXC_TOP_SPLITTER, PHI: r4
  0x043f: PHI (r4v6 com.hierynomus.smbj.connection.Connection) = 
  (r4v4 com.hierynomus.smbj.connection.Connection)
  (r4v8 com.hierynomus.smbj.connection.Connection)
  (r4v8 com.hierynomus.smbj.connection.Connection)
  (r4v8 com.hierynomus.smbj.connection.Connection)
  (r4v8 com.hierynomus.smbj.connection.Connection)
 binds: [B:240:0x0575, B:259:0x043f, B:222:0x0542, B:300:0x043f, B:190:0x043a] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:318:0x057d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void e(mc.b bVar) throws Throwable {
        DiskShare diskShare;
        Connection connectionConnect;
        Session session;
        Session sessionAuthenticate;
        String str;
        DiskShare diskShare2;
        String[] strArr;
        String str2;
        int i10;
        DiskShare diskShare3;
        int iIndexOf;
        String str3;
        String str4;
        int i11;
        String[] strArr2;
        String str5;
        WpPathBean wpPathBean;
        StringBuilder sb2;
        n5 n5Var = this.f2676c;
        boolean z = n5Var.f18308u;
        WpPathBean wpPathBean2 = this.f2675b;
        String str6 = "找不到共享名";
        if (z) {
            String str7 = wpPathBean2.path;
            String str8 = "无权限查看此目录";
            if (str7 == null || str7.isEmpty() || wpPathBean2.path.equals("/")) {
                ArrayList arrayList = new ArrayList();
                if (n5Var.f18310w.isEmpty()) {
                    str3 = "连接失败";
                } else {
                    String[] strArrSplit = n5Var.f18310w.split(";");
                    int length = strArrSplit.length;
                    str3 = "连接失败";
                    int i12 = 0;
                    while (i12 < length) {
                        String str9 = strArrSplit[i12];
                        int i13 = length;
                        try {
                            strArr2 = strArrSplit;
                        } catch (Exception e7) {
                            e = e7;
                            strArr2 = strArrSplit;
                        }
                        try {
                            wpPathBean = new WpPathBean(str9, "/" + str9 + "/");
                            sb2 = new StringBuilder();
                            str5 = str8;
                        } catch (Exception e10) {
                            e = e10;
                            str5 = str8;
                            ("" + e.getMessage()).contains("network name cannot be found");
                            i12++;
                            length = i13;
                            strArrSplit = strArr2;
                            str8 = str5;
                        }
                        try {
                            sb2.append(n5Var.b());
                            sb2.append(wpPathBean.path);
                            new t0(sb2.toString()).x();
                            wpPathBean.time_txt = "(共享名)";
                            arrayList.add(wpPathBean);
                        } catch (Exception e11) {
                            e = e11;
                            ("" + e.getMessage()).contains("network name cannot be found");
                            i12++;
                            length = i13;
                            strArrSplit = strArr2;
                            str8 = str5;
                        }
                        i12++;
                        length = i13;
                        strArrSplit = strArr2;
                        str8 = str5;
                    }
                }
                str4 = str8;
                if (arrayList.isEmpty()) {
                    try {
                        t0[] t0VarArrX = new t0(n5Var.b() + "/").x();
                        int i14 = 0;
                        for (int length2 = t0VarArrX.length; i14 < length2; length2 = i11) {
                            t0 t0Var = t0VarArrX[i14];
                            WpPathBean wpPathBean3 = new WpPathBean();
                            t0[] t0VarArr = t0VarArrX;
                            String strP = t0Var.p();
                            wpPathBean3.name = strP;
                            if (strP == null || strP.isEmpty() || wpPathBean3.name.contains("$")) {
                                i11 = length2;
                            } else {
                                String str10 = wpPathBean3.name;
                                wpPathBean3.path = str10;
                                if (str10.startsWith("/")) {
                                    i11 = length2;
                                } else {
                                    StringBuilder sb3 = new StringBuilder();
                                    sb3.append("/");
                                    i11 = length2;
                                    sb3.append(wpPathBean3.path);
                                    wpPathBean3.path = sb3.toString();
                                }
                                if (!wpPathBean3.path.endsWith("/")) {
                                    wpPathBean3.path += "/";
                                }
                                wpPathBean3.time_txt = "(共享名)";
                                wpPathBean3.is_dir = t0Var.u();
                                arrayList.add(wpPathBean3);
                            }
                            i14++;
                            t0VarArrX = t0VarArr;
                        }
                    } catch (Exception e12) {
                        String strB = da.b.b(e12, new StringBuilder(), "");
                        String str11 = strB.contains("system cannot find the file") ? str4 : strB;
                        bVar.d(new Throwable(str11.isEmpty() ? str3 : str11));
                        return;
                    }
                }
                if (arrayList.size() == 0) {
                    bVar.d(new Throwable("找不到共享名"));
                    return;
                } else {
                    if (arrayList.size() != 1) {
                        bVar.f(arrayList);
                        bVar.b();
                        return;
                    }
                    wpPathBean2.path = ((WpPathBean) arrayList.get(0)).path;
                }
            } else {
                str3 = "连接失败";
                str4 = "无权限查看此目录";
            }
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            try {
                n5Var.b();
                t0[] t0VarArrX2 = new t0(n5Var.b() + wpPathBean2.path).x();
                if (t0VarArrX2 == null) {
                    android.support.v4.media.session.a.B("读取失败", bVar);
                    return;
                }
                for (t0 t0Var2 : t0VarArrX2) {
                    WpPathBean wpPathBean4 = new WpPathBean();
                    String strP2 = t0Var2.p();
                    wpPathBean4.name = strP2;
                    if (v.f4106a.f4129l0 || !strP2.startsWith(".")) {
                        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                        wpPathBean4.time_txt = com.yunpan.appmanage.util.j.f4033a.f4038b0.format(Long.valueOf(t0Var2.getLastModified()));
                        boolean zU = t0Var2.u();
                        wpPathBean4.is_dir = zU;
                        if (zU) {
                            if (wpPathBean4.name.endsWith("/")) {
                                wpPathBean4.name = android.support.v4.media.session.a.l(1, 0, wpPathBean4.name);
                            }
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append(wpPathBean2.path);
                            wpPathBean4.path = g.b.l(wpPathBean4.name, "/", sb4);
                            arrayList2.add(wpPathBean4);
                        } else {
                            wpPathBean4.path = wpPathBean2.path + wpPathBean4.name;
                            long jW = t0Var2.w();
                            wpPathBean4.size_long = jW;
                            wpPathBean4.size_txt = p000if.a.D0((double) jW);
                            arrayList3.add(wpPathBean4);
                        }
                    }
                }
                Collections.sort(arrayList2, new a2.m(27));
                Collections.sort(arrayList3, new a2.m(28));
                arrayList2.addAll(arrayList3);
                bVar.f(arrayList2);
                bVar.b();
                return;
            } catch (Exception e13) {
                e13.printStackTrace();
                String strB2 = da.b.b(e13, new StringBuilder(), "");
                String str12 = strB2.contains("system cannot find the file") ? str4 : strB2;
                bVar.d(new Throwable(str12.isEmpty() ? str3 : str12));
                return;
            }
        }
        SmbConfig.Builder builderWithMultiProtocolNegotiate = SmbConfig.builder().withMultiProtocolNegotiate(true);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        SMBClient sMBClient = new SMBClient(builderWithMultiProtocolNegotiate.withTimeout(30L, timeUnit).withSoTimeout(30L, timeUnit).build());
        try {
            connectionConnect = sMBClient.connect(n5Var.f18292c, n5Var.f18293d);
            try {
                sessionAuthenticate = connectionConnect.authenticate(n5Var.f18294e.isEmpty() ? AuthenticationContext.guest() : new AuthenticationContext(n5Var.f18294e, n5Var.f18295f.toCharArray(), n5Var.f18309v));
                try {
                } catch (Exception e14) {
                    e = e14;
                    session = sessionAuthenticate;
                    diskShare = null;
                } catch (Throwable th2) {
                    th = th2;
                    session = sessionAuthenticate;
                    diskShare = null;
                }
            } catch (Exception e15) {
                e = e15;
                diskShare = null;
                session = null;
                try {
                    bVar.d(new Throwable(qa.f.i(e)));
                    if (diskShare != null) {
                    }
                    if (session != null) {
                    }
                    if (connectionConnect != null) {
                    }
                    sMBClient.close();
                    return;
                } catch (Throwable th3) {
                    th = th3;
                    if (diskShare != null) {
                    }
                    if (session != null) {
                    }
                    if (connectionConnect != null) {
                    }
                    try {
                        sMBClient.close();
                    } catch (Exception unused) {
                    }
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                diskShare = null;
                session = null;
                if (diskShare != null) {
                }
                if (session != null) {
                }
                if (connectionConnect != null) {
                }
                sMBClient.close();
                throw th;
            }
        } catch (Exception e16) {
            e = e16;
            diskShare = null;
            connectionConnect = null;
        } catch (Throwable th5) {
            th = th5;
            diskShare = null;
            connectionConnect = null;
        }
        try {
            if (wpPathBean2.path.isEmpty() || wpPathBean2.path.equals("/")) {
                ArrayList arrayList4 = new ArrayList();
                if (n5Var.f18310w.isEmpty()) {
                    str = "找不到共享名";
                    diskShare2 = null;
                } else {
                    String[] strArrSplit2 = n5Var.f18310w.split(";");
                    int length3 = strArrSplit2.length;
                    int i15 = 0;
                    diskShare2 = null;
                    while (i15 < length3) {
                        int i16 = length3;
                        try {
                            try {
                                String str13 = strArrSplit2[i15];
                                try {
                                    try {
                                        strArr = strArrSplit2;
                                    } catch (Exception unused2) {
                                        strArr = strArrSplit2;
                                    }
                                    try {
                                        diskShare3 = (DiskShare) sessionAuthenticate.connectShare(str13);
                                        try {
                                            try {
                                                diskShare3.list("/");
                                                str2 = str6;
                                            } catch (Throwable th6) {
                                                th = th6;
                                                diskShare2 = diskShare3;
                                                if (diskShare2 != null) {
                                                    try {
                                                        diskShare2.close();
                                                    } catch (Exception unused3) {
                                                    }
                                                }
                                                throw th;
                                            }
                                        } catch (Exception unused4) {
                                            str2 = str6;
                                        }
                                    } catch (Exception unused5) {
                                        str2 = str6;
                                        if (diskShare2 == null) {
                                            diskShare2.close();
                                            i10 = 1;
                                            diskShare2 = null;
                                            i15 += i10;
                                            length3 = i16;
                                            str6 = str2;
                                            strArrSplit2 = strArr;
                                        } else {
                                            i10 = 1;
                                            i15 += i10;
                                            length3 = i16;
                                            str6 = str2;
                                            strArrSplit2 = strArr;
                                        }
                                    }
                                    try {
                                        WpPathBean wpPathBean5 = new WpPathBean(str13, "/" + str13 + "/");
                                        wpPathBean5.time_txt = "(共享名)";
                                        arrayList4.add(wpPathBean5);
                                        try {
                                            try {
                                                diskShare3.close();
                                            } catch (Throwable th7) {
                                                th = th7;
                                                session = sessionAuthenticate;
                                                diskShare = diskShare3;
                                                if (diskShare != null) {
                                                    try {
                                                        diskShare.close();
                                                    } catch (Exception unused6) {
                                                    }
                                                }
                                                if (session != null) {
                                                    try {
                                                        session.close();
                                                    } catch (Exception unused7) {
                                                    }
                                                }
                                                if (connectionConnect != null) {
                                                    try {
                                                        connectionConnect.close();
                                                    } catch (Exception unused8) {
                                                    }
                                                }
                                                sMBClient.close();
                                                throw th;
                                            }
                                        } catch (Exception unused9) {
                                        }
                                    } catch (Exception unused10) {
                                        diskShare2 = diskShare3;
                                        if (diskShare2 == null) {
                                        }
                                    }
                                    i10 = 1;
                                    diskShare2 = null;
                                    i15 += i10;
                                    length3 = i16;
                                    str6 = str2;
                                    strArrSplit2 = strArr;
                                } catch (Throwable th8) {
                                    th = th8;
                                }
                            } catch (Exception e17) {
                                e = e17;
                                session = sessionAuthenticate;
                                diskShare = diskShare2;
                                bVar.d(new Throwable(qa.f.i(e)));
                                if (diskShare != null) {
                                }
                                if (session != null) {
                                }
                                if (connectionConnect != null) {
                                }
                                sMBClient.close();
                                return;
                            }
                        } catch (Throwable th9) {
                            th = th9;
                            session = sessionAuthenticate;
                            diskShare = diskShare2;
                            if (diskShare != null) {
                            }
                            if (session != null) {
                            }
                            if (connectionConnect != null) {
                            }
                            sMBClient.close();
                            throw th;
                        }
                    }
                    str = str6;
                }
                if (arrayList4.isEmpty()) {
                    Iterator<NetShareInfo0> it = new ServerService(SMBTransportFactories.SRVSVC.getTransport(sessionAuthenticate)).getShares0().iterator();
                    while (it.hasNext()) {
                        String netName = it.next().getNetName();
                        if (!netName.contains("$")) {
                            WpPathBean wpPathBean6 = new WpPathBean(netName, "/" + netName + "/");
                            wpPathBean6.time_txt = "(共享名)";
                            arrayList4.add(wpPathBean6);
                        }
                    }
                }
                if (arrayList4.isEmpty()) {
                    throw new Exception(str);
                }
                if (arrayList4.size() != 1) {
                    bVar.f(arrayList4);
                    bVar.b();
                    if (diskShare2 != null) {
                        try {
                            diskShare2.close();
                        } catch (Exception unused11) {
                        }
                    }
                    if (sessionAuthenticate != null) {
                        sessionAuthenticate.close();
                    }
                    connectionConnect.close();
                    sMBClient.close();
                    return;
                }
                wpPathBean2.path = ((WpPathBean) arrayList4.get(0)).path;
            } else {
                diskShare2 = null;
            }
            if (iIndexOf == -1) {
                bVar.d(new Throwable("共享名错误"));
                if (diskShare2 != null) {
                    try {
                        diskShare2.close();
                    } catch (Exception unused12) {
                    }
                }
                if (sessionAuthenticate != null) {
                    sessionAuthenticate.close();
                }
                connectionConnect.close();
                sMBClient.close();
                return;
            }
            String strSubstring = wpPathBean2.path.substring(1, iIndexOf);
            String strSubstring2 = wpPathBean2.path.substring(iIndexOf);
            diskShare3 = (DiskShare) sessionAuthenticate.connectShare(strSubstring);
            try {
                List<FileIdBothDirectoryInformation> list = diskShare3.list(strSubstring2);
                ArrayList arrayList5 = new ArrayList();
                ArrayList arrayList6 = new ArrayList();
                Iterator<FileIdBothDirectoryInformation> it2 = list.iterator();
                while (it2.hasNext()) {
                    FileIdBothDirectoryInformation next = it2.next();
                    String fileName = next.getFileName();
                    StringBuilder sb5 = new StringBuilder();
                    Iterator<FileIdBothDirectoryInformation> it3 = it2;
                    sb5.append(wpPathBean2.path);
                    sb5.append(next.getFileName());
                    WpPathBean wpPathBean7 = new WpPathBean(fileName, sb5.toString());
                    if (!wpPathBean7.name.replace(".", "").isEmpty() && (v.f4106a.f4129l0 || !wpPathBean7.name.startsWith("."))) {
                        Date date = next.getLastWriteTime().toDate();
                        DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                        wpPathBean7.time_txt = com.yunpan.appmanage.util.j.f4033a.f4038b0.format(date);
                        if ((next.getFileAttributes() & FileAttributes.FILE_ATTRIBUTE_DIRECTORY.getValue()) != 0) {
                            wpPathBean7.is_dir = true;
                            wpPathBean7.path += "/";
                            arrayList5.add(wpPathBean7);
                        } else {
                            wpPathBean7.is_dir = false;
                            long endOfFile = next.getEndOfFile();
                            wpPathBean7.size_long = endOfFile;
                            wpPathBean7.size_txt = p000if.a.D0(endOfFile);
                            arrayList6.add(wpPathBean7);
                        }
                    }
                    it2 = it3;
                }
                Collections.sort(arrayList5, new a2.m(29));
                Collections.sort(arrayList6, new qa.e(0));
                arrayList5.addAll(arrayList6);
                bVar.f(arrayList5);
                bVar.b();
                try {
                    diskShare3.close();
                } catch (Exception unused13) {
                }
                sessionAuthenticate.close();
            } catch (Exception e18) {
                e = e18;
                session = sessionAuthenticate;
                diskShare = diskShare3;
                bVar.d(new Throwable(qa.f.i(e)));
                if (diskShare != null) {
                    try {
                        diskShare.close();
                    } catch (Exception unused14) {
                    }
                }
                if (session != null) {
                    try {
                        session.close();
                    } catch (Exception unused15) {
                    }
                }
                if (connectionConnect != null) {
                    connectionConnect.close();
                }
                sMBClient.close();
                return;
            }
            sMBClient.close();
            return;
        } catch (Exception unused16) {
            return;
        }
        iIndexOf = wpPathBean2.path.indexOf("/", 1);
        connectionConnect.close();
    }

    /* JADX WARN: Removed duplicated region for block: B:219:0x0683  */
    @Override // ec.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void g(mc.b bVar) throws Exception {
        z7.s sVarG;
        int iE;
        int i10;
        String strI = "";
        n5 n5Var = this.f2676c;
        WpPathBean wpPathBean = this.f2675b;
        switch (this.f2674a) {
            case 0:
                z7.s sVarG2 = d.b.b0(s1.g.H(n5Var, "https://api.guangyapan.com/userres/v1/file/get_file_list", "{\"pageSize\":50,\"orderBy\":3,\"sortType\":1,\"parentId\":\"" + wpPathBean.path + "\",\"page\":" + (wpPathBean.page - 1) + "}")).g();
                if (!sVarG2.o("msg").i().equals("success")) {
                    String strI2 = sVarG2.o("msg").i();
                    if (strI2 == null || strI2.isEmpty()) {
                        strI2 = "出错";
                    }
                    android.support.v4.media.session.a.B(strI2.contains("token is expired") ? "登录失效，请重新选中网盘" : strI2, bVar);
                    return;
                }
                ArrayList arrayList = new ArrayList();
                z7.s sVarQ = sVarG2.q("data");
                if (!sVarQ.f19480a.containsKey("list")) {
                    wpPathBean.hasMoreData = false;
                    bVar.f(arrayList);
                    bVar.b();
                    return;
                }
                z7.o oVarP = sVarQ.p("list");
                for (int i11 = 0; i11 < oVarP.f19478a.size(); i11++) {
                    WpPathBean wpPathBean2 = new WpPathBean();
                    z7.s sVarG3 = oVarP.l(i11).g();
                    wpPathBean2.jsonObject = sVarG3;
                    boolean zContainsKey = sVarG3.f19480a.containsKey("fileSize");
                    wpPathBean2.is_dir = !zContainsKey;
                    if (zContainsKey) {
                        wpPathBean2.name = wpPathBean2.jsonObject.o("fileName").i();
                        wpPathBean2.path = wpPathBean2.jsonObject.o("fileId").i();
                        wpPathBean2.time_txt = p000if.a.m0(wpPathBean2.jsonObject.o("utime").h());
                        long jH = wpPathBean2.jsonObject.o("fileSize").h();
                        wpPathBean2.size_long = jH;
                        wpPathBean2.size_txt = p000if.a.D0(jH);
                    } else {
                        wpPathBean2.name = wpPathBean2.jsonObject.o("fileName").i();
                        wpPathBean2.path = wpPathBean2.jsonObject.o("fileId").i();
                        wpPathBean2.time_txt = p000if.a.m0(wpPathBean2.jsonObject.o("utime").h());
                    }
                    arrayList.add(wpPathBean2);
                }
                if (arrayList.size() < 50 || wpPathBean.page * 50 >= sVarQ.o("total").e()) {
                    wpPathBean.hasMoreData = false;
                } else {
                    wpPathBean.hasMoreData = true;
                    wpPathBean.page++;
                }
                bVar.f(arrayList);
                bVar.b();
                return;
            case 1:
                try {
                    z7.s sVar = new z7.s();
                    z7.o oVar = new z7.o();
                    oVar.j(wpPathBean.path);
                    sVar.j("fileIds", oVar);
                    sVar.m("title", wpPathBean.name);
                    sVar.l("validateDuration", 0);
                    sVar.l("shareType", 0);
                    sVar.m("code", "");
                    sVar.k("autoFillCode", Boolean.FALSE);
                    sVar.m("trafficLimit", "0");
                    sVar.l("maxRestoreCount", 0);
                    sVar.l("downloadType", 1);
                    z7.s sVarG4 = d.b.b0(s1.g.H(n5Var, "https://api.guangyapan.com/userres/v1/share_file", sVar.toString())).g();
                    if (!sVarG4.o("msg").i().toLowerCase().equals("success")) {
                        throw new Exception(sVarG4.o("msg").i());
                    }
                    bVar.f(sVarG4.q("data").o("shareUrl").i());
                    bVar.b();
                    return;
                } catch (Exception e7) {
                    bVar.d(e7);
                    return;
                }
            case 2:
                ArrayList arrayList2 = new ArrayList();
                if (wpPathBean.page == 1) {
                    z7.s sVarN = nh.b.N(n5Var, wpPathBean, true);
                    try {
                        int iE2 = sVarN.o("zt").e();
                        if (iE2 == 1 || iE2 == 2) {
                            z7.o oVarF = sVarN.o("text").f();
                            for (int i12 = 0; i12 < oVarF.f19478a.size(); i12++) {
                                WpPathBean wpPathBean3 = new WpPathBean();
                                z7.s sVarG5 = oVarF.l(i12).g();
                                wpPathBean3.jsonObject = sVarG5;
                                wpPathBean3.name = sVarG5.o("name").i();
                                wpPathBean3.path = wpPathBean3.jsonObject.o("fol_id").i();
                                wpPathBean3.time_txt = wpPathBean3.jsonObject.o("folder_des").i();
                                wpPathBean3.is_dir = true;
                                arrayList2.add(wpPathBean3);
                            }
                        }
                    } catch (Exception unused) {
                    }
                }
                z7.s sVarN2 = nh.b.N(n5Var, wpPathBean, false);
                if (sVarN2 == null) {
                    android.support.v4.media.session.a.B("请求失败", bVar);
                    return;
                }
                if (sVarN2.o("zt").e() != 1) {
                    try {
                        try {
                            strI = sVarN2.o("info").i();
                        } catch (Exception unused2) {
                            strI = sVarN2.o("text").i();
                        }
                    } catch (Exception unused3) {
                    }
                    if (strI == null || strI.isEmpty() || strI.equals("null")) {
                        strI = "出错";
                    }
                    android.support.v4.media.session.a.B(strI, bVar);
                    return;
                }
                z7.o oVarF2 = sVarN2.o("text").f();
                int i13 = 0;
                while (true) {
                    ArrayList arrayList3 = oVarF2.f19478a;
                    if (i13 >= arrayList3.size()) {
                        if (arrayList3.size() < 15) {
                            wpPathBean.hasMoreData = false;
                        } else {
                            wpPathBean.hasMoreData = true;
                        }
                        wpPathBean.page++;
                        bVar.f(arrayList2);
                        bVar.b();
                        return;
                    }
                    WpPathBean wpPathBean4 = new WpPathBean();
                    z7.s sVarG6 = oVarF2.l(i13).g();
                    wpPathBean4.jsonObject = sVarG6;
                    wpPathBean4.name = sVarG6.o("name_all").i();
                    wpPathBean4.path = wpPathBean4.jsonObject.o(Name.MARK).i();
                    wpPathBean4.is_dir = false;
                    wpPathBean4.size_txt = wpPathBean4.jsonObject.o("size").i();
                    wpPathBean4.time_txt = wpPathBean4.jsonObject.o("time").i();
                    arrayList2.add(wpPathBean4);
                    i13++;
                }
                break;
            case 3:
                if (n5Var.f18292c.isEmpty()) {
                    n5Var.f18292c = "https://pc.woozooo.com";
                }
                String strL = g.b.l(n5Var.f18292c, "/doupload.php", new StringBuilder());
                String str = "task=6&file_id=" + wpPathBean.path;
                if (wpPathBean.is_dir) {
                    str = "task=3&folder_id=" + wpPathBean.path;
                }
                String strP = nh.b.P(n5Var.f18298i, strL, str, n5Var.f18292c + "/mydisk.php?item=files&action=index&u=" + wpPathBean.path);
                if (strP.isEmpty()) {
                    strI = "请求出错";
                } else {
                    try {
                        sVarG = d.b.b0(strP).g();
                    } catch (Exception unused4) {
                    }
                    if (sVarG.o("zt").e() != 1) {
                        String strI3 = sVarG.o("info").i();
                        if (strI3 != null) {
                            strI = strI3.isEmpty() ? "删除出错" : strI3;
                        }
                    }
                }
                if (strI.isEmpty()) {
                    bVar.b();
                    return;
                } else {
                    android.support.v4.media.session.a.B(strI, bVar);
                    return;
                }
            case 4:
                if (n5Var.f18292c.isEmpty()) {
                    n5Var.f18292c = "https://pc.woozooo.com";
                }
                String strL2 = g.b.l(n5Var.f18292c, "/doupload.php", new StringBuilder());
                String str2 = "task=22&file_id=" + wpPathBean.path;
                if (wpPathBean.is_dir) {
                    str2 = "task=18&folder_id=" + wpPathBean.path;
                }
                String strP2 = nh.b.P(n5Var.f18298i, strL2, str2, n5Var.f18292c + "/mydisk.php?item=files&action=index&u=" + n5Var.f18297h);
                if (!strP2.isEmpty()) {
                    z7.s sVarG7 = d.b.b0(strP2).g();
                    if (sVarG7.o("zt").e() == 1) {
                        String strI4 = sVarG7.o("info").g().o("pwd").i();
                        String strI5 = wpPathBean.is_dir ? sVarG7.o("info").g().o("new_url").i() : sVarG7.o("info").g().o("is_newd").i() + "/" + sVarG7.o("info").g().o("f_id").i();
                        if (strI4.isEmpty()) {
                            bVar.f(strI5);
                        } else {
                            bVar.f(strI5 + "\n分享密码：" + strI4);
                        }
                        bVar.b();
                        return;
                    }
                }
                android.support.v4.media.session.a.B("请求出错", bVar);
                return;
            case 5:
                try {
                    bVar.f(nh.b.M(n5Var, wpPathBean));
                    bVar.b();
                    return;
                } catch (Exception e10) {
                    bVar.d(e10);
                    return;
                }
            case 6:
                String str3 = "读取目录出错";
                ArrayList arrayList4 = new ArrayList();
                z7.s sVarN3 = nh.b.N(n5Var, wpPathBean, true);
                try {
                    iE = sVarN3.o("zt").e();
                } catch (Exception unused5) {
                }
                if (iE != 1 && iE != 2) {
                    try {
                        try {
                            strI = sVarN3.o("info").i();
                        } catch (Exception unused6) {
                        }
                    } catch (Exception unused7) {
                        strI = sVarN3.o("text").i();
                    }
                    if (strI != null && !strI.isEmpty() && !strI.equals("null")) {
                        str3 = strI;
                    }
                    android.support.v4.media.session.a.B(str3, bVar);
                    return;
                }
                z7.o oVarF3 = sVarN3.o("text").f();
                for (int i14 = 0; i14 < oVarF3.f19478a.size(); i14++) {
                    WpPathBean wpPathBean5 = new WpPathBean();
                    z7.s sVarG8 = oVarF3.l(i14).g();
                    wpPathBean5.jsonObject = sVarG8;
                    wpPathBean5.name = sVarG8.o("name").i();
                    wpPathBean5.path = wpPathBean5.jsonObject.o("fol_id").i();
                    wpPathBean5.time_txt = wpPathBean5.jsonObject.o("folder_des").i();
                    wpPathBean5.is_dir = true;
                    arrayList4.add(wpPathBean5);
                }
                bVar.f(arrayList4);
                bVar.b();
                return;
            case 7:
                z7.s sVarD = qf.c.D(n5Var, wpPathBean);
                if (sVarD == null) {
                    android.support.v4.media.session.a.B("请求失败", bVar);
                    return;
                }
                if (sVarD.o("code").e() != 0) {
                    String strI6 = sVarD.o("message").i();
                    if (strI6 == null || strI6.isEmpty()) {
                        strI6 = "出错";
                    }
                    android.support.v4.media.session.a.B(strI6.contains("token is expired") ? "登录失效，请重新选中网盘" : strI6, bVar);
                    return;
                }
                ArrayList arrayList5 = new ArrayList();
                z7.o oVarF4 = sVarD.o("data").g().o("InfoList").f();
                for (int i15 = 0; i15 < oVarF4.f19478a.size(); i15++) {
                    WpPathBean wpPathBean6 = new WpPathBean();
                    z7.s sVarG9 = oVarF4.l(i15).g();
                    wpPathBean6.jsonObject = sVarG9;
                    wpPathBean6.name = sVarG9.o("FileName").i();
                    wpPathBean6.path = "" + wpPathBean6.jsonObject.o("FileId").h();
                    boolean z = wpPathBean6.jsonObject.o("Type").e() == 1;
                    wpPathBean6.is_dir = z;
                    if (!z) {
                        long jH2 = wpPathBean6.jsonObject.o("Size").h();
                        wpPathBean6.size_long = jH2;
                        wpPathBean6.size_txt = p000if.a.D0(jH2);
                    }
                    String strI7 = wpPathBean6.jsonObject.o("CreateAt").i();
                    wpPathBean6.time_txt = strI7;
                    String strReplace = strI7.replace("T", " ");
                    wpPathBean6.time_txt = strReplace;
                    int iIndexOf = strReplace.indexOf(Marker.ANY_NON_NULL_MARKER);
                    if (iIndexOf != -1) {
                        wpPathBean6.time_txt = wpPathBean6.time_txt.substring(0, iIndexOf);
                    }
                    arrayList5.add(wpPathBean6);
                }
                if (sVarD.o("data").g().o("Len").e() == 100) {
                    int iE3 = sVarD.o("data").g().o("Total").e();
                    int i16 = wpPathBean.page;
                    if (iE3 > i16 * 100) {
                        i10 = 1;
                        wpPathBean.hasMoreData = true;
                    } else {
                        i10 = 1;
                        wpPathBean.hasMoreData = false;
                    }
                    wpPathBean.page = i16 + i10;
                }
                bVar.f(arrayList5);
                bVar.b();
                return;
            case 8:
                a(bVar);
                return;
            case 9:
                String strQ = s1.g.q(Long.toString(System.currentTimeMillis()));
                StringBuilder sb2 = new StringBuilder("https://api.feejii.com/app/record/file/list?uuid=");
                sb2.append(n5Var.l);
                sb2.append("&devType=6&devCode=");
                android.support.v4.media.session.a.C(sb2, n5Var.l, "&devModel=chrome&devVersion=140&appVersion=&timestamp=", strQ, "&appToken=");
                sb2.append(n5Var.f18300k);
                sb2.append("&extra=2&offset=");
                sb2.append(wpPathBean.page);
                sb2.append("&limit=110&folderId=");
                sb2.append(wpPathBean.path);
                sb2.append("&type=0");
                String strE = s1.g.E(sb2.toString(), "https://www.feejii.com/");
                System.out.getClass();
                z7.s sVarG10 = d.b.b0(strE).g();
                if (sVarG10.o("code").e() != 200) {
                    String strI8 = sVarG10.o("msg").i();
                    if (strI8 == null || strI8.isEmpty()) {
                        strI8 = "出错";
                    }
                    android.support.v4.media.session.a.B(strI8.contains("token is expired") ? "登录失效，请重新选中网盘" : strI8, bVar);
                    return;
                }
                ArrayList arrayList6 = new ArrayList();
                z7.o oVarF5 = sVarG10.o("list").f();
                for (int i17 = 0; i17 < oVarF5.f19478a.size(); i17++) {
                    WpPathBean wpPathBean7 = new WpPathBean();
                    z7.s sVarG11 = oVarF5.l(i17).g();
                    wpPathBean7.jsonObject = sVarG11;
                    boolean z4 = sVarG11.o("fileType").e() == 2;
                    wpPathBean7.is_dir = z4;
                    if (z4) {
                        wpPathBean7.name = wpPathBean7.jsonObject.o("folderName").i();
                        wpPathBean7.path = wpPathBean7.jsonObject.o("folderId").i();
                        wpPathBean7.time_txt = wpPathBean7.jsonObject.o("updTime").i();
                    } else {
                        wpPathBean7.name = wpPathBean7.jsonObject.o("fileName").i();
                        wpPathBean7.path = wpPathBean7.jsonObject.o("fileId").i();
                        wpPathBean7.time_txt = wpPathBean7.jsonObject.o("updTime").i();
                        long jH3 = wpPathBean7.jsonObject.o("fileSize").h();
                        wpPathBean7.size_long = jH3;
                        wpPathBean7.size_txt = p000if.a.l0(jH3);
                    }
                    arrayList6.add(wpPathBean7);
                }
                if (sVarG10.o("totalPage").e() > sVarG10.o("offset").e()) {
                    wpPathBean.hasMoreData = true;
                    wpPathBean.page++;
                } else {
                    wpPathBean.hasMoreData = false;
                }
                bVar.f(arrayList6);
                bVar.b();
                return;
            case 10:
                b(bVar);
                return;
            case 11:
                dh.e eVar = n5Var.f18311x;
                String str4 = "连接中断,请重新选中网盘";
                if (eVar != null && eVar.f()) {
                    try {
                        Object objX = com.bumptech.glide.c.X(n5Var, wpPathBean);
                        if (objX == null) {
                            android.support.v4.media.session.a.B("读取目录失败", bVar);
                            return;
                        } else {
                            bVar.f(objX);
                            bVar.b();
                            return;
                        }
                    } catch (Exception e11) {
                        String strZ = g.b.z(e11, new StringBuilder(""));
                        String str5 = strZ.isEmpty() ? "读取目录失败" : strZ;
                        if (str5.contains("Connection reset") || str5.contains("Broken pipe") || str5.contains("Connection closed")) {
                            com.bumptech.glide.c.l(n5Var.f18311x);
                        } else {
                            str4 = str5;
                        }
                    }
                }
                android.support.v4.media.session.a.B(str4, bVar);
                return;
            case 12:
                c(bVar);
                return;
            case 13:
                d(bVar);
                return;
            case 14:
                e(bVar);
                return;
            default:
                n5 n5Var2 = this.f2676c;
                try {
                    String str6 = wpPathBean.path;
                    int length = str6.substring(str6.indexOf("/", 10)).split("/").length;
                    List listC = qa.g.f(n5Var2, 20L, 20L, 10L).c(wpPathBean.path);
                    ArrayList arrayList7 = new ArrayList();
                    ArrayList arrayList8 = new ArrayList();
                    for (int i18 = 0; i18 < listC.size(); i18++) {
                        q9.a aVar = (q9.a) listC.get(i18);
                        URI uri = aVar.f13171a;
                        v3.f fVar = aVar.f13172b;
                        if (uri.getPath().split("/").length != length) {
                            WpPathBean wpPathBean8 = new WpPathBean(aVar.a(), wpPathBean.path + aVar.a());
                            String str7 = wpPathBean8.name;
                            if (str7 != null && !str7.isEmpty() && (v.f4106a.f4129l0 || !wpPathBean8.name.startsWith("."))) {
                                wpPathBean8.is_dir = "httpd/unix-directory".equals((String) fVar.f16475c);
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                wpPathBean8.time_txt = com.yunpan.appmanage.util.j.f4033a.f4038b0.format((Date) fVar.f16474b);
                                if (wpPathBean8.is_dir) {
                                    wpPathBean8.path += "/";
                                    arrayList7.add(wpPathBean8);
                                } else {
                                    long jLongValue = ((Long) fVar.f16476d).longValue();
                                    wpPathBean8.size_long = jLongValue;
                                    wpPathBean8.size_txt = p000if.a.D0(jLongValue);
                                    arrayList8.add(wpPathBean8);
                                }
                            }
                        }
                    }
                    Collections.sort(arrayList7, new qa.e(1));
                    Collections.sort(arrayList8, new qa.e(2));
                    ArrayList arrayList9 = new ArrayList();
                    if (!arrayList7.isEmpty()) {
                        arrayList9.addAll(arrayList7);
                    }
                    if (!arrayList8.isEmpty()) {
                        arrayList9.addAll(arrayList8);
                    }
                    bVar.f(arrayList9);
                    bVar.b();
                    return;
                } catch (Exception e12) {
                    String strZ2 = g.b.z(e12, new StringBuilder(""));
                    android.support.v4.media.session.a.B(strZ2.isEmpty() ? "读取目录失败" : strZ2, bVar);
                    return;
                }
        }
    }

    public /* synthetic */ b(WpPathBean wpPathBean, n5 n5Var, int i10) {
        this.f2674a = i10;
        this.f2675b = wpPathBean;
        this.f2676c = n5Var;
    }

    public /* synthetic */ b(n5 n5Var, WpPathBean wpPathBean, int i10) {
        this.f2674a = i10;
        this.f2676c = n5Var;
        this.f2675b = wpPathBean;
    }
}
