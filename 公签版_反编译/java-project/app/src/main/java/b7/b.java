package b7;

import android.graphics.Typeface;
import com.google.android.material.chip.Chip;
import g7.i;
import g7.j;

/* loaded from: classes.dex */
public final class b extends com.bumptech.glide.d {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f2581e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f2582f;

    public /* synthetic */ b(int i10, Object obj) {
        this.f2581e = i10;
        this.f2582f = obj;
    }

    @Override // com.bumptech.glide.d
    public final void O(int i10) {
        switch (this.f2581e) {
            case 0:
                break;
            default:
                j jVar = (j) this.f2582f;
                jVar.f6115e = true;
                i iVar = (i) jVar.f6116f.get();
                if (iVar != null) {
                    iVar.a();
                    break;
                }
                break;
        }
    }

    @Override // com.bumptech.glide.d
    public final void P(Typeface typeface, boolean z) {
        switch (this.f2581e) {
            case 0:
                Chip chip = (Chip) this.f2582f;
                f fVar = chip.f3516e;
                chip.setText(fVar.f2607t1 ? fVar.G : chip.getText());
                chip.requestLayout();
                chip.invalidate();
                break;
            default:
                if (!z) {
                    j jVar = (j) this.f2582f;
                    jVar.f6115e = true;
                    i iVar = (i) jVar.f6116f.get();
                    if (iVar != null) {
                        iVar.a();
                        break;
                    }
                }
                break;
        }
    }

    private final void j0(int i10) {
    }
}
