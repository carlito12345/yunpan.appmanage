package jg;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
public final class y extends yg.b {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ z f9983b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y(z zVar, OutputStream outputStream) {
        super(outputStream);
        this.f9983b = zVar;
    }

    @Override // yg.b, java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        super.write(bArr);
        this.f9983b.f9987d.update(bArr);
    }

    @Override // yg.b, java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i10, int i11) throws IOException {
        super.write(bArr, i10, i11);
        this.f9983b.f9987d.update(bArr, i10, i11);
    }

    @Override // yg.b, java.io.FilterOutputStream, java.io.OutputStream
    public final void write(int i10) throws IOException {
        super.write(i10);
        this.f9983b.f9987d.update(i10);
    }
}
