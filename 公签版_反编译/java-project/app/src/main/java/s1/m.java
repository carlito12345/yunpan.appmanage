package s1;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public abstract class m implements l {

    /* renamed from: b, reason: collision with root package name */
    public i f13912b;

    /* renamed from: c, reason: collision with root package name */
    public i f13913c;

    /* renamed from: d, reason: collision with root package name */
    public i f13914d;

    /* renamed from: e, reason: collision with root package name */
    public i f13915e;

    /* renamed from: f, reason: collision with root package name */
    public ByteBuffer f13916f;

    /* renamed from: g, reason: collision with root package name */
    public ByteBuffer f13917g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f13918h;

    public m() {
        ByteBuffer byteBuffer = l.f13911a;
        this.f13916f = byteBuffer;
        this.f13917g = byteBuffer;
        i iVar = i.f13904e;
        this.f13914d = iVar;
        this.f13915e = iVar;
        this.f13912b = iVar;
        this.f13913c = iVar;
    }

    @Override // s1.l
    public ByteBuffer a() {
        ByteBuffer byteBuffer = this.f13917g;
        this.f13917g = l.f13911a;
        return byteBuffer;
    }

    @Override // s1.l
    public boolean b() {
        return this.f13918h && this.f13917g == l.f13911a;
    }

    @Override // s1.l
    public final i c(i iVar) {
        this.f13914d = iVar;
        this.f13915e = i(iVar);
        return g() ? this.f13915e : i.f13904e;
    }

    @Override // s1.l
    public final void d(j jVar) {
        this.f13917g = l.f13911a;
        this.f13918h = false;
        this.f13912b = this.f13914d;
        this.f13913c = this.f13915e;
        j();
    }

    @Override // s1.l
    public final void f() {
        this.f13918h = true;
        k();
    }

    @Override // s1.l
    public boolean g() {
        return this.f13915e != i.f13904e;
    }

    @Override // s1.l
    public long h(long j10) {
        return j10;
    }

    public abstract i i(i iVar);

    public final ByteBuffer m(int i10) {
        if (this.f13916f.capacity() < i10) {
            this.f13916f = ByteBuffer.allocateDirect(i10).order(ByteOrder.nativeOrder());
        } else {
            this.f13916f.clear();
        }
        ByteBuffer byteBuffer = this.f13916f;
        this.f13917g = byteBuffer;
        return byteBuffer;
    }

    @Override // s1.l
    public final void reset() {
        ByteBuffer byteBuffer = l.f13911a;
        this.f13917g = byteBuffer;
        this.f13918h = false;
        this.f13916f = byteBuffer;
        i iVar = i.f13904e;
        this.f13914d = iVar;
        this.f13915e = iVar;
        this.f13912b = iVar;
        this.f13913c = iVar;
        l();
    }

    public void j() {
    }

    public void k() {
    }

    public void l() {
    }
}
