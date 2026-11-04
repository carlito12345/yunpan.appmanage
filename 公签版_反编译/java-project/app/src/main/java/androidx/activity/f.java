package androidx.activity;

import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.j0;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.yunpan.appmanage.util.f0;
import java.io.File;
import ua.l8;
import ua.q8;
import x9.m5;

/* loaded from: classes.dex */
public final class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f792a;

    /* renamed from: b, reason: collision with root package name */
    public final int f793b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f794c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f795d;

    public /* synthetic */ f(Object obj, int i10, Object obj2, int i11) {
        this.f792a = i11;
        this.f794c = obj;
        this.f793b = i10;
        this.f795d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() throws InterruptedException {
        androidx.activity.result.b bVar;
        switch (this.f792a) {
            case 0:
                Object obj = ((kh.h) this.f795d).f10353a;
                g gVar = (g) this.f794c;
                String str = (String) gVar.f843a.get(Integer.valueOf(this.f793b));
                if (str != null) {
                    androidx.activity.result.e eVar = (androidx.activity.result.e) gVar.f847e.get(str);
                    if (eVar != null && (bVar = eVar.f839a) != null) {
                        if (gVar.f846d.remove(str)) {
                            bVar.a(obj);
                            break;
                        }
                    } else {
                        gVar.f849g.remove(str);
                        gVar.f848f.put(str, obj);
                        break;
                    }
                }
                break;
            case 1:
                ((g) this.f794c).a(this.f793b, 0, new Intent().setAction("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION", (IntentSender.SendIntentException) this.f795d));
                break;
            case 2:
                String[] strArr = (String[]) this.f795d;
                int[] iArr = new int[strArr.length];
                j0 j0Var = (j0) this.f794c;
                PackageManager packageManager = j0Var.getPackageManager();
                String packageName = j0Var.getPackageName();
                int length = strArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    iArr[i10] = packageManager.checkPermission(strArr[i10], packageName);
                }
                j0Var.onRequestPermissionsResult(this.f793b, strArr, iArr);
                break;
            case 3:
                q8 q8Var = (q8) this.f794c;
                q8Var.F.incrementAndGet();
                m5 m5Var = (m5) this.f795d;
                f0.f4019a.f11674b = null;
                l9.b bVar2 = new l9.b(g.b.l(m5Var.f18281d, ":9898/upload", new StringBuilder("http://")));
                bVar2.h("path", m5Var.f18282e, new boolean[0]);
                StringBuilder sb2 = new StringBuilder("files-");
                String str2 = m5Var.f18278a;
                sb2.append(new File(str2).length());
                bVar2.j(new File(str2), sb2.toString());
                bVar2.b(new l8(q8Var, m5Var, this.f793b));
                while (q8Var.F.get() != 0) {
                    try {
                        Thread.sleep(200L);
                    } catch (Exception unused) {
                    }
                }
                break;
            case 4:
                ((TextView) this.f795d).setTypeface((Typeface) this.f794c, this.f793b);
                break;
            default:
                ((BottomSheetBehavior) this.f794c).E((View) this.f795d, this.f793b, false);
                break;
        }
    }

    public /* synthetic */ f(Object obj, Object obj2, int i10, int i11) {
        this.f792a = i11;
        this.f795d = obj;
        this.f794c = obj2;
        this.f793b = i10;
    }

    public f(BottomSheetBehavior bottomSheetBehavior, View view, int i10) {
        this.f792a = 5;
        this.f794c = bottomSheetBehavior;
        this.f795d = view;
        this.f793b = i10;
    }
}
