package j$.util.stream;

import java.util.function.Predicate;

/* renamed from: j$.util.stream.r0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0127r0 extends AbstractC0147v0 {

    /* renamed from: c, reason: collision with root package name */
    final /* synthetic */ EnumC0152w0 f9543c;

    /* renamed from: d, reason: collision with root package name */
    final /* synthetic */ Predicate f9544d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0127r0(EnumC0152w0 enumC0152w0, Predicate predicate) {
        super(enumC0152w0);
        this.f9543c = enumC0152w0;
        this.f9544d = predicate;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        if (this.f9566a) {
            return;
        }
        boolean zTest = this.f9544d.test(obj);
        EnumC0152w0 enumC0152w0 = this.f9543c;
        if (zTest == enumC0152w0.f9576a) {
            this.f9566a = true;
            this.f9567b = enumC0152w0.f9577b;
        }
    }
}
