package ua;

import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityDownload;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class q1 extends ha.l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15891b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f15892c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Serializable f15893d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f15894e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f15895f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ q1(Object obj, Object obj2, Serializable serializable, Object obj3, int i10) {
        super(28);
        this.f15891b = i10;
        this.f15895f = obj;
        this.f15892c = obj2;
        this.f15893d = serializable;
        this.f15894e = obj3;
    }

    @Override // ha.l2, ec.e
    public final void B(Throwable th2) {
        switch (this.f15891b) {
            case 0:
                ((ActivityDownload) this.f15895f).P.setVisibility(8);
                com.yunpan.appmanage.util.a0.y(th2.getMessage() + "");
                break;
            case 1:
                q8 q8Var = (q8) this.f15895f;
                q8Var.T.setVisibility(8);
                q8Var.C("读取目录出错：" + th2.getMessage(), R.drawable.tp_noroot, true);
                break;
            case 2:
                q8 q8Var2 = (q8) this.f15895f;
                q8Var2.f15908g.a();
                q8Var2.C("搜索出错：" + th2.getMessage(), R.drawable.tp_noroot, true);
                q8Var2.f15914n.E(new ArrayList());
                q8Var2.l.E(new ArrayList());
                q8Var2.l.q(new x9.w3("搜索结果：" + ((String) this.f15892c), ""));
                break;
            default:
                ((i9) this.f15895f).S.setVisibility(8);
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void E(Object obj) {
        switch (this.f15891b) {
            case 0:
                boolean z = obj instanceof Boolean;
                String str = (String) this.f15892c;
                ActivityDownload activityDownload = (ActivityDownload) this.f15895f;
                if (z) {
                    ArrayList arrayListE = com.yunpan.appmanage.util.c0.f4002a.e();
                    int i10 = 0;
                    while (true) {
                        if (i10 >= arrayListE.size()) {
                            i10 = -1;
                        } else if (!((String) arrayListE.get(i10)).contains(str)) {
                            i10++;
                        }
                    }
                    String str2 = (String) this.f15893d;
                    try {
                        if (i10 == -1) {
                            com.yunpan.appmanage.util.d0 d0Var = com.yunpan.appmanage.util.c0.f4002a;
                            d0Var.getClass();
                            z7.o oVarF = d0Var.f4008b.o("YpUrl").f();
                            oVarF.j(str2);
                            d0Var.f4008b.j("YpUrl", oVarF);
                            d0Var.f();
                            d0Var.g();
                        } else {
                            com.yunpan.appmanage.util.d0 d0Var2 = com.yunpan.appmanage.util.c0.f4002a;
                            d0Var2.getClass();
                            z7.o oVarF2 = d0Var2.f4008b.o("YpUrl").f();
                            oVarF2.n(i10);
                            oVarF2.j(str2);
                            d0Var2.f4008b.j("YpUrl", oVarF2);
                            d0Var2.f();
                            d0Var2.g();
                        }
                    } catch (Exception unused) {
                    }
                    activityDownload.X.E(new ArrayList());
                    ArrayList arrayListE2 = com.yunpan.appmanage.util.c0.f4002a.e();
                    for (int size = arrayListE2.size() - 1; size >= 0; size--) {
                        activityDownload.X.q((String) arrayListE2.get(size));
                    }
                    break;
                } else if (obj instanceof String) {
                    int i11 = ActivityDownload.P0;
                    new ha.o5(activityDownload, activityDownload.A, (String) obj, new ma.b(this, 12, str)).show();
                    break;
                } else if (obj instanceof List) {
                    TvRecyclerView tvRecyclerView = activityDownload.D;
                    ba.r rVar = (ba.r) this.f15894e;
                    tvRecyclerView.setHasMoreData(rVar.f2752o);
                    activityDownload.R.q(rVar);
                    activityDownload.S.r((List) obj);
                    break;
                }
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void b(gc.b bVar) {
        switch (this.f15891b) {
            case 0:
                ((ActivityDownload) this.f15895f).P.setVisibility(0);
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void onComplete() {
        switch (this.f15891b) {
            case 0:
                ((ActivityDownload) this.f15895f).P.setVisibility(8);
                break;
            case 1:
                q8 q8Var = (q8) this.f15895f;
                if (q8Var.l.b() > 0) {
                    String str = ((x9.w3) g.b.d(q8Var.l, 1)).f18365b;
                    x9.w3 w3Var = (x9.w3) this.f15892c;
                    if (str.equals(w3Var.f18365b)) {
                        q8Var.T.setVisibility(8);
                        ArrayList arrayList = (ArrayList) this.f15893d;
                        int size = arrayList.size();
                        ArrayList arrayList2 = (ArrayList) this.f15894e;
                        if (size > 0 || arrayList2.size() > 0) {
                            q8Var.f15914n.E(arrayList);
                            q8Var.f15914n.r(arrayList2);
                        } else {
                            fa.b0.f5652a.getClass();
                            if (a2.w0.P() || com.yunpan.appmanage.util.a0.b(w3Var.f18365b)) {
                                q8Var.C("无文件", R.drawable.tp_nofile, true);
                            } else {
                                q8Var.C("无权限读取此目录", R.drawable.tp_noroot, true);
                            }
                        }
                        q8Var.H.setText("当前" + q8Var.f15914n.b() + "个项目( 文件夹：" + arrayList.size() + "   文件：" + arrayList2.size() + " )");
                        if (!q8Var.C.isEmpty()) {
                            int i10 = 0;
                            while (true) {
                                if (i10 < q8Var.f15914n.b()) {
                                    if (((x9.w3) q8Var.f15914n.t(i10)).f18364a.equals(q8Var.C)) {
                                        q8Var.f15913m.setSelection(i10);
                                    } else {
                                        i10++;
                                    }
                                }
                            }
                            q8Var.C = "";
                            break;
                        }
                    }
                }
                break;
            case 2:
                q8 q8Var2 = (q8) this.f15895f;
                q8Var2.f15908g.a();
                ArrayList arrayList3 = (ArrayList) this.f15893d;
                q8Var2.O = arrayList3;
                q8Var2.f15914n.E(arrayList3);
                if (q8Var2.f15914n.b() == 0) {
                    q8Var2.C("没有搜到合适的文件", R.drawable.tp_noroot, true);
                }
                q8Var2.H.setText("当前" + q8Var2.f15914n.b() + "个项目( 文件夹：" + ((ArrayList) this.f15894e).size() + "   文件：" + arrayList3.size() + " )");
                q8Var2.l.E(new ArrayList());
                q8Var2.l.q(new x9.w3("搜索结果：".concat((String) this.f15892c), ""));
                break;
            default:
                i9 i9Var = (i9) this.f15895f;
                if (i9Var.f15756x.b() > 0) {
                    String str2 = ((x9.w3) g.b.d(i9Var.f15756x, 1)).f18365b;
                    x9.w3 w3Var2 = (x9.w3) this.f15892c;
                    if (str2.equals(w3Var2.f18365b)) {
                        i9Var.S.setVisibility(8);
                        ArrayList arrayList4 = (ArrayList) this.f15893d;
                        int size2 = arrayList4.size();
                        ArrayList arrayList5 = (ArrayList) this.f15894e;
                        if (size2 <= 0 && arrayList5.size() <= 0) {
                            if (!com.yunpan.appmanage.util.a0.b(w3Var2.f18365b)) {
                                i9Var.v("无权限读取此目录", R.drawable.tp_noroot, true);
                                break;
                            } else {
                                i9Var.v("无文件", R.drawable.tp_nofile, true);
                                break;
                            }
                        } else {
                            i9Var.z.E(arrayList4);
                            i9Var.z.r(arrayList5);
                            break;
                        }
                    }
                }
                break;
        }
    }
}
