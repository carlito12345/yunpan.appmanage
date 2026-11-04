package rf;

import java.io.IOException;
import java.io.StringWriter;

/* loaded from: classes.dex */
public final class e extends b {

    /* renamed from: c, reason: collision with root package name */
    public final int f13766c;

    /* renamed from: d, reason: collision with root package name */
    public final int f13767d;

    public e(int i10, int i11) {
        this.f13766c = i10;
        this.f13767d = i11;
    }

    @Override // rf.b
    public final boolean b(int i10, StringWriter stringWriter) throws IOException {
        if (i10 < this.f13766c || i10 > this.f13767d) {
            return false;
        }
        stringWriter.write("&#");
        stringWriter.write(Integer.toString(i10, 10));
        stringWriter.write(59);
        return true;
    }
}
