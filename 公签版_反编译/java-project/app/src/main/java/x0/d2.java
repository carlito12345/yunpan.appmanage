package x0;

import android.view.DisplayCutout;
import android.view.WindowInsets;
import j$.util.Objects;

/* loaded from: classes.dex */
public class d2 extends c2 {
    public d2(j2 j2Var, WindowInsets windowInsets) {
        super(j2Var, windowInsets);
    }

    @Override // x0.g2
    public j2 a() {
        return j2.h(null, this.f17965c.consumeDisplayCutout());
    }

    @Override // x0.g2
    public k e() {
        DisplayCutout displayCutout = this.f17965c.getDisplayCutout();
        if (displayCutout == null) {
            return null;
        }
        return new k(displayCutout);
    }

    @Override // x0.b2, x0.g2
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d2)) {
            return false;
        }
        d2 d2Var = (d2) obj;
        return Objects.equals(this.f17965c, d2Var.f17965c) && Objects.equals(this.f17969g, d2Var.f17969g);
    }

    @Override // x0.g2
    public int hashCode() {
        return this.f17965c.hashCode();
    }
}
