package vb;

import a2.h0;
import a2.w0;
import android.content.Context;
import android.content.res.Configuration;
import android.util.TypedValue;
import android.widget.ListView;
import android.widget.ProgressBar;
import io.github.rosemoe.sora.widget.CodeEditor;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import l2.z;

/* loaded from: classes.dex */
public final /* synthetic */ class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16728a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ k f16729b;

    public /* synthetic */ g(k kVar, int i10) {
        this.f16728a = i10;
        this.f16729b = kVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Context context;
        switch (this.f16728a) {
            case 0:
                k kVar = this.f16729b;
                ArrayList arrayList = (ArrayList) kVar.f16743v.f4638b;
                boolean z = kVar.G;
                CodeEditor codeEditor = kVar.f16739p;
                if (z) {
                    zb.a colorScheme = codeEditor.getColorScheme();
                    ue.d.e(arrayList, "<this>");
                    if (colorScheme == null) {
                        colorScheme = zb.a.f19542c;
                        ue.d.d(colorScheme, "getDefault(...)");
                    }
                    colorScheme.f19543a.get(67);
                    Iterator it = arrayList.iterator();
                    if (it.hasNext()) {
                        throw z.d(it);
                    }
                }
                WeakReference weakReference = kVar.f16744w;
                a aVar = kVar.f16746y;
                if (weakReference == null || weakReference.get() != arrayList) {
                    aVar.f16721a = kVar;
                    aVar.f16722b = arrayList;
                    aVar.notifyDataSetInvalidated();
                    kVar.f16744w = new WeakReference(arrayList);
                } else {
                    aVar.notifyDataSetChanged();
                }
                if (codeEditor.getProps().L && (context = codeEditor.getContext()) != null) {
                    Configuration configuration = context.getResources().getConfiguration();
                    if ((configuration.keyboard != 1 || configuration.hardKeyboardHidden == 1) && kVar.f16745x == -1) {
                        kVar.g();
                    }
                }
                float count = aVar.getCount() * ((int) TypedValue.applyDimension(1, 45.0f, aVar.f16721a.f16739p.getContext().getResources().getDisplayMetrics()));
                if (count == 0.0f) {
                    kVar.f();
                }
                kVar.k(true);
                int i10 = kVar.f16102m;
                int iMin = (int) Math.min(count, kVar.f16741s);
                kVar.f16102m = i10;
                kVar.f16103n = iMin;
                kVar.a(false);
                codeEditor.Y(new g(kVar, 1), 10L);
                if (kVar.f16091a.isShowing() || kVar.f16740q || !kVar.E) {
                    return;
                }
                kVar.C = System.currentTimeMillis();
                codeEditor.Y(new h0(1, kVar.r, kVar), 70L);
                return;
            case 1:
                w0 w0Var = this.f16729b.z;
                ((ListView) w0Var.f346b).post(new com.yunpan.appmanage.carsdk.a(w0Var, 0, 0, 2));
                return;
            case 2:
                k kVar2 = this.f16729b;
                if (kVar2.F) {
                    ((ProgressBar) kVar2.z.f347c).setVisibility(0);
                    return;
                }
                return;
            default:
                this.f16729b.f();
                return;
        }
    }
}
