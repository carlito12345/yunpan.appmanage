package w;

import android.content.ClipData;
import android.content.Context;
import android.media.metrics.LogSessionId;
import android.os.Build;
import android.os.Bundle;
import android.view.ContentInfo;
import android.view.GestureDetector;
import android.view.MenuItem;
import android.view.MotionEvent;
import androidx.appcompat.widget.ActionMenuView;
import androidx.profileinstaller.ProfileInstallReceiver;
import java.io.Serializable;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class i implements v.w, v.i, z0, x0.h, x0.l, x6.a, y3.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17091a;

    /* renamed from: b, reason: collision with root package name */
    public Object f17092b;

    public /* synthetic */ i(int i10, Object obj) {
        this.f17091a = i10;
        this.f17092b = obj;
    }

    @Override // v.w
    public void a(v.k kVar, boolean z) {
        if (kVar instanceof v.d0) {
            ((v.d0) kVar).B.k().c(false);
        }
        v.w wVar = ((j) this.f17092b).f17112e;
        if (wVar != null) {
            wVar.a(kVar, z);
        }
    }

    @Override // x0.h
    public ClipData b() {
        return ((ContentInfo) this.f17092b).getClip();
    }

    @Override // y3.b
    public void c(int i10, Serializable serializable) {
        if (i10 == 6 || i10 == 7 || i10 == 8) {
        }
        ((ProfileInstallReceiver) this.f17092b).setResultCode(i10);
    }

    @Override // v.w
    public boolean d(v.k kVar) {
        j jVar = (j) this.f17092b;
        if (kVar == jVar.f17110c) {
            return false;
        }
        ((v.d0) kVar).C.getClass();
        jVar.getClass();
        v.w wVar = jVar.f17112e;
        if (wVar != null) {
            return wVar.d(kVar);
        }
        return false;
    }

    @Override // v.i
    public boolean e(v.k kVar, MenuItem menuItem) {
        m mVar = ((ActionMenuView) this.f17092b).B;
        if (mVar != null) {
            Iterator it = ((CopyOnWriteArrayList) ((g3) mVar).f17089a.I.f14294c).iterator();
            while (it.hasNext()) {
                if (((androidx.fragment.app.v0) it.next()).f1413a.o(menuItem)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // v.i
    public void f(v.k kVar) {
        g3 g3Var = ((ActionMenuView) this.f17092b).f955w;
        if (g3Var != null) {
            g3Var.f(kVar);
        }
    }

    @Override // x0.h
    public int getSource() {
        return ((ContentInfo) this.f17092b).getSource();
    }

    @Override // x0.h
    public int h() {
        return ((ContentInfo) this.f17092b).getFlags();
    }

    @Override // x0.h
    public ContentInfo i() {
        return (ContentInfo) this.f17092b;
    }

    public y0.n k(int i10) {
        return null;
    }

    public y0.n l(int i10) {
        return null;
    }

    public boolean m(int i10, int i11, Bundle bundle) {
        return false;
    }

    @Override // x0.l
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return ((GestureDetector) this.f17092b).onTouchEvent(motionEvent);
    }

    public String toString() {
        switch (this.f17091a) {
            case 3:
                return "ContentInfoCompat{" + ((ContentInfo) this.f17092b) + "}";
            default:
                return super.toString();
        }
    }

    public i(int i10) {
        this.f17091a = i10;
        switch (i10) {
            case 10:
                this.f17092b = LogSessionId.LOG_SESSION_ID_NONE;
                break;
            default:
                int i11 = Build.VERSION.SDK_INT;
                if (i11 < 26) {
                    if (i11 < 19) {
                        this.f17092b = new y0.o(this);
                        break;
                    } else {
                        this.f17092b = new y0.p(this);
                        break;
                    }
                } else {
                    this.f17092b = new y0.q(this);
                    break;
                }
        }
    }

    public i(ContentInfo contentInfo) {
        this.f17091a = 3;
        contentInfo.getClass();
        this.f17092b = a2.b.k(contentInfo);
    }

    public i(Context context, androidx.recyclerview.widget.q0 q0Var, int i10) {
        this.f17091a = i10;
        switch (i10) {
            case 5:
                if (Build.VERSION.SDK_INT > 17) {
                    this.f17092b = new i(context, q0Var, 4);
                    break;
                } else {
                    this.f17092b = new x0.m(context, q0Var);
                    break;
                }
            default:
                this.f17092b = new GestureDetector(context, q0Var, null);
                break;
        }
    }

    public void g(int i10) {
    }

    public void j(int i10) {
    }
}
