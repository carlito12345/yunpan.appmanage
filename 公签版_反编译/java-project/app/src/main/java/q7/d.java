package q7;

import com.google.android.material.internal.CheckableImageButton;

/* loaded from: classes.dex */
public final class d extends q {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f13067e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ d(p pVar, int i10) {
        super(pVar);
        this.f13067e = i10;
    }

    @Override // q7.q
    public void r() {
        switch (this.f13067e) {
            case 0:
                p pVar = this.f13112b;
                pVar.f13104p = null;
                CheckableImageButton checkableImageButton = pVar.f13097g;
                checkableImageButton.setOnLongClickListener(null);
                nh.b.l0(checkableImageButton, null);
                break;
        }
    }
}
