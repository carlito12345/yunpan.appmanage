package u0;

import android.content.Context;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class c implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15162a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f15163b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f15164c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ kf.b f15165d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f15166e;

    public /* synthetic */ c(String str, Context context, kf.b bVar, int i10, int i11) {
        this.f15162a = i11;
        this.f15163b = str;
        this.f15164c = context;
        this.f15165d = bVar;
        this.f15166e = i10;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.f15162a) {
            case 0:
                return f.a(this.f15163b, this.f15164c, this.f15165d, this.f15166e);
            default:
                try {
                    return f.a(this.f15163b, this.f15164c, this.f15165d, this.f15166e);
                } catch (Throwable unused) {
                    return new e(-3);
                }
        }
    }
}
