package i1;

import android.text.InputFilter;
import android.widget.TextView;
import androidx.emoji2.text.l;
import ha.l2;

/* loaded from: classes.dex */
public final class h extends l2 {

    /* renamed from: b, reason: collision with root package name */
    public final g f8420b;

    public h(TextView textView) {
        super(8);
        this.f8420b = new g(textView);
    }

    @Override // ha.l2
    public final InputFilter[] H(InputFilter[] inputFilterArr) {
        return !(l.f1111j != null) ? inputFilterArr : this.f8420b.H(inputFilterArr);
    }

    @Override // ha.l2
    public final void V(boolean z) {
        if (l.f1111j != null) {
            this.f8420b.V(z);
        }
    }

    @Override // ha.l2
    public final void W(boolean z) {
        boolean z4 = l.f1111j != null;
        g gVar = this.f8420b;
        if (z4) {
            gVar.W(z);
        } else {
            gVar.f8419d = z;
        }
    }
}
