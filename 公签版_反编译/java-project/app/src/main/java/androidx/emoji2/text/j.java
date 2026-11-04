package androidx.emoji2.text;

import androidx.leanback.widget.SearchBar;
import com.yunpan.appmanage.bean.NameValueBean;
import com.yunpan.appmanage.bean.WpPathBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityDownload;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import okhttp3.ResponseBody;
import x9.b6;
import x9.u5;

/* loaded from: classes.dex */
public final class j implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1107a;

    /* renamed from: b, reason: collision with root package name */
    public final int f1108b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f1109c;

    public /* synthetic */ j(int i10, int i11, Object obj) {
        this.f1107a = i11;
        this.f1109c = obj;
        this.f1108b = i10;
    }

    /* JADX WARN: Removed duplicated region for block: B:205:0x0345 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:244:? A[Catch: Exception -> 0x029c, SYNTHETIC, TRY_ENTER, TRY_LEAVE, TryCatch #14 {Exception -> 0x029c, blocks: (B:61:0x01c2, B:100:0x0297, B:167:0x035c, B:116:0x02ca), top: B:217:0x01c2 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x019b  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() throws Exception {
        String str;
        ResponseBody responseBodyZ;
        InputStream inputStream;
        String str2;
        Throwable th2;
        FileOutputStream fileOutputStream;
        Throwable th3;
        BufferedInputStream bufferedInputStream;
        Throwable th4;
        BufferedOutputStream bufferedOutputStream;
        long j10;
        int i10 = this.f1108b;
        Object obj = this.f1109c;
        switch (this.f1107a) {
            case 0:
                int i11 = 0;
                ArrayList arrayList = (ArrayList) obj;
                int size = arrayList.size();
                if (i10 != 1) {
                    while (i11 < size) {
                        ((i) arrayList.get(i11)).getClass();
                        i11++;
                    }
                    return;
                } else {
                    while (i11 < size) {
                        ((i) arrayList.get(i11)).a();
                        i11++;
                    }
                    return;
                }
            case 1:
                SearchBar searchBar = (SearchBar) obj;
                searchBar.f1566v.play(searchBar.f1567w.get(i10), 1.0f, 1.0f, 1, 0, 1.0f);
                return;
            case 2:
                ((com.google.android.material.datepicker.k) obj).f3571h.smoothScrollToPosition(i10);
                return;
            case 3:
                ((m4.m) obj).smoothScrollToPosition(i10);
                return;
            case 4:
                o0.b bVar = (o0.b) ((l5.y) obj).f10629b;
                if (bVar != null) {
                    bVar.h(i10);
                    return;
                }
                return;
            default:
                ActivityDownload activityDownload = (ActivityDownload) obj;
                u5 u5Var = (u5) activityDownload.V.t(i10);
                if (!activityDownload.f3972h0) {
                    boolean z = u5Var.f18352i;
                    b6 b6Var = u5Var.f18347d;
                    if (!z) {
                        u5Var.f18346c = "下载中";
                        ActivityDownload.y(activityDownload, u5Var);
                        File file = new File(u5Var.f18349f);
                        if (file.getName().length() > 80) {
                            u5Var.f18349f = file.getParent() + "/" + file.getName().substring(file.getName().length() - 80, file.getName().length());
                        }
                        try {
                            q qVar = b6Var.f18204b;
                            if (qVar != null) {
                                WpPathBean wpPathBeanW = qf.c.w(u5Var.f18350g, qVar, activityDownload.Y);
                                responseBodyZ = ActivityDownload.z(wpPathBeanW.downUrl, wpPathBeanW.downUrlReferer);
                            } else {
                                ba.j jVar = b6Var.f18205c;
                                if (jVar != null) {
                                    long j11 = jVar.f2704a;
                                    ba.r rVar = u5Var.f18350g;
                                    String strW = com.bumptech.glide.d.w(j11, rVar.f2745g, rVar.f2744f);
                                    if (strW.isEmpty()) {
                                        throw new Exception("解析失败");
                                    }
                                    responseBodyZ = ActivityDownload.z("https://api.ilanzou.com/unproved/file/redirect?".concat(strW), "");
                                } else {
                                    ba.i iVar = b6Var.f18203a;
                                    if (iVar != null) {
                                        if (!((String) iVar.f2701d).contains("/file/")) {
                                            String str3 = (String) b6Var.f18203a.f2701d;
                                            ba.r rVar2 = u5Var.f18350g;
                                            b6Var.f18203a.f2701d = (String) ((b6) com.bumptech.glide.c.R(new ba.r(str3, rVar2.f2742d, rVar2.f2747i, 0)).get(0)).f18203a.f2701d;
                                        }
                                        ba.i iVar2 = b6Var.f18203a;
                                        responseBodyZ = nh.b.Y((String) iVar2.f2701d, (String) iVar2.f2702e, u5Var.f18350g.f2747i);
                                    } else {
                                        ba.s sVar = b6Var.f18207e;
                                        if (sVar != null) {
                                            ba.r rVar3 = u5Var.f18350g;
                                            str = "addSuppressed";
                                            responseBodyZ = s1.g.z(rVar3.f2741c, rVar3.f2744f, rVar3.f2745g, sVar.f2756d, sVar.f2757e);
                                        } else {
                                            str = "addSuppressed";
                                            ba.g gVar = b6Var.f18212j;
                                            if (gVar != null) {
                                                responseBodyZ = s1.g.A(activityDownload.Z, gVar, ((ba.r) activityDownload.R.t(0)).f2746h);
                                            } else {
                                                ba.l lVar = b6Var.f18208f;
                                                if (lVar != null) {
                                                    responseBodyZ = p000if.a.J(u5Var.f18350g, lVar);
                                                } else {
                                                    NameValueBean nameValueBean = b6Var.f18209g;
                                                    if (nameValueBean != null) {
                                                        responseBodyZ = ActivityDownload.z(nameValueBean.value, "");
                                                    } else if (b6Var.f18210h != null) {
                                                        ba.q qVar2 = activityDownload.R;
                                                        responseBodyZ = d.b.C((ba.r) qVar2.t(qVar2.b() - 1), b6Var.f18210h);
                                                    } else if (b6Var.f18211i != null) {
                                                        ba.q qVar3 = activityDownload.R;
                                                        responseBodyZ = q4.a.h((ba.r) qVar3.t(qVar3.b() - 1), b6Var.f18211i);
                                                    } else {
                                                        String str4 = b6Var.f18206d;
                                                        responseBodyZ = (str4 == null || str4.isEmpty()) ? null : ActivityDownload.z(b6Var.f18206d, "");
                                                    }
                                                }
                                            }
                                        }
                                        if (responseBodyZ != null) {
                                            u5Var.f18346c = "body为空";
                                            ActivityDownload.y(activityDownload, u5Var);
                                            return;
                                        }
                                        if (p000if.a.k0(u5Var.f18349f)) {
                                            StringBuilder sb2 = new StringBuilder();
                                            String str5 = u5Var.f18349f;
                                            sb2.append(str5.substring(0, str5.lastIndexOf(".")));
                                            sb2.append(".apk");
                                            u5Var.f18349f = sb2.toString();
                                        }
                                        try {
                                            InputStream inputStreamByteStream = responseBodyZ.byteStream();
                                            try {
                                                fileOutputStream = new FileOutputStream(u5Var.f18349f);
                                                try {
                                                    bufferedInputStream = new BufferedInputStream(inputStreamByteStream);
                                                    try {
                                                        bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                                                        try {
                                                            long jContentLength = responseBodyZ.contentLength();
                                                            byte[] bArr = new byte[1048576];
                                                            long jCurrentTimeMillis = System.currentTimeMillis();
                                                            long j12 = 0;
                                                            while (true) {
                                                                int i12 = bufferedInputStream.read(bArr);
                                                                if (i12 != -1) {
                                                                    inputStream = inputStreamByteStream;
                                                                    long j13 = j12 + i12;
                                                                    try {
                                                                        bufferedOutputStream.write(bArr, 0, i12);
                                                                        long jCurrentTimeMillis2 = System.currentTimeMillis();
                                                                        if (jCurrentTimeMillis2 - jCurrentTimeMillis >= 500) {
                                                                            StringBuilder sb3 = new StringBuilder();
                                                                            sb3.append("下载中：");
                                                                            double d10 = j13;
                                                                            j10 = j13;
                                                                            double d11 = jContentLength;
                                                                            Double.isNaN(d10);
                                                                            Double.isNaN(d11);
                                                                            sb3.append((int) Math.floor((d10 / d11) * 100.0d));
                                                                            sb3.append("%");
                                                                            u5Var.f18346c = sb3.toString();
                                                                            ActivityDownload.y(activityDownload, u5Var);
                                                                            jCurrentTimeMillis = jCurrentTimeMillis2;
                                                                        } else {
                                                                            j10 = j13;
                                                                        }
                                                                        if (!activityDownload.f3972h0 && !u5Var.f18352i) {
                                                                            inputStreamByteStream = inputStream;
                                                                            j12 = j10;
                                                                        }
                                                                    } catch (Throwable th5) {
                                                                        th = th5;
                                                                        Throwable th6 = th;
                                                                        try {
                                                                            bufferedOutputStream.close();
                                                                            str2 = str;
                                                                            throw th6;
                                                                        } catch (Throwable th7) {
                                                                            try {
                                                                                str2 = str;
                                                                                try {
                                                                                    try {
                                                                                        Throwable.class.getDeclaredMethod(str2, Throwable.class).invoke(th6, th7);
                                                                                        throw th6;
                                                                                    } catch (Exception unused) {
                                                                                        throw th6;
                                                                                    }
                                                                                } catch (Throwable th8) {
                                                                                    th = th8;
                                                                                    th4 = th;
                                                                                    try {
                                                                                        bufferedInputStream.close();
                                                                                        throw th4;
                                                                                    } catch (Throwable th9) {
                                                                                        try {
                                                                                            try {
                                                                                                Throwable.class.getDeclaredMethod(str2, Throwable.class).invoke(th4, th9);
                                                                                                throw th4;
                                                                                            } catch (Exception unused2) {
                                                                                                throw th4;
                                                                                            }
                                                                                        } catch (Throwable th10) {
                                                                                            th = th10;
                                                                                            th3 = th;
                                                                                            try {
                                                                                                fileOutputStream.close();
                                                                                                throw th3;
                                                                                            } catch (Throwable th11) {
                                                                                                try {
                                                                                                    try {
                                                                                                        Throwable.class.getDeclaredMethod(str2, Throwable.class).invoke(th3, th11);
                                                                                                        throw th3;
                                                                                                    } catch (Exception unused3) {
                                                                                                        throw th3;
                                                                                                    }
                                                                                                } catch (Throwable th12) {
                                                                                                    th = th12;
                                                                                                    th2 = th;
                                                                                                    if (inputStream != null) {
                                                                                                        throw th2;
                                                                                                    }
                                                                                                    try {
                                                                                                        inputStream.close();
                                                                                                        throw th2;
                                                                                                    } catch (Throwable th13) {
                                                                                                        try {
                                                                                                            Throwable.class.getDeclaredMethod(str2, Throwable.class).invoke(th2, th13);
                                                                                                            throw th2;
                                                                                                        } catch (Exception unused4) {
                                                                                                            throw th2;
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            } catch (Exception unused5) {
                                                                                str2 = str;
                                                                                throw th6;
                                                                            } catch (Throwable th14) {
                                                                                th = th14;
                                                                                str2 = str;
                                                                                th4 = th;
                                                                                bufferedInputStream.close();
                                                                                throw th4;
                                                                            }
                                                                        }
                                                                    }
                                                                } else {
                                                                    inputStream = inputStreamByteStream;
                                                                }
                                                            }
                                                            q4.a.e(bufferedInputStream);
                                                            q4.a.e(bufferedOutputStream);
                                                            q4.a.e(fileOutputStream);
                                                            q4.a.e(inputStream);
                                                        } catch (Throwable th15) {
                                                            th = th15;
                                                            inputStream = inputStreamByteStream;
                                                        }
                                                    } catch (Throwable th16) {
                                                        th = th16;
                                                        inputStream = inputStreamByteStream;
                                                    }
                                                } catch (Throwable th17) {
                                                    th = th17;
                                                    inputStream = inputStreamByteStream;
                                                    str2 = str;
                                                }
                                            } catch (Throwable th18) {
                                                th = th18;
                                                inputStream = inputStreamByteStream;
                                                str2 = str;
                                            }
                                        } catch (Exception e7) {
                                            e7.printStackTrace();
                                            u5Var.f18346c = "出错,隔段时间再下此文件";
                                            if (new File(u5Var.f18349f).exists()) {
                                                new File(u5Var.f18349f).delete();
                                            }
                                        }
                                        try {
                                            try {
                                                try {
                                                    if (!activityDownload.f3972h0 && !u5Var.f18352i) {
                                                        u5Var.f18346c = "下载完成";
                                                        ActivityDownload.y(activityDownload, u5Var);
                                                        if (!u5Var.f18349f.contains("/data/")) {
                                                            MyDb.get().lambda$addFile_thread$1(u5Var.f18349f);
                                                        }
                                                        if (u5Var.f18348e) {
                                                            activityDownload.M0.execute(new y7.b(24, activityDownload, u5Var, false));
                                                        }
                                                        bufferedOutputStream.close();
                                                        bufferedInputStream.close();
                                                        fileOutputStream.close();
                                                        if (inputStream != null) {
                                                            inputStream.close();
                                                        }
                                                        ActivityDownload.y(activityDownload, u5Var);
                                                        return;
                                                    }
                                                    u5Var.f18346c = "已取消";
                                                    ActivityDownload.y(activityDownload, u5Var);
                                                    try {
                                                        new File(u5Var.f18349f).delete();
                                                    } catch (Exception unused6) {
                                                    }
                                                    bufferedOutputStream.close();
                                                    bufferedInputStream.close();
                                                    fileOutputStream.close();
                                                    if (inputStream != null) {
                                                        inputStream.close();
                                                        return;
                                                    }
                                                    return;
                                                } catch (Throwable th19) {
                                                    th3 = th19;
                                                    str2 = str;
                                                    fileOutputStream.close();
                                                    throw th3;
                                                }
                                            } catch (Throwable th20) {
                                                th4 = th20;
                                                str2 = str;
                                                bufferedInputStream.close();
                                                throw th4;
                                            }
                                        } catch (Throwable th21) {
                                            th2 = th21;
                                            str2 = str;
                                            if (inputStream != null) {
                                            }
                                        }
                                    }
                                }
                            }
                            str = "addSuppressed";
                            if (responseBodyZ != null) {
                            }
                        } catch (Exception e10) {
                            u5Var.f18346c = da.b.b(e10, new StringBuilder(), "");
                            ActivityDownload.y(activityDownload, u5Var);
                            return;
                        }
                    }
                }
                u5Var.f18346c = "已取消";
                ActivityDownload.y(activityDownload, u5Var);
                return;
        }
    }

    public j(int i10, m4.m mVar) {
        this.f1107a = 3;
        this.f1108b = i10;
        this.f1109c = mVar;
    }

    public j(List list, int i10, Throwable th2) {
        this.f1107a = 0;
        s1.g.l(list, "initCallbacks cannot be null");
        this.f1109c = new ArrayList(list);
        this.f1108b = i10;
    }
}
