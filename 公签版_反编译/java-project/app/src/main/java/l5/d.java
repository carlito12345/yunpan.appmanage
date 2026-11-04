package l5;

import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class d implements com.bumptech.glide.load.data.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10573a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f10574b;

    public /* synthetic */ d(int i10, Object obj) {
        this.f10573a = i10;
        this.f10574b = obj;
    }

    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        switch (this.f10573a) {
            case 0:
                return ByteBuffer.class;
            default:
                return this.f10574b.getClass();
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final void b() {
        int i10 = this.f10573a;
    }

    @Override // com.bumptech.glide.load.data.e
    public final f5.a c() {
        switch (this.f10573a) {
        }
        return f5.a.LOCAL;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
        int i10 = this.f10573a;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void d(com.bumptech.glide.i iVar, com.bumptech.glide.load.data.d dVar) {
        switch (this.f10573a) {
            case 0:
                try {
                    dVar.B(a6.c.a((File) this.f10574b));
                    break;
                } catch (IOException e7) {
                    dVar.i(e7);
                    return;
                }
            default:
                dVar.B(this.f10574b);
                break;
        }
    }

    private final void e() {
    }

    private final void f() {
    }

    private final void g() {
    }

    private final void h() {
    }
}
