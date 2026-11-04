package ha;

import android.provider.Settings;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.yunpan.appmanage.bean.NameContentSelectBean;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.FileInfo;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityKeyMapLogcat;
import com.yunpan.appmanage.ui.ActivityNezha;
import com.yunpan.appmanage.ui.ActivityOuShangWhitelist;
import com.yunpan.appmanage.ui.ActivitySystemHasWrite;
import java.io.File;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final /* synthetic */ class a3 implements ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6721a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f6722b;

    public /* synthetic */ a3(int i10, ArrayList arrayList) {
        this.f6721a = i10;
        this.f6722b = arrayList;
    }

    @Override // ec.d
    public final void g(mc.b bVar) {
        String strConcat;
        String strA;
        String strConcat2;
        String strA2;
        String strConcat3;
        String strA3;
        String strConcat4;
        String strA4;
        int i10;
        String strConcat5;
        String strA5;
        ArrayList arrayList = this.f6722b;
        switch (this.f6721a) {
            case 0:
                StringBuilder sbB = d0.f.b(g.b.j(g.b.g(fa.g0.f5682a, new StringBuilder("SELECT * FROM fileList WHERE (path LIKE '"), "/%')"), " and isDir=0"), " and path NOT LIKE '%/");
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                String strL = g.b.l(kVar.P, "/%'", sbB);
                ArrayList arrayList2 = kVar.f4067q0;
                if (!com.yunpan.appmanage.util.v.f4106a.B0.contains("pcm")) {
                    arrayList2.add("pcm");
                }
                if (arrayList2 == null || arrayList2.isEmpty()) {
                    strConcat = "";
                } else {
                    Iterator it = arrayList2.iterator();
                    strConcat = "";
                    while (it.hasNext()) {
                        String str = (String) it.next();
                        if (!str.isEmpty()) {
                            if (strConcat.isEmpty()) {
                                strA = g.b.A(" and (LOWER(name) LIKE '%.", str, "'");
                            } else {
                                strA = strConcat + " OR LOWER(name) LIKE '%." + str + "'";
                            }
                            strConcat = strA;
                        }
                    }
                    if (!strConcat.isEmpty()) {
                        strConcat = strConcat.concat(")");
                    }
                }
                if (!strConcat.isEmpty()) {
                    strL = g.b.j(strL, strConcat);
                }
                List<FileInfo> listSqlQuery = MyDb.get().getFileInfoDao().sqlQuery(new a2.g1(g.b.j(strL, " ORDER BY lastModified DESC"), new Object[0]));
                if (listSqlQuery != null && !listSqlQuery.isEmpty()) {
                    Iterator<FileInfo> it2 = listSqlQuery.iterator();
                    while (it2.hasNext()) {
                        arrayList.add(new x9.w3(it2.next()));
                    }
                }
                bVar.b();
                break;
            case 1:
                StringBuilder sbB2 = d0.f.b(g.b.j(g.b.g(fa.g0.f5682a, new StringBuilder("SELECT * FROM fileList WHERE (path LIKE '"), "/%')"), " and isDir=0"), " and path NOT LIKE '%/");
                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                String strL2 = g.b.l(kVar2.P, "/%'", sbB2);
                ArrayList arrayList3 = kVar2.f4067q0;
                if (!com.yunpan.appmanage.util.v.f4106a.B0.contains("pcm")) {
                    arrayList3.add("pcm");
                }
                if (arrayList3 == null || arrayList3.isEmpty()) {
                    strConcat2 = "";
                } else {
                    Iterator it3 = arrayList3.iterator();
                    strConcat2 = "";
                    while (it3.hasNext()) {
                        String str2 = (String) it3.next();
                        if (!str2.isEmpty()) {
                            if (strConcat2.isEmpty()) {
                                strA2 = g.b.A(" and (LOWER(name) LIKE '%.", str2, "'");
                            } else {
                                strA2 = strConcat2 + " OR LOWER(name) LIKE '%." + str2 + "'";
                            }
                            strConcat2 = strA2;
                        }
                    }
                    if (!strConcat2.isEmpty()) {
                        strConcat2 = strConcat2.concat(")");
                    }
                }
                if (!strConcat2.isEmpty()) {
                    strL2 = g.b.j(strL2, strConcat2);
                }
                List<FileInfo> listSqlQuery2 = MyDb.get().getFileInfoDao().sqlQuery(new a2.g1(g.b.j(strL2, " ORDER BY lastModified DESC"), new Object[0]));
                if (listSqlQuery2 != null && !listSqlQuery2.isEmpty()) {
                    Iterator<FileInfo> it4 = listSqlQuery2.iterator();
                    while (it4.hasNext()) {
                        arrayList.add(new x9.w3(it4.next()));
                    }
                }
                bVar.b();
                break;
            case 2:
                String strJ = g.b.j(g.b.j(g.b.g(fa.g0.f5682a, new StringBuilder("SELECT * FROM fileList WHERE (path LIKE '"), "/%')"), " and isDir=0"), " and path NOT LIKE '%/.%'");
                DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                ArrayList arrayList4 = com.yunpan.appmanage.util.j.f4033a.f4057l0;
                if (arrayList4 == null || arrayList4.isEmpty()) {
                    strConcat3 = "";
                } else {
                    Iterator it5 = arrayList4.iterator();
                    strConcat3 = "";
                    while (it5.hasNext()) {
                        String str3 = (String) it5.next();
                        if (!str3.isEmpty()) {
                            if (strConcat3.isEmpty()) {
                                strA3 = g.b.A(" and (LOWER(name) LIKE '%.", str3, "'");
                            } else {
                                strA3 = strConcat3 + " OR LOWER(name) LIKE '%." + str3 + "'";
                            }
                            strConcat3 = strA3;
                        }
                    }
                    if (!strConcat3.isEmpty()) {
                        strConcat3 = strConcat3.concat(")");
                    }
                }
                if (!strConcat3.isEmpty()) {
                    strJ = g.b.j(strJ, strConcat3);
                }
                List<FileInfo> listSqlQuery3 = MyDb.get().getFileInfoDao().sqlQuery(new a2.g1(g.b.j(strJ, " ORDER BY lastModified DESC"), new Object[0]));
                if (listSqlQuery3 != null && !listSqlQuery3.isEmpty()) {
                    Iterator<FileInfo> it6 = listSqlQuery3.iterator();
                    while (it6.hasNext()) {
                        arrayList.add(new x9.w3(it6.next()));
                    }
                }
                bVar.b();
                break;
            case 3:
                ArrayList arrayList5 = new ArrayList();
                Iterator it7 = arrayList.iterator();
                int i11 = 0;
                while (it7.hasNext()) {
                    x9.w3 w3Var = (x9.w3) it7.next();
                    StringBuilder sbN = g.b.n("删除进度：", i11, "/");
                    sbN.append(arrayList.size());
                    sbN.append(SignParameters.NEW_LINE);
                    sbN.append(w3Var.f18364a);
                    bVar.f(sbN.toString());
                    i11++;
                    a2.w0 w0Var = fa.b0.f5652a;
                    String str4 = w3Var.f18365b;
                    w0Var.getClass();
                    String strB = a2.w0.B(str4);
                    if (strB.equals("删除成功")) {
                        DecimalFormat decimalFormat4 = com.yunpan.appmanage.util.k.f4034u0;
                        com.yunpan.appmanage.util.k kVar3 = com.yunpan.appmanage.util.j.f4033a;
                        String str5 = w3Var.f18365b;
                        kVar3.getClass();
                        if (com.yunpan.appmanage.util.k.i(str5)) {
                            MyDb.get().getFileInfoDao().deleteDir(w3Var.f18365b);
                        }
                    } else {
                        w3Var.f18373j = strB;
                        arrayList5.add(w3Var);
                        DecimalFormat decimalFormat5 = com.yunpan.appmanage.util.k.f4034u0;
                        com.yunpan.appmanage.util.k kVar4 = com.yunpan.appmanage.util.j.f4033a;
                        String str6 = w3Var.f18365b;
                        kVar4.getClass();
                        if (com.yunpan.appmanage.util.k.i(str6) && w3Var.f18366c) {
                            kVar4.f4046f0.submit(new com.yunpan.appmanage.util.z(new File(w3Var.f18365b)));
                        }
                    }
                }
                if (!arrayList5.isEmpty()) {
                    bVar.d(new qa.b("删除失败", arrayList5));
                }
                bVar.b();
                break;
            case 4:
                int i12 = ActivityKeyMapLogcat.L;
                List<FileInfo> listSqlQuery4 = MyDb.get().getFileInfoDao().sqlQuery(new a2.g1(g.b.j(g.b.j(g.b.j(g.b.j(g.b.g(fa.g0.f5682a, new StringBuilder("SELECT * FROM fileList WHERE (path LIKE '"), "/%')"), " and isDir=0"), " and path NOT LIKE '%/.%'"), " and (LOWER(name) LIKE '%.json')"), " ORDER BY lastModified DESC"), new Object[0]));
                if (listSqlQuery4 != null && !listSqlQuery4.isEmpty()) {
                    Iterator<FileInfo> it8 = listSqlQuery4.iterator();
                    while (it8.hasNext()) {
                        arrayList.add(new x9.w3(it8.next()));
                    }
                }
                bVar.b();
                break;
            case 5:
                int i13 = ActivityNezha.F;
                String strJ2 = g.b.j(g.b.j(g.b.g(fa.g0.f5682a, new StringBuilder("SELECT * FROM fileList WHERE (path LIKE '"), "/%')"), " and isDir=0"), " and path NOT LIKE '%/.%'");
                DecimalFormat decimalFormat6 = com.yunpan.appmanage.util.k.f4034u0;
                ArrayList arrayList6 = com.yunpan.appmanage.util.j.f4033a.f4057l0;
                if (arrayList6 == null || arrayList6.isEmpty()) {
                    strConcat4 = "";
                } else {
                    Iterator it9 = arrayList6.iterator();
                    strConcat4 = "";
                    while (it9.hasNext()) {
                        String str7 = (String) it9.next();
                        if (!str7.isEmpty()) {
                            if (strConcat4.isEmpty()) {
                                strA4 = g.b.A(" and (LOWER(name) LIKE '%.", str7, "'");
                            } else {
                                strA4 = strConcat4 + " OR LOWER(name) LIKE '%." + str7 + "'";
                            }
                            strConcat4 = strA4;
                        }
                    }
                    if (!strConcat4.isEmpty()) {
                        strConcat4 = strConcat4.concat(")");
                    }
                }
                if (!strConcat4.isEmpty()) {
                    strJ2 = g.b.j(strJ2, strConcat4);
                }
                List<FileInfo> listSqlQuery5 = MyDb.get().getFileInfoDao().sqlQuery(new a2.g1(g.b.j(strJ2, " ORDER BY lastModified DESC"), new Object[0]));
                if (listSqlQuery5 != null && !listSqlQuery5.isEmpty()) {
                    Iterator<FileInfo> it10 = listSqlQuery5.iterator();
                    while (it10.hasNext()) {
                        arrayList.add(new x9.w3(it10.next()));
                    }
                }
                bVar.b();
                break;
            case 6:
                int i14 = ActivityOuShangWhitelist.G;
                try {
                    DecimalFormat decimalFormat7 = com.yunpan.appmanage.util.k.f4034u0;
                    String string = Settings.Global.getString(com.yunpan.appmanage.util.j.f4033a.f4035a.getContentResolver(), "OUSHANG_WHILTE_APP_LIST");
                    if (string.contains(".")) {
                        String[] strArrSplit = string.split(",");
                        int length = strArrSplit.length;
                        int i15 = 0;
                        while (i15 < length) {
                            String str8 = strArrSplit[i15];
                            if (str8.trim().isEmpty()) {
                                i10 = 1;
                            } else {
                                AppBean appBean = MyDb.get().getAppDao().get_appBean(str8);
                                if (appBean == null) {
                                    com.yunpan.appmanage.util.k kVar5 = com.yunpan.appmanage.util.j.f4033a;
                                    if (str8.equals(kVar5.f4041d)) {
                                        arrayList.add(new NameContentSelectBean(kVar5.f4039c, str8, true));
                                    } else {
                                        arrayList.add(new NameContentSelectBean("未安装", str8, false));
                                    }
                                    i10 = 1;
                                } else {
                                    i10 = 1;
                                    arrayList.add(new NameContentSelectBean(appBean.name, str8, true));
                                }
                            }
                            i15 += i10;
                        }
                    }
                    bVar.b();
                    break;
                } catch (Exception e7) {
                    bVar.d(e7);
                    return;
                }
            default:
                int i16 = ActivitySystemHasWrite.F;
                String strJ3 = g.b.j(g.b.j(g.b.g(fa.g0.f5682a, new StringBuilder("SELECT * FROM fileList WHERE (path LIKE '"), "/%')"), " and isDir=0"), " and path NOT LIKE '%/.%'");
                DecimalFormat decimalFormat8 = com.yunpan.appmanage.util.k.f4034u0;
                ArrayList arrayList7 = com.yunpan.appmanage.util.j.f4033a.f4057l0;
                if (arrayList7 == null || arrayList7.isEmpty()) {
                    strConcat5 = "";
                } else {
                    Iterator it11 = arrayList7.iterator();
                    strConcat5 = "";
                    while (it11.hasNext()) {
                        String str9 = (String) it11.next();
                        if (!str9.isEmpty()) {
                            if (strConcat5.isEmpty()) {
                                strA5 = g.b.A(" and (LOWER(name) LIKE '%.", str9, "'");
                            } else {
                                strA5 = strConcat5 + " OR LOWER(name) LIKE '%." + str9 + "'";
                            }
                            strConcat5 = strA5;
                        }
                    }
                    if (!strConcat5.isEmpty()) {
                        strConcat5 = strConcat5.concat(")");
                    }
                }
                if (!strConcat5.isEmpty()) {
                    strJ3 = g.b.j(strJ3, strConcat5);
                }
                List<FileInfo> listSqlQuery6 = MyDb.get().getFileInfoDao().sqlQuery(new a2.g1(g.b.j(strJ3, " ORDER BY lastModified DESC"), new Object[0]));
                if (listSqlQuery6 != null && !listSqlQuery6.isEmpty()) {
                    Iterator<FileInfo> it12 = listSqlQuery6.iterator();
                    while (it12.hasNext()) {
                        arrayList.add(new x9.w3(it12.next()));
                    }
                }
                bVar.b();
                break;
        }
    }
}
