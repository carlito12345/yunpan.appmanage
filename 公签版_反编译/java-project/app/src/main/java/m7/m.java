package m7;

import android.graphics.Canvas;
import android.graphics.Matrix;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class m extends s {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ArrayList f10964c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Matrix f10965d;

    public m(ArrayList arrayList, Matrix matrix) {
        this.f10964c = arrayList;
        this.f10965d = matrix;
    }

    @Override // m7.s
    public final void a(Matrix matrix, l7.a aVar, int i10, Canvas canvas) {
        Iterator it = this.f10964c.iterator();
        while (it.hasNext()) {
            ((s) it.next()).a(this.f10965d, aVar, i10, canvas);
        }
    }
}
