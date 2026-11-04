package ua;

import com.yunpan.appmanage.ui.ActivityDownload;
import java.util.ArrayList;
import org.simpleframework.xml.strategy.Name;

/* loaded from: classes.dex */
public final /* synthetic */ class o1 implements ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15859a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ba.r f15860b;

    public /* synthetic */ o1(ba.r rVar, int i10) {
        this.f15859a = i10;
        this.f15860b = rVar;
    }

    @Override // ec.d
    public final void g(mc.b bVar) throws Exception {
        Object objX = null;
        ba.r rVar = this.f15860b;
        switch (this.f15859a) {
            case 0:
                int i10 = ActivityDownload.P0;
                rVar.f2751n++;
                int i11 = rVar.f2739a;
                if (i11 == 1) {
                    objX = qf.c.v(rVar);
                } else if (i11 == 2) {
                    String strI = "获取列表出错";
                    try {
                        String strD = com.bumptech.glide.c.D(rVar.f2749k, rVar.f2741c, rVar.l.replace("pg=1", "pg=" + rVar.f2751n), rVar.f2747i, true);
                        if (!strD.contains("\"zt\"")) {
                            throw new Exception("获取列表出错");
                        }
                        ArrayList arrayList = new ArrayList();
                        z7.s sVarG = d.b.b0(strD).g();
                        int iE = sVarG.o("zt").e();
                        if (iE == 1) {
                            z7.o oVarF = sVarG.o("text").f();
                            int size = oVarF.f19478a.size();
                            for (int i12 = 0; i12 < size; i12++) {
                                ba.i iVar = new ba.i(0);
                                iVar.f2698a = android.support.v4.media.session.a.v(oVarF, i12, "name_all");
                                iVar.f2700c = android.support.v4.media.session.a.v(oVarF, i12, "time");
                                iVar.f2699b = android.support.v4.media.session.a.v(oVarF, i12, "size");
                                iVar.f2701d = rVar.f2740b + "/" + oVarF.l(i12).g().o(Name.MARK).i();
                                arrayList.add(new x9.b6(iVar));
                            }
                            arrayList.size();
                            if (size >= 50) {
                                rVar.f2752o = true;
                            } else {
                                rVar.f2752o = false;
                            }
                        } else {
                            if (iE != 2) {
                                if (iE == 3) {
                                    throw new Exception("提取码错误");
                                }
                                if (iE == 4) {
                                    throw new Exception("刷太快，请重试！或者打开链接太久了，页面失效了，请重新打开连接！");
                                }
                                try {
                                    strI = sVarG.o("info").i();
                                } catch (Exception unused) {
                                }
                                throw new Exception(strI);
                            }
                            rVar.f2752o = false;
                        }
                        objX = arrayList;
                    } catch (Exception unused2) {
                        throw new Exception("获取列表出错");
                    }
                } else if (i11 == 3) {
                    objX = com.bumptech.glide.d.W(rVar);
                } else if (i11 == 4) {
                    objX = s1.g.y(rVar);
                } else if (i11 == 5) {
                    objX = p000if.a.I(rVar);
                } else if (i11 == 7) {
                    objX = d.b.B(rVar);
                } else if (i11 == 9) {
                    objX = s1.g.x(rVar);
                }
                bVar.f(objX);
                bVar.b();
                return;
            default:
                int i13 = ActivityDownload.P0;
                rVar.f2751n = 1;
                try {
                    int i14 = rVar.f2739a;
                    if (i14 == 1) {
                        objX = qf.c.v(rVar);
                    } else if (i14 == 2) {
                        objX = com.bumptech.glide.c.R(rVar);
                    } else if (i14 == 3) {
                        objX = com.bumptech.glide.d.Q(rVar);
                    } else if (i14 == 4) {
                        objX = s1.g.y(rVar);
                    } else if (i14 == 5) {
                        objX = p000if.a.I(rVar);
                    } else if (i14 == 7) {
                        objX = d.b.B(rVar);
                    } else if (i14 == 8) {
                        objX = q4.a.m(rVar, "");
                    } else if (i14 == 9) {
                        objX = s1.g.x(rVar);
                    }
                    if (objX == null) {
                        android.support.v4.media.session.a.B("读取目录失败", bVar);
                        return;
                    }
                    bVar.f(rVar);
                    bVar.f(objX);
                    bVar.b();
                    return;
                } catch (Exception e7) {
                    bVar.d(e7);
                    return;
                }
        }
    }
}
