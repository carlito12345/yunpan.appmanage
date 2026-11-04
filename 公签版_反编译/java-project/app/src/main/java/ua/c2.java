package ua;

import android.os.Build;
import android.os.Environment;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.yunpan.appmanage.ui.ActivityHome;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class c2 implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15601a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f15602b;

    public /* synthetic */ c2(int i10, Object obj) {
        this.f15601a = i10;
        this.f15602b = obj;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        switch (this.f15601a) {
            case 0:
                ActivityHome activityHome = (ActivityHome) this.f15602b;
                activityHome.D.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                if (Build.VERSION.SDK_INT < 24) {
                    activityHome.getClass();
                    if (!Environment.getExternalStorageState().equals("mounted")) {
                        new ha.z6(activityHome, activityHome, "检测到您的设备没有内置SD卡(内部存储)，而且系统低于安卓7，所以必须插入SD卡或U盘方可使用，因为低于7.0的系统没有SD卡来存储数据的话，无法调用系统安装器来安装应用，虽然可以存储在/data/data/，但这是应用私有目录，低于安卓7的系统安装器是无权限读取的，，除非您有系统写入权限（右上角）", "", "明白了", "", new i1(4, activityHome)).show();
                        break;
                    }
                }
                activityHome.F();
                break;
            case 1:
                v.e eVar = (v.e) this.f15602b;
                if (eVar.b()) {
                    ArrayList arrayList = eVar.f16205h;
                    if (arrayList.size() > 0 && !((v.d) arrayList.get(0)).f16196a.A) {
                        View view = eVar.f16211p;
                        if (view != null && view.isShown()) {
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                ((v.d) it.next()).f16196a.show();
                            }
                            break;
                        } else {
                            eVar.dismiss();
                            break;
                        }
                    }
                }
                break;
            case 2:
                v.c0 c0Var = (v.c0) this.f15602b;
                if (c0Var.b()) {
                    w.m2 m2Var = c0Var.f16185h;
                    if (!m2Var.A) {
                        View view2 = c0Var.f16189m;
                        if (view2 != null && view2.isShown()) {
                            m2Var.show();
                            break;
                        } else {
                            c0Var.dismiss();
                            break;
                        }
                    }
                }
                break;
            case 3:
                w.q0 q0Var = (w.q0) this.f15602b;
                if (!q0Var.getInternalPopup().b()) {
                    q0Var.f17211f.l(w.i0.b(q0Var), w.i0.a(q0Var));
                }
                ViewTreeObserver viewTreeObserver = q0Var.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    w.h0.a(viewTreeObserver, this);
                    break;
                }
                break;
            case 4:
                w.n0 n0Var = (w.n0) this.f15602b;
                w.q0 q0Var2 = n0Var.K;
                n0Var.getClass();
                if (!x0.b1.l(q0Var2) || !q0Var2.getGlobalVisibleRect(n0Var.H)) {
                    n0Var.dismiss();
                    break;
                } else {
                    n0Var.r();
                    n0Var.show();
                    break;
                }
                break;
            default:
                ya.l lVar = (ya.l) this.f15602b;
                lVar.f19099b.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                try {
                    int[] iArr = new int[2];
                    lVar.f19099b.getLocationOnScreen(iArr);
                    int i10 = iArr[0];
                    if (i10 != 0) {
                        WindowManager.LayoutParams layoutParams = lVar.f19102e;
                        if (layoutParams.x < 0) {
                            layoutParams.x = i10;
                        } else {
                            layoutParams.x = -i10;
                        }
                    }
                    int i11 = iArr[1];
                    if (i11 != 0) {
                        WindowManager.LayoutParams layoutParams2 = lVar.f19102e;
                        layoutParams2.y = i11;
                        if (i11 < 0) {
                            layoutParams2.y = i11;
                        } else {
                            layoutParams2.y = -i11;
                        }
                    }
                    lVar.f19098a.updateViewLayout(lVar.f19099b, lVar.f19102e);
                    ya.l.a(lVar);
                    break;
                } catch (Exception e7) {
                    e7.printStackTrace();
                    lVar.c();
                }
        }
    }
}
