package ua;

import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.animation.CycleInterpolator;
import com.hjq.toast.Toaster;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityClean;
import ha.gb;
import ha.jc;
import ha.rb;
import java.io.File;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final /* synthetic */ class d8 implements c6.e, TvRecyclerView.OnInBorderKeyEventListener, c6.f, gb {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15640a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ q8 f15641b;

    public /* synthetic */ d8(q8 q8Var, int i10) {
        this.f15640a = i10;
        this.f15641b = q8Var;
    }

    @Override // ha.gb
    public void a(x9.w3 w3Var) {
        q8 q8Var = this.f15641b;
        q8Var.v((x9.w3) g.b.d(q8Var.l, 1), false);
    }

    public void b() {
        q8 q8Var = this.f15641b;
        if (((x9.w3) q8Var.l.t(0)).f18365b.isEmpty()) {
            return;
        }
        q8Var.v((x9.w3) g.b.d(q8Var.l, 1), false);
    }

    @Override // c6.f
    public boolean c(int i10, View view) {
        q8 q8Var = this.f15641b;
        q8Var.getClass();
        com.bumptech.glide.c.i(1000, view);
        q8Var.D(i10);
        return true;
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnInBorderKeyEventListener
    public boolean onInBorderKeyEvent(int i10, View view) {
        switch (this.f15640a) {
            case 2:
                q8 q8Var = this.f15641b;
                q8Var.getClass();
                if (i10 == 17 || i10 == 66) {
                    s1.g.W(333, view);
                    return true;
                }
                if (i10 == 33) {
                    q8Var.f15909h.setSelectedPosition(1);
                    kh.e.b().f("up");
                    return true;
                }
                if (i10 != 130) {
                    return false;
                }
                if (q8Var.f15915p) {
                    q8Var.f15913m.requestFocus();
                    return true;
                }
                q8Var.f15912k.requestFocus();
                return true;
            case 3:
            default:
                q8 q8Var2 = this.f15641b;
                q8Var2.getClass();
                if (i10 == 66) {
                    s1.g.W(333, view);
                    return true;
                }
                if (i10 == 33) {
                    if (q8Var2.f15915p) {
                        q8Var2.f15909h.requestFocus();
                        return true;
                    }
                    q8Var2.f15912k.requestFocus();
                    return true;
                }
                if (i10 == 17) {
                    s1.g.W(288, view);
                    return true;
                }
                if (i10 != 130) {
                    return false;
                }
                s1.g.Z(289, view);
                return true;
            case 4:
                q8 q8Var3 = this.f15641b;
                if (i10 == 17) {
                    q8Var3.f15920w.requestFocus();
                    return true;
                }
                if (i10 == 33) {
                    q8Var3.f15909h.requestFocus();
                    return true;
                }
                if (i10 == 130) {
                    if (q8Var3.f15914n.b() > 0) {
                        q8Var3.f15913m.requestFocus();
                        return true;
                    }
                    s1.g.Z(333, view);
                    return true;
                }
                if (i10 != 66) {
                    q8Var3.getClass();
                    return false;
                }
                if (q8Var3.I.getVisibility() == 0) {
                    q8Var3.I.requestFocus();
                    return true;
                }
                s1.g.W(288, view);
                return true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        int i11 = 9;
        q8 q8Var = this.f15641b;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        switch (this.f15640a) {
            case 0:
                x9.w3 w3Var = (x9.w3) q8Var.f15911j.t(i10);
                if (w3Var.f18364a.contains("退出")) {
                    q8Var.y();
                    break;
                } else if (w3Var.f18364a.contains("全选")) {
                    for (int i12 = 0; i12 < q8Var.f15914n.b(); i12++) {
                        x9.w3 w3Var2 = (x9.w3) q8Var.f15914n.t(i12);
                        if (!w3Var2.f18372i) {
                            w3Var2.f18372i = true;
                            q8Var.f15914n.D(i12, w3Var2);
                        }
                    }
                    break;
                } else if (w3Var.f18364a.contains("不选")) {
                    for (int i13 = 0; i13 < q8Var.f15914n.b(); i13++) {
                        x9.w3 w3Var3 = (x9.w3) q8Var.f15914n.t(i13);
                        if (w3Var3.f18372i) {
                            w3Var3.f18372i = false;
                            q8Var.f15914n.D(i13, w3Var3);
                        }
                    }
                    break;
                } else if (w3Var.f18364a.contains("目录")) {
                    for (int i14 = 0; i14 < q8Var.f15914n.b(); i14++) {
                        x9.w3 w3Var4 = (x9.w3) q8Var.f15914n.t(i14);
                        if (w3Var4.f18366c) {
                            if (!w3Var4.f18372i) {
                                w3Var4.f18372i = true;
                                q8Var.f15914n.D(i14, w3Var4);
                            }
                        } else if (w3Var4.f18372i) {
                            w3Var4.f18372i = false;
                            q8Var.f15914n.D(i14, w3Var4);
                        }
                    }
                    break;
                } else if (w3Var.f18364a.contains("文件")) {
                    for (int i15 = 0; i15 < q8Var.f15914n.b(); i15++) {
                        x9.w3 w3Var5 = (x9.w3) q8Var.f15914n.t(i15);
                        if (w3Var5.f18366c) {
                            if (w3Var5.f18372i) {
                                w3Var5.f18372i = false;
                                q8Var.f15914n.D(i15, w3Var5);
                            }
                        } else if (!w3Var5.f18372i) {
                            w3Var5.f18372i = true;
                            q8Var.f15914n.D(i15, w3Var5);
                        }
                    }
                    break;
                } else if (w3Var.f18364a.contains("应用")) {
                    for (int i16 = 0; i16 < q8Var.f15914n.b(); i16++) {
                        x9.w3 w3Var6 = (x9.w3) q8Var.f15914n.t(i16);
                        if (p000if.a.X(w3Var6.f18364a)) {
                            if (!w3Var6.f18372i) {
                                w3Var6.f18372i = true;
                                q8Var.f15914n.D(i16, w3Var6);
                            }
                        } else if (w3Var6.f18372i) {
                            w3Var6.f18372i = false;
                            q8Var.f15914n.D(i16, w3Var6);
                        }
                    }
                    break;
                } else {
                    ArrayList arrayList = q8Var.L;
                    arrayList.clear();
                    boolean zContains = w3Var.f18364a.contains("安装");
                    for (int i17 = 0; i17 < q8Var.f15914n.b(); i17++) {
                        x9.w3 w3Var7 = (x9.w3) q8Var.f15914n.t(i17);
                        if (w3Var7.f18372i && (!zContains || p000if.a.X(w3Var7.f18364a))) {
                            arrayList.add(w3Var7);
                        }
                    }
                    if (arrayList.isEmpty()) {
                        Toaster.show((CharSequence) "请选中你要操作的文件或目录");
                        break;
                    } else if (w3Var.f18364a.contains("复制")) {
                        q8Var.y();
                        q8Var.K.setText("已复制：" + arrayList.size() + "个项目");
                        q8Var.I.setVisibility(0);
                        q8Var.K.setVisibility(0);
                        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(q8Var.I, View.TRANSLATION_X.getName(), 0.0f, 20.0f);
                        objectAnimatorOfFloat.setDuration(500);
                        objectAnimatorOfFloat.setInterpolator(new CycleInterpolator(4));
                        objectAnimatorOfFloat.start();
                        break;
                    } else if (w3Var.f18364a.contains("剪切")) {
                        q8Var.y();
                        q8Var.K.setText("已剪切：" + arrayList.size() + "个项目");
                        q8Var.I.setVisibility(0);
                        q8Var.K.setVisibility(0);
                        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(q8Var.I, View.TRANSLATION_X.getName(), 0.0f, 20.0f);
                        objectAnimatorOfFloat2.setDuration(500);
                        objectAnimatorOfFloat2.setInterpolator(new CycleInterpolator(4));
                        objectAnimatorOfFloat2.start();
                        break;
                    } else if (w3Var.f18364a.contains("传送")) {
                        q8Var.y();
                        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                        if (wVar.f4119g.size() == 1) {
                            q8Var.z(((com.yunpan.appmanage.util.d) wVar.f4119g.get(0)).f4004b);
                            break;
                        } else {
                            new ha.r7(q8Var.f4530f, q8Var.f4529e, new d8(q8Var, i11)).show();
                            break;
                        }
                    } else if (w3Var.f18364a.contains("删除")) {
                        q8Var.y();
                        q8Var.f15908g.c("删除中");
                        new mc.c(0, new ha.a3(3, arrayList)).d(rc.f.f13757b).a(fc.b.a()).b(new m8(q8Var, objArr == true ? 1 : 0));
                        break;
                    } else if (w3Var.f18364a.contains("压缩")) {
                        if (com.yunpan.appmanage.util.a0.d(((x9.w3) g.b.d(q8Var.l, 1)).f18365b)) {
                            q8Var.y();
                            q8Var.o(true);
                            break;
                        } else {
                            com.yunpan.appmanage.util.a0.u("当前目录无权写入，不能使用压缩功能");
                            break;
                        }
                    } else {
                        q8Var.y();
                        new ha.y5(q8Var.f4530f, q8Var.f4529e, w3Var.f18364a, arrayList, new tb.v(21)).show();
                        break;
                    }
                }
                break;
            case 1:
                q8Var.getClass();
                com.bumptech.glide.c.j(view);
                s1.g.Y(view);
                x9.w3 w3Var8 = (x9.w3) q8Var.f15910i.t(i10);
                if (w3Var8.f18364a.contains("拔出U盘")) {
                    new ha.z6(q8Var.f4530f, q8Var.f4529e, "建议先关闭" + q8Var.f4529e.getString(R.string.app_name) + "后再拔出U盘", "", "关闭管家", "取消", new s9.a(16, false)).show();
                    break;
                } else if (w3Var8.f18364a.equals("扫描")) {
                    new ha.o1(q8Var.f4530f, q8Var.f4529e, new c8(q8Var, i10)).show();
                    break;
                } else if (w3Var8.f18364a.equals("清理")) {
                    try {
                        ((da.g) q8Var.f4530f).w(ActivityClean.class);
                        break;
                    } catch (Exception unused) {
                        return;
                    }
                } else if (w3Var8.f18364a.equals("设置")) {
                    new ha.e6(q8Var.f4530f, q8Var.f4529e, new d8(q8Var, 11)).show();
                    break;
                } else if (w3Var8.f18364a.contains("搜索")) {
                    if (fa.g0.f5682a.d().isEmpty()) {
                        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                        if (com.yunpan.appmanage.util.j.f4033a.f4073v.isEmpty()) {
                            Toaster.show((CharSequence) "没有内部存储(SD卡)，也没有U盘，让我搜啥？");
                            break;
                        }
                    }
                    new rb(q8Var.f4530f, q8Var.f4529e, new d8(q8Var, 12)).show();
                    break;
                } else if (w3Var8.f18364a.contains("互传")) {
                    DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                    com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                    kVar.Z = "";
                    kVar.f4036a0 = "";
                    fa.h0 h0Var = fa.g0.f5682a;
                    if (!h0Var.d().isEmpty()) {
                        kVar.Z = "内部存储";
                        kVar.f4036a0 = h0Var.d();
                    } else if (!kVar.f4073v.isEmpty()) {
                        Iterator it = kVar.f4073v.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                File file = new File((String) it.next());
                                if (com.yunpan.appmanage.util.a0.f(file) && com.yunpan.appmanage.util.a0.c(file)) {
                                    com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                                    kVar2.Z = file.getName();
                                    kVar2.f4036a0 = file.getPath();
                                }
                            }
                        }
                    }
                    if (com.yunpan.appmanage.util.j.f4033a.f4036a0.isEmpty()) {
                        Toaster.show((CharSequence) "此设备既没有SD卡，也没有插入U盘，不能使用文件互传");
                        break;
                    } else {
                        new jc(q8Var.f4530f, q8Var.f4529e).show();
                        break;
                    }
                } else if (w3Var8.f18364a.equals("空目录")) {
                    new ha.z6(q8Var.f4530f, q8Var.f4529e, "是否要清理内部存储中的所有空文件夹？", "", "确定", "取消", new h8(q8Var)).show();
                    break;
                } else if (w3Var8.f18364a.equals("收藏栏")) {
                    q8Var.p(false);
                    break;
                } else if (w3Var8.f18364a.equals("Download")) {
                    try {
                        if (!new File(w3Var8.f18365b).exists()) {
                            new File(w3Var8.f18365b).mkdir();
                            MyDb.get().addFile_thread(w3Var8.f18365b);
                        }
                    } catch (Exception unused2) {
                    }
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new x9.w3("内部存储", fa.g0.f5682a.d(), true));
                    arrayList2.add(w3Var8);
                    q8Var.l.E(arrayList2);
                    q8Var.F(w3Var8);
                    q8Var.v(w3Var8, false);
                    break;
                } else if (w3Var8.f18364a.equals("内部存储")) {
                    q8Var.F(w3Var8);
                    ArrayList arrayList3 = new ArrayList();
                    arrayList3.add(w3Var8);
                    q8Var.l.E(arrayList3);
                    q8Var.v(w3Var8, false);
                    break;
                } else if (w3Var8.f18364a.equals("地图分区")) {
                    q8Var.F(w3Var8);
                    ArrayList arrayList4 = new ArrayList();
                    arrayList4.add(w3Var8);
                    q8Var.l.E(arrayList4);
                    q8Var.v(w3Var8, false);
                    break;
                } else if (w3Var8.f18364a.equals("根")) {
                    if (q8Var.V) {
                        Activity activity = q8Var.f4530f;
                        Context context = q8Var.f4529e;
                        DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                        new ha.z6(activity, context, "这里是系统重要目录，您确定要进入吗？\n如果您想保存文件，请在内部存储中保存，那才是SD卡根目录\n", com.yunpan.appmanage.util.j.f4033a.f4058m ? "如果对这方面一窍不通，请不要进入，毕竟您的权限高\n不懂请勿改动里面的文件，后果自负" : "", "我是高手", "取消访问", new kf.d(29, q8Var, w3Var8, objArr2 == true ? 1 : 0)).show();
                        break;
                    } else {
                        q8Var.F(w3Var8);
                        ArrayList arrayList5 = new ArrayList();
                        arrayList5.add(w3Var8);
                        q8Var.l.E(arrayList5);
                        q8Var.v(w3Var8, false);
                        break;
                    }
                } else if (w3Var8.f18364a.startsWith("U盘")) {
                    if (w3Var8.f18376n == null && !com.yunpan.appmanage.util.a0.d(w3Var8.f18365b)) {
                        DecimalFormat decimalFormat4 = com.yunpan.appmanage.util.k.f4034u0;
                        if (com.yunpan.appmanage.util.j.f4033a.f4058m) {
                            a2.w0 w0Var = fa.b0.f5652a;
                            w0Var.g("umount " + w3Var8.f18365b, null);
                            w0Var.g("mount -o rw,nosuid,nodev,noexec,noatime,fsuid=1023,fsgid=1023,gid=9997,mask=7 -t sdcardfs /mnt/media_rw/" + w3Var8.f18365b.substring(9) + " " + w3Var8.f18365b, null);
                        }
                    }
                    q8Var.F(w3Var8);
                    ArrayList arrayList6 = new ArrayList();
                    arrayList6.add(w3Var8);
                    q8Var.l.E(arrayList6);
                    q8Var.v(w3Var8, false);
                    break;
                }
                break;
            case 2:
            default:
                x9.w3 w3Var9 = (x9.w3) q8Var.f15914n.t(i10);
                if (q8Var.f15915p) {
                    w3Var9.f18372i = !w3Var9.f18372i;
                    q8Var.f15914n.D(i10, w3Var9);
                    break;
                } else if (w3Var9.f18366c) {
                    if (w3Var9.f18365b.equals("/") || w3Var9.f18365b.equals("/system") || w3Var9.f18365b.equals("/data") || w3Var9.f18365b.equals("/vendor") || w3Var9.f18365b.equals("/amapauto")) {
                        q8Var.F(w3Var9);
                    }
                    q8Var.l.q(w3Var9);
                    q8Var.f15912k.requestFocus();
                    g.b.x(q8Var.l, 1, q8Var.f15912k);
                    q8Var.v(w3Var9, false);
                    break;
                } else {
                    q8Var.D(i10);
                    break;
                }
                break;
            case 3:
                q8Var.getClass();
                com.bumptech.glide.c.j(view);
                s1.g.Y(view);
                if (((x9.w3) q8Var.l.t(i10)).f18365b.isEmpty()) {
                    if (((x9.w3) q8Var.l.t(i10)).f18364a.startsWith("收藏栏")) {
                        q8Var.p(false);
                        break;
                    } else if (!((x9.w3) q8Var.l.t(i10)).f18364a.startsWith("搜索结果")) {
                        Toaster.show((CharSequence) "此目录是临时目录，无法点击刷新");
                        break;
                    }
                }
                if (i10 != q8Var.l.b() - 1 || i10 == 0) {
                    int iB = q8Var.l.b();
                    int i18 = iB - (i10 + 1);
                    for (int i19 = 1; i18 >= i19; i19++) {
                        q8Var.l.C(iB - i19);
                    }
                    if (((x9.w3) q8Var.l.t(i10)).f18364a.startsWith("搜索结果")) {
                        q8Var.f15914n.E(q8Var.O);
                        break;
                    } else {
                        if (((x9.w3) q8Var.l.t(i10)).f18365b.equals("/") || ((x9.w3) q8Var.l.t(i10)).f18365b.equals("/system") || ((x9.w3) q8Var.l.t(i10)).f18365b.equals("/data") || ((x9.w3) q8Var.l.t(i10)).f18365b.equals("/vendor") || ((x9.w3) q8Var.l.t(i10)).f18365b.equals("/amapauto")) {
                            q8Var.F((x9.w3) q8Var.l.t(i10));
                        }
                        q8Var.v((x9.w3) q8Var.l.t(i10), false);
                        break;
                    }
                }
                break;
        }
    }
}
