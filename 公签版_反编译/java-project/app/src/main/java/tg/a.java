package tg;

import java.io.File;
import java.io.InputStream;
import java.nio.file.OpenOption;
import java.nio.file.Path;

/* loaded from: classes.dex */
public final class a extends b {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f15096c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ a(int i10, Object obj) {
        super(obj);
        this.f15096c = i10;
    }

    @Override // tg.b
    public InputStream N0(OpenOption... openOptionArr) {
        switch (this.f15096c) {
            case 1:
                return (InputStream) this.f15098b;
            default:
                return super.N0(openOptionArr);
        }
    }

    @Override // tg.b
    public Path O0() {
        switch (this.f15096c) {
            case 0:
                return ((File) this.f15098b).toPath();
            default:
                return super.O0();
        }
    }
}
