package ua;

import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.FileInfo;
import com.yunpan.appmanage.db.MyDb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final /* synthetic */ class y7 implements ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16061a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f16062b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ x9.w3 f16063c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ArrayList f16064d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ArrayList f16065e;

    public /* synthetic */ y7(boolean z, x9.w3 w3Var, ArrayList arrayList, ArrayList arrayList2, int i10) {
        this.f16061a = i10;
        this.f16062b = z;
        this.f16063c = w3Var;
        this.f16064d = arrayList;
        this.f16065e = arrayList2;
    }

    @Override // ec.d
    public final void g(mc.b bVar) throws Exception {
        AppBean appBean;
        List<FileInfo> listSqlQuery = null;
        x9.w3 w3Var = this.f16063c;
        boolean z = this.f16062b;
        ArrayList arrayList = this.f16065e;
        ArrayList arrayList2 = this.f16064d;
        switch (this.f16061a) {
            case 0:
                if (!z) {
                    StringBuilder sb2 = new StringBuilder("SELECT * FROM fileList WHERE parent=?");
                    com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                    sb2.append(wVar.f4129l0 ? "" : " and name NOT LIKE '.%'");
                    sb2.append(" ORDER BY ");
                    sb2.append(wVar.f4133n0 ? "name COLLATE NOCASE" : "lastModified DESC");
                    try {
                        listSqlQuery = MyDb.get().getFileInfoDao().sqlQuery(new a2.g1(sb2.toString(), new Object[]{w3Var.f18365b}));
                    } catch (Exception unused) {
                    }
                    if (listSqlQuery != null && !listSqlQuery.isEmpty()) {
                        for (FileInfo fileInfo : listSqlQuery) {
                            if (fileInfo.isDir) {
                                x9.w3 w3Var2 = new x9.w3(fileInfo);
                                AppBean appBeanIsAppDir = MyDb.get().getAppDao().get_appBean(w3Var2.f18364a);
                                if (appBeanIsAppDir == null) {
                                    appBeanIsAppDir = MyDb.get().getAppDao().isAppDir(w3Var2.f18365b);
                                }
                                if (appBeanIsAppDir != null) {
                                    w3Var2.f18375m = appBeanIsAppDir.name;
                                    w3Var2.l = appBeanIsAppDir.pack;
                                }
                                arrayList2.add(w3Var2);
                            } else {
                                arrayList.add(new x9.w3(fileInfo));
                            }
                        }
                        bVar.b();
                        break;
                    }
                }
                com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                com.yunpan.appmanage.util.u.b(w3Var, arrayList2, arrayList, wVar2.f4129l0, wVar2.f4133n0);
                com.yunpan.appmanage.util.u.a(w3Var.f18365b, arrayList2, arrayList);
                if (wVar2.f4131m0) {
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        x9.w3 w3Var3 = (x9.w3) it.next();
                        AppBean appBeanIsAppDir2 = MyDb.get().getAppDao().get_appBean(w3Var3.f18364a);
                        if (appBeanIsAppDir2 == null) {
                            appBeanIsAppDir2 = MyDb.get().getAppDao().isAppDir(w3Var3.f18365b);
                        }
                        if (appBeanIsAppDir2 != null) {
                            w3Var3.f18375m = appBeanIsAppDir2.name;
                            w3Var3.l = appBeanIsAppDir2.pack;
                        }
                    }
                }
                bVar.b();
                break;
            default:
                if (z) {
                    com.yunpan.appmanage.util.w wVar3 = com.yunpan.appmanage.util.v.f4106a;
                    com.yunpan.appmanage.util.u.b(w3Var, arrayList2, arrayList, wVar3.f4129l0, wVar3.f4133n0);
                    bVar.b();
                    break;
                } else {
                    StringBuilder sb3 = new StringBuilder("SELECT * FROM fileList WHERE parent=?");
                    com.yunpan.appmanage.util.w wVar4 = com.yunpan.appmanage.util.v.f4106a;
                    sb3.append(wVar4.f4129l0 ? "" : " and name NOT LIKE '.%'");
                    sb3.append(" ORDER BY ");
                    sb3.append(wVar4.f4133n0 ? "name COLLATE NOCASE" : "lastModified DESC");
                    try {
                        listSqlQuery = MyDb.get().getFileInfoDao().sqlQuery(new a2.g1(sb3.toString(), new Object[]{w3Var.f18365b}));
                    } catch (Exception unused2) {
                    }
                    if (listSqlQuery != null && !listSqlQuery.isEmpty()) {
                        for (FileInfo fileInfo2 : listSqlQuery) {
                            if (fileInfo2.isDir) {
                                x9.w3 w3Var4 = new x9.w3(fileInfo2);
                                if (com.yunpan.appmanage.util.v.f4106a.f4131m0 && (appBean = MyDb.get().getAppDao().get_appBean(fileInfo2.name)) != null) {
                                    w3Var4.f18375m = appBean.name;
                                    w3Var4.l = appBean.pack;
                                }
                                arrayList2.add(w3Var4);
                            } else {
                                arrayList.add(new x9.w3(fileInfo2));
                            }
                        }
                    }
                    bVar.b();
                    break;
                }
                break;
        }
    }
}
