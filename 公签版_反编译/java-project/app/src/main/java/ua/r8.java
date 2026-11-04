package ua;

import android.view.View;
import android.widget.PopupMenu;
import com.hjq.toast.Toaster;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.WpPathBean;
import com.yunpan.appmanage.bean.WpTaskBean;
import ha.gb;
import ha.te;
import java.text.DecimalFormat;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final /* synthetic */ class r8 implements c6.e, TvRecyclerView.OnInBorderKeyEventListener, c6.f, TvRecyclerView.OnLoadMoreListener, ha.y6, gb {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15940a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i9 f15941b;

    public /* synthetic */ r8(i9 i9Var, int i10) {
        this.f15940a = i10;
        this.f15941b = i9Var;
    }

    @Override // ha.gb
    public void a(x9.w3 w3Var) {
        i9 i9Var = this.f15941b;
        i9Var.n((x9.w3) g.b.d(i9Var.f15756x, 1), false);
    }

    @Override // c6.f
    public boolean c(int i10, View view) {
        switch (this.f15940a) {
            case 6:
                this.f15941b.w(i10);
                return true;
            case 7:
                i9 i9Var = this.f15941b;
                if (i10 == i9Var.f15746j.b() - 1) {
                    return false;
                }
                i9Var.x(i10, view);
                return false;
            default:
                this.f15941b.y(i10);
                return true;
        }
    }

    @Override // ha.y6
    public void n(String str, boolean z) {
        mc.g gVarA;
        i9 i9Var = this.f15941b;
        i9Var.getClass();
        if (!z || str.isEmpty()) {
            return;
        }
        WpPathBean wpPathBean = new WpPathBean(str, "");
        x9.n5 n5Var = (x9.n5) i9Var.f15746j.t(i9Var.T);
        x9.a6 a6Var = i9Var.f15749n;
        WpPathBean wpPathBean2 = (WpPathBean) a6Var.t(a6Var.b() - 1);
        int i10 = n5Var.f18290a;
        if (i10 == 1) {
            gVarA = new mc.c(0, new ba.d(n5Var, wpPathBean2, wpPathBean, 2)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i10 == 2) {
            gVarA = new mc.c(0, new ba.d(n5Var, wpPathBean2, wpPathBean, 3)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i10 == 3) {
            gVarA = new mc.c(0, new ba.d(wpPathBean, wpPathBean2, n5Var)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i10 == 4) {
            gVarA = new mc.c(0, new ba.d(n5Var, wpPathBean2, wpPathBean, 5)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i10 == 5) {
            gVarA = new mc.c(0, new ba.d(n5Var, wpPathBean2, wpPathBean, 6)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i10 == 6) {
            gVarA = new mc.c(0, new ba.b(wpPathBean2, wpPathBean, n5Var)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i10 == 7) {
            gVarA = new mc.c(0, new ba.d(n5Var, wpPathBean2, wpPathBean, 11)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i10 == 20) {
            gVarA = new mc.c(0, new ba.d(n5Var, wpPathBean2, wpPathBean, 4)).d(rc.f.f13757b).a(fc.b.a());
        } else {
            if (i10 != 21) {
                return;
            }
            gVarA = new mc.c(0, new ba.d(n5Var, wpPathBean2, wpPathBean, 0)).d(rc.f.f13757b).a(fc.b.a());
        }
        gVarA.b(new ha.h3(i9Var, 21, wpPathBean));
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnInBorderKeyEventListener
    public boolean onInBorderKeyEvent(int i10, View view) {
        switch (this.f15940a) {
            case 1:
                i9 i9Var = this.f15941b;
                i9Var.getClass();
                if (i10 == 17) {
                    s1.g.W(333, view);
                    return true;
                }
                if (i10 != 66) {
                    if (i10 == 33) {
                        i9Var.f15748m.requestFocus();
                        return true;
                    }
                    if (i10 != 130) {
                        return false;
                    }
                    s1.g.Z(333, view);
                    return true;
                }
                if (i9Var.F.b() > 0 && i9Var.D.getVisibility() == 0) {
                    i9Var.E.requestFocus();
                    return true;
                }
                if (i9Var.z.b() > 0) {
                    i9Var.f15757y.requestFocus();
                    return true;
                }
                if (i9Var.f15756x.b() != 0) {
                    i9Var.f15755w.requestFocus();
                    return true;
                }
                if (i9Var.r.getVisibility() == 0) {
                    i9Var.r.requestFocus();
                    return true;
                }
                s1.g.W(333, view);
                return true;
            case 9:
                i9 i9Var2 = this.f15941b;
                i9Var2.getClass();
                if (i10 == 66) {
                    s1.g.W(333, view);
                    return true;
                }
                if (i10 == 17) {
                    i9Var2.D.setVisibility(8);
                    if (i9Var2.f15749n.b() > 0) {
                        i9Var2.f15748m.requestFocus();
                        return true;
                    }
                    i9Var2.f15745i.requestFocus();
                    return true;
                }
                if (i10 == 33) {
                    i9Var2.D.setVisibility(8);
                    i9Var2.r.requestFocus();
                    return true;
                }
                if (i10 != 130) {
                    return false;
                }
                s1.g.Z(333, view);
                return true;
            case 10:
                i9 i9Var3 = this.f15941b;
                i9Var3.getClass();
                if (i10 == 66) {
                    i9Var3.A.requestFocus();
                    return true;
                }
                if (i10 == 17) {
                    i9Var3.f15745i.requestFocus();
                    return true;
                }
                if (i10 == 33) {
                    kh.e.b().f("up");
                    return true;
                }
                if (i10 != 130) {
                    return false;
                }
                if (i9Var3.D.getVisibility() == 0) {
                    i9Var3.E.requestFocus();
                    return true;
                }
                if (i9Var3.f15756x.b() <= 0) {
                    return true;
                }
                i9Var3.f15755w.requestFocus();
                return true;
            case 11:
                i9 i9Var4 = this.f15941b;
                if (i10 == 66) {
                    i9Var4.f15753t.requestFocus();
                    return true;
                }
                if (i10 == 17) {
                    if (i9Var4.f15749n.b() > 0) {
                        i9Var4.f15748m.requestFocus();
                        return true;
                    }
                    i9Var4.f15745i.requestFocus();
                    return true;
                }
                if (i10 == 33) {
                    if (i9Var4.r.getVisibility() == 0) {
                        i9Var4.r.requestFocus();
                        return true;
                    }
                    kh.e.b().f("up");
                    return true;
                }
                if (i10 != 130) {
                    i9Var4.getClass();
                    return false;
                }
                if (i9Var4.z.b() <= 0) {
                    return true;
                }
                i9Var4.f15757y.requestFocus();
                return true;
            case 12:
                i9 i9Var5 = this.f15941b;
                i9Var5.getClass();
                if (i10 == 66) {
                    s1.g.W(333, view);
                    return true;
                }
                if (i10 != 17) {
                    if (i10 != 33) {
                        return i10 == 130;
                    }
                    i9Var5.f15755w.requestFocus();
                    return true;
                }
                if (i9Var5.f15751q.b() > 0) {
                    i9Var5.f15750p.requestFocus();
                    return true;
                }
                i9Var5.f15745i.requestFocus();
                return true;
            case 21:
                i9 i9Var6 = this.f15941b;
                i9Var6.getClass();
                if (i10 == 17) {
                    s1.g.W(333, view);
                    return true;
                }
                if (i10 != 66) {
                    if (i10 == 33) {
                        kh.e.b().f("up");
                        return true;
                    }
                    if (i10 != 130) {
                        return false;
                    }
                    if (i9Var6.f15749n.b() == 0) {
                        s1.g.Z(333, view);
                        return true;
                    }
                    i9Var6.f15748m.requestFocus();
                    return true;
                }
                if (i9Var6.F.b() > 0 && i9Var6.D.getVisibility() == 0) {
                    i9Var6.E.requestFocus();
                    return true;
                }
                if (i9Var6.f15756x.b() > 0) {
                    i9Var6.f15755w.requestFocus();
                    return true;
                }
                if (i9Var6.f15752s.b() > 0) {
                    i9Var6.r.requestFocus();
                    return true;
                }
                s1.g.W(333, view);
                return true;
            default:
                i9 i9Var7 = this.f15941b;
                if (i10 == 17) {
                    i9Var7.f15747k.requestFocus();
                    return true;
                }
                if (i10 != 66) {
                    if (i10 == 33) {
                        i9Var7.f15745i.requestFocus();
                        return true;
                    }
                    if (i10 != 130) {
                        i9Var7.getClass();
                    } else if (i9Var7.f15751q.b() == 0) {
                        s1.g.Z(333, view);
                        return true;
                    }
                    return false;
                }
                if (i9Var7.F.b() > 0 && i9Var7.D.getVisibility() == 0) {
                    i9Var7.E.requestFocus();
                    return true;
                }
                if (i9Var7.f15756x.b() > 0) {
                    i9Var7.f15755w.requestFocus();
                    return true;
                }
                if (i9Var7.f15752s.b() > 0) {
                    i9Var7.r.requestFocus();
                    return true;
                }
                s1.g.W(333, view);
                return true;
        }
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnLoadMoreListener
    public void onLoadMore() {
        i9 i9Var = this.f15941b;
        if (i9Var.f15749n.b() == 0) {
            return;
        }
        i9Var.z(true);
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        i9 i9Var = this.f15941b;
        switch (this.f15940a) {
            case 0:
                i9Var.getClass();
                com.bumptech.glide.c.j(view);
                s1.g.Y(view);
                if (((x9.n5) i9Var.f15746j.t(i10)).f18290a == 0) {
                    te teVar = new te(i9Var.f4530f, i9Var.f4529e);
                    r8 r8Var = new r8(i9Var, 16);
                    teVar.show();
                    teVar.f7843i = r8Var;
                    teVar.f7841g.setSelection(0);
                    teVar.f7841g.requestFocus();
                    break;
                } else {
                    i9Var.T = i10;
                    i9Var.A();
                    break;
                }
            case 2:
                i9Var.getClass();
                com.bumptech.glide.c.j(view);
                s1.g.Y(view);
                if (i9Var.D.getVisibility() == 0) {
                    i9Var.D.setVisibility(8);
                }
                i9Var.f15756x.E(new ArrayList());
                x9.w3 w3Var = (x9.w3) i9Var.f15752s.t(i10);
                i9Var.f15756x.q(new x9.w3(w3Var.f18364a, w3Var.f18365b));
                i9Var.n(w3Var, false);
                break;
            case 3:
                i9Var.getClass();
                s1.g.Y(view);
                if (i9Var.f15756x.b() == 0) {
                    Toaster.show((CharSequence) "请打开本地存储(SD卡、U盘)");
                    break;
                } else {
                    String str = (String) i9Var.f15754v.t(i10);
                    if (str.equals("新建")) {
                        PopupMenu popupMenu = new PopupMenu(i9Var.f4529e, view);
                        popupMenu.getMenuInflater().inflate(R.menu.menu_new, popupMenu.getMenu());
                        popupMenu.setOnMenuItemClickListener(new ha.y2(i9Var, 4));
                        popupMenu.show();
                        break;
                    } else if (str.equals("切换")) {
                        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                        int i11 = wVar.J0 + 1;
                        if (i11 > 1) {
                            i11 = 0;
                        }
                        wVar.J0 = i11;
                        try {
                            wVar.f4123i.l("bdFileListMode", Integer.valueOf(i11));
                        } catch (Exception unused) {
                        }
                        wVar.m();
                        if (i11 == 0) {
                            i9Var.f15757y.setLayoutManager(new V7LinearLayoutManager(i9Var.f4529e, 1, false));
                        } else {
                            i9Var.f15757y.setLayoutManager(new V7GridLayoutManager(i9Var.f4529e, 2));
                        }
                        Toaster.show((CharSequence) "切换列表显示模式：".concat(i11 == 0 ? "单列" : "双列"));
                        break;
                    } else if (!str.equals("刷新")) {
                        str.equals("多选");
                        break;
                    }
                }
                break;
            case 4:
                if (i10 != i9Var.f15756x.b() - 1) {
                    com.bumptech.glide.c.j(view);
                    s1.g.Y(view);
                    for (int iB = i9Var.f15756x.b() - 1; iB > i10; iB--) {
                        i9Var.f15756x.C(iB);
                    }
                    i9Var.n((x9.w3) i9Var.f15756x.t(i10), false);
                    break;
                }
                break;
            case 5:
                i9Var.getClass();
                com.bumptech.glide.c.j(view);
                x9.w3 w3Var2 = (x9.w3) i9Var.z.t(i10);
                if (w3Var2.f18366c) {
                    i9Var.f15756x.q(new x9.w3(w3Var2.f18364a, w3Var2.f18365b));
                    g.b.x(i9Var.f15756x, 1, i9Var.f15755w);
                    i9Var.f15755w.requestFocus();
                    i9Var.n(w3Var2, false);
                    break;
                } else {
                    s1.g.Y(view);
                    i9Var.w(i10);
                    break;
                }
            case 8:
                WpTaskBean wpTaskBean = (WpTaskBean) i9Var.F.t(i10);
                if (wpTaskBean.str_state.equals("停止")) {
                    wpTaskBean.isTask_stop = true;
                    wpTaskBean.str_state = "停止中";
                    i9Var.F.e(i10);
                    break;
                } else if (wpTaskBean.str_state.startsWith("重新")) {
                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                    com.yunpan.appmanage.util.j.f4033a.f4048g0.submit(new y7.b(wpTaskBean, 20, i9Var.Z));
                    break;
                }
                break;
            case 14:
                i9Var.getClass();
                s1.g.Y(view);
                if (i9Var.f15749n.b() == 0) {
                    Toaster.show((CharSequence) (i9Var.f15746j.b() == 1 ? "请先添加网盘" : "请先选中网盘"));
                    break;
                } else {
                    String str2 = (String) i9Var.l.t(i10);
                    if (str2.equals("新建")) {
                        if (i9Var.f15749n.b() != 1 || ((x9.n5) i9Var.f15746j.t(i9Var.T)).f18290a != 3 || !((WpPathBean) i9Var.f15749n.t(0)).path.isEmpty()) {
                            new ha.z6(i9Var.f4530f, i9Var.f4529e, "新建文件夹", "", "输入文件夹名称", "确定", "取消", new r8(i9Var, 15)).show();
                            break;
                        } else {
                            Toaster.show((CharSequence) "当前位置无法新建目录");
                            break;
                        }
                    } else if (str2.equals("切换")) {
                        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                        int i12 = wVar2.I0 + 1;
                        if (i12 > 1) {
                            i12 = 0;
                        }
                        wVar2.I0 = i12;
                        try {
                            wVar2.f4123i.l("wpFileListMode", Integer.valueOf(i12));
                        } catch (Exception unused2) {
                        }
                        wVar2.m();
                        if (i12 == 0) {
                            i9Var.f15750p.setLayoutManager(new V7LinearLayoutManager(i9Var.f4529e, 1, false));
                        } else {
                            i9Var.f15750p.setLayoutManager(new V7GridLayoutManager(i9Var.f4529e, 2));
                        }
                        Toaster.show((CharSequence) "切换列表显示模式：".concat(i12 == 0 ? "单列" : "双列"));
                        break;
                    } else if (str2.equals("刷新")) {
                        i9Var.z(false);
                        break;
                    }
                }
                break;
            case 17:
                if (i10 != i9Var.f15749n.b() - 1) {
                    com.bumptech.glide.c.j(view);
                    s1.g.Y(view);
                    for (int iB2 = i9Var.f15749n.b() - 1; iB2 > i10; iB2--) {
                        i9Var.f15749n.C(iB2);
                    }
                    i9Var.z(false);
                    break;
                }
                break;
            default:
                i9Var.getClass();
                com.bumptech.glide.c.j(view);
                WpPathBean wpPathBean = (WpPathBean) i9Var.f15751q.t(i10);
                if (wpPathBean.is_dir) {
                    i9Var.f15749n.q(wpPathBean);
                    i9Var.f15748m.setSelectionWithSmooth(i9Var.f15749n.b() - 1);
                    i9Var.f15748m.requestFocus();
                    i9Var.f15748m.setSelection(i9Var.f15749n.b() - 1);
                    i9Var.z(false);
                    break;
                } else {
                    s1.g.Y(view);
                    i9Var.y(i10);
                    break;
                }
        }
    }
}
