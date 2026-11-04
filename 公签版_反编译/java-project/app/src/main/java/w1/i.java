package w1;

import java.io.IOException;

/* loaded from: classes.dex */
public class i extends IOException {

    /* renamed from: a, reason: collision with root package name */
    public final int f17365a;

    public i(int i10) {
        this.f17365a = i10;
    }

    public i(Exception exc, int i10) {
        super(exc);
        this.f17365a = i10;
    }

    public i(String str, Exception exc, int i10) {
        super(str, exc);
        this.f17365a = i10;
    }
}
