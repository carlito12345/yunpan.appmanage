package f1;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.material.chip.Chip;
import java.util.WeakHashMap;
import w.i;
import x0.b1;
import x0.j0;
import y0.n;

/* loaded from: classes.dex */
public final class a extends i {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ b f5156c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(b bVar) {
        super(8);
        this.f5156c = bVar;
    }

    @Override // w.i
    public final n k(int i10) {
        return new n(AccessibilityNodeInfo.obtain(this.f5156c.n(i10).f18549a));
    }

    @Override // w.i
    public final n l(int i10) {
        b bVar = this.f5156c;
        int i11 = i10 == 2 ? bVar.f5167k : bVar.l;
        if (i11 == Integer.MIN_VALUE) {
            return null;
        }
        return k(i11);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x004d  */
    @Override // w.i
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean m(int i10, int i11, Bundle bundle) {
        int i12;
        b bVar = this.f5156c;
        Chip chip = bVar.f5165i;
        if (i10 == -1) {
            WeakHashMap weakHashMap = b1.f17953a;
            return j0.j(chip, i11, bundle);
        }
        boolean z = true;
        if (i11 == 1) {
            return bVar.p(i10);
        }
        if (i11 == 2) {
            return bVar.j(i10);
        }
        boolean z4 = false;
        if (i11 == 64) {
            AccessibilityManager accessibilityManager = bVar.f5164h;
            if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled() && (i12 = bVar.f5167k) != i10) {
                if (i12 != Integer.MIN_VALUE) {
                    bVar.f5167k = Integer.MIN_VALUE;
                    bVar.f5165i.invalidate();
                    bVar.q(i12, 65536);
                }
                bVar.f5167k = i10;
                chip.invalidate();
                bVar.q(i10, 32768);
            }
        } else {
            if (i11 != 128) {
                b7.d dVar = (b7.d) bVar;
                if (i11 != 16) {
                    return false;
                }
                Chip chip2 = dVar.f2584q;
                if (i10 == 0) {
                    return chip2.performClick();
                }
                if (i10 != 1) {
                    return false;
                }
                chip2.playSoundEffect(0);
                View.OnClickListener onClickListener = chip2.f3519h;
                if (onClickListener != null) {
                    onClickListener.onClick(chip2);
                    z4 = true;
                }
                if (!chip2.f3528t) {
                    return z4;
                }
                chip2.f3527s.q(1, 1);
                return z4;
            }
            if (bVar.f5167k == i10) {
                bVar.f5167k = Integer.MIN_VALUE;
                chip.invalidate();
                bVar.q(i10, 65536);
            } else {
                z = false;
            }
        }
        return z;
    }
}
