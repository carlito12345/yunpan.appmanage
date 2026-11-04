package ha;

import android.net.Uri;
import com.yunpan.appmanage.db.FileInfo;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityGjDiy;
import j$.util.Objects;
import java.io.File;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final /* synthetic */ class d4 implements ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6886a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x9.w3 f6887b;

    public /* synthetic */ d4(x9.w3 w3Var, int i10) {
        this.f6886a = i10;
        this.f6887b = w3Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00eb A[PHI: r1
  0x00eb: PHI (r1v54 fa.a0) = (r1v53 fa.a0), (r1v69 fa.a0) binds: [B:24:0x00b7, B:29:0x00e7] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // ec.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void g(mc.b bVar) throws Exception {
        String str;
        x9.w3 w3Var = this.f6887b;
        switch (this.f6886a) {
            case 0:
                List<FileInfo> listSqlQuery = MyDb.get().getFileInfoDao().sqlQuery(new a2.g1(g.b.l(com.yunpan.appmanage.util.v.f4106a.f4129l0 ? "" : " and name NOT LIKE '.%'", " ORDER BY name COLLATE NOCASE", new StringBuilder("SELECT * FROM fileList WHERE isDir=1 and parent=?")), new Object[]{w3Var.f18365b}));
                ArrayList arrayList = new ArrayList();
                if (listSqlQuery != null && !listSqlQuery.isEmpty()) {
                    Iterator<FileInfo> it = listSqlQuery.iterator();
                    while (it.hasNext()) {
                        arrayList.add(new x9.w3(it.next()));
                    }
                }
                bVar.f(arrayList);
                bVar.b();
                break;
            case 1:
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                com.yunpan.appmanage.util.u.b(w3Var, arrayList2, null, wVar.f4129l0, wVar.f4133n0);
                com.yunpan.appmanage.util.u.a(w3Var.f18365b, arrayList2, arrayList3);
                bVar.f(arrayList2);
                bVar.b();
                break;
            case 2:
                List<FileInfo> listSqlQuery2 = MyDb.get().getFileInfoDao().sqlQuery(new a2.g1(g.b.l(com.yunpan.appmanage.util.v.f4106a.f4129l0 ? "" : " and name NOT LIKE '.%'", " ORDER BY name COLLATE NOCASE", new StringBuilder("SELECT * FROM fileList WHERE parent=?")), new Object[]{w3Var.f18365b}));
                ArrayList arrayList4 = new ArrayList();
                ArrayList arrayList5 = new ArrayList();
                if (listSqlQuery2 != null && !listSqlQuery2.isEmpty()) {
                    for (FileInfo fileInfo : listSqlQuery2) {
                        if (fileInfo.isDir) {
                            arrayList4.add(new x9.w3(fileInfo));
                        } else {
                            arrayList5.add(new x9.w3(fileInfo));
                        }
                    }
                    arrayList4.addAll(arrayList5);
                }
                bVar.f(arrayList4);
                bVar.b();
                break;
            case 3:
                ArrayList arrayList6 = new ArrayList();
                if (w3Var.f18365b.endsWith("/data") && !com.yunpan.appmanage.util.a0.b(w3Var.f18365b)) {
                    StringBuilder sb2 = new StringBuilder();
                    String str2 = w3Var.f18365b;
                    sb2.append(str2.substring(0, str2.lastIndexOf("/")));
                    sb2.append("/\u200bdata");
                    w3Var.f18365b = sb2.toString();
                }
                try {
                    File[] fileArrListFiles = new File(w3Var.f18365b).listFiles();
                    if (fileArrListFiles == null) {
                        bVar.b();
                        break;
                    } else {
                        for (File file : fileArrListFiles) {
                            if (com.yunpan.appmanage.util.v.f4106a.f4129l0 || !file.getName().startsWith(".")) {
                                x9.w3 w3Var2 = new x9.w3(file);
                                if (w3Var2.f18366c) {
                                    arrayList6.add(w3Var2);
                                }
                            }
                        }
                        Collections.sort(arrayList6, new a2.m(18));
                        bVar.f(arrayList6);
                        bVar.b();
                        break;
                    }
                } catch (Exception unused) {
                    android.support.v4.media.session.a.B("无权限", bVar);
                    return;
                }
                break;
            case 4:
                List<FileInfo> listSqlQuery3 = MyDb.get().getFileInfoDao().sqlQuery(new a2.g1(g.b.l(com.yunpan.appmanage.util.v.f4106a.f4129l0 ? "" : " and name NOT LIKE '.%'", " ORDER BY   CASE WHEN isDir = 1 THEN 0 ELSE 1 END,   name COLLATE NOCASE ASC", new StringBuilder("SELECT * FROM fileList WHERE parent=?")), new Object[]{w3Var.f18365b}));
                ArrayList arrayList7 = new ArrayList();
                if (listSqlQuery3 != null && !listSqlQuery3.isEmpty()) {
                    Iterator<FileInfo> it2 = listSqlQuery3.iterator();
                    while (it2.hasNext()) {
                        arrayList7.add(new x9.w3(it2.next()));
                    }
                }
                bVar.f(arrayList7);
                bVar.b();
                break;
            case 5:
                String strX = w3Var.f18365b;
                try {
                    if (strX.toLowerCase().endsWith(".apk") || strX.toLowerCase().endsWith(".1")) {
                        strX = ActivityGjDiy.x(strX);
                    }
                } catch (Exception unused2) {
                }
                bVar.f(strX);
                bVar.b();
                break;
            case 6:
                try {
                    Object[] objArr = {Uri.fromFile(new File(w3Var.f18365b))};
                    ArrayList arrayList8 = new ArrayList(1);
                    Object obj = objArr[0];
                    Objects.requireNonNull(obj);
                    arrayList8.add(obj);
                    List listUnmodifiableList = Collections.unmodifiableList(arrayList8);
                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                    a2.d.g(com.yunpan.appmanage.util.j.f4033a.f4060n, listUnmodifiableList);
                    com.yunpan.appmanage.util.a0.w("安装完成");
                } catch (Exception e7) {
                    g.b.s(e7, new StringBuilder("失败："));
                }
                bVar.b();
                break;
            default:
                try {
                    str = "/data/local/tmp/.temp";
                    fa.b0.f5652a.getClass();
                    a2.w0.h("rm /data/local/tmp/.temp");
                    bVar.f("传输中");
                    try {
                        if (fa.h.f5683a.i()) {
                            a2.w0.a0(w3Var.f18365b, "/data/local/tmp/.temp", bVar);
                        } else if (fa.l.f5712a.isConnected()) {
                            a2.w0.b0(w3Var.f18365b, "/data/local/tmp/.temp", bVar);
                        } else {
                            str = w3Var.f18365b;
                        }
                        bVar.f("查看中");
                    } catch (Exception e10) {
                        com.yunpan.appmanage.util.a0.u("传输失败：" + e10.getMessage());
                        bVar.b();
                        return;
                    }
                } catch (Exception e11) {
                    g.b.s(e11, new StringBuilder(""));
                }
                if (a2.w0.h("ls -ls \"" + str + "\"").f5648a != 0) {
                    com.yunpan.appmanage.util.a0.t("文件传输失败");
                    bVar.b();
                    break;
                } else {
                    bVar.f("创建中");
                    fa.a0 a0VarH = a2.w0.h("pm install-create  -r -d -t -g --user " + p000if.a.T());
                    if (a0VarH.f5648a != 0) {
                        a0VarH = a2.w0.h("pm install-create  -r -d -t --user " + p000if.a.T());
                    }
                    if (a0VarH.f5648a != 0) {
                        a0VarH = a2.w0.h("cmd package install-create  -r -d -t -g --user " + p000if.a.T());
                        if (a0VarH.f5648a != 0) {
                            a0VarH = a2.w0.h("cmd package install-create  -r -d -t --user " + p000if.a.T());
                        }
                        boolean z = a0VarH.f5648a != 0;
                        if (a0VarH.f5648a != 0) {
                            com.yunpan.appmanage.util.a0.u("失败：" + a0VarH.a());
                            bVar.b();
                            break;
                        } else {
                            String strN = p000if.a.N(a0VarH.a(), "[", "]", false);
                            if (strN.isEmpty()) {
                                com.yunpan.appmanage.util.a0.u("抓取sessionId失败：" + a0VarH.a());
                                bVar.b();
                                break;
                            } else {
                                bVar.f("提交中");
                                String str3 = z ? "cmd package" : "pm";
                                fa.a0 a0VarH2 = a2.w0.h(str3 + " install-write -S " + com.yunpan.appmanage.util.a0.p(new File(str)) + " " + strN + " \"" + new File(str).getName() + "\" \"" + str + "\"");
                                if (a0VarH2.f5648a != 0) {
                                    com.yunpan.appmanage.util.a0.u("写入失败：" + a0VarH2.a());
                                    bVar.b();
                                    break;
                                } else {
                                    bVar.f("安装中");
                                    fa.a0 a0VarH3 = a2.w0.h(str3 + " install-commit " + strN);
                                    if (a0VarH3.f5648a != 0) {
                                        com.yunpan.appmanage.util.a0.u("安装失败：" + a0VarH3.a());
                                    } else {
                                        com.yunpan.appmanage.util.a0.w("安装成功");
                                    }
                                }
                            }
                        }
                    }
                    bVar.b();
                    break;
                }
        }
    }
}
