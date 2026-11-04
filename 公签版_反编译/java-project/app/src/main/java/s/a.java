package s;

import android.graphics.drawable.Animatable;
import s1.g;

/* loaded from: classes.dex */
public final class a extends g {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f13825b;

    /* renamed from: c, reason: collision with root package name */
    public final Animatable f13826c;

    public /* synthetic */ a(Animatable animatable, int i10) {
        this.f13825b = i10;
        this.f13826c = animatable;
    }

    @Override // s1.g
    public final void b0() {
        switch (this.f13825b) {
            case 0:
                this.f13826c.start();
                break;
            default:
                ((i4.f) this.f13826c).start();
                break;
        }
    }

    @Override // s1.g
    public final void c0() {
        switch (this.f13825b) {
            case 0:
                this.f13826c.stop();
                break;
            default:
                ((i4.f) this.f13826c).stop();
                break;
        }
    }
}
