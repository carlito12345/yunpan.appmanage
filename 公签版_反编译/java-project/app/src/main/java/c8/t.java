package c8;

import java.io.IOException;

/* loaded from: classes.dex */
public final class t extends z7.a0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2947a;

    @Override // z7.a0
    public final Object b(h8.a aVar) throws IOException {
        switch (this.f2947a) {
            case 0:
                aVar.l0();
                return null;
            case 1:
                if (aVar.e0() != 9) {
                    return Double.valueOf(aVar.V());
                }
                aVar.a0();
                return null;
            default:
                if (aVar.e0() != 9) {
                    return Float.valueOf((float) aVar.V());
                }
                aVar.a0();
                return null;
        }
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) throws IOException {
        switch (this.f2947a) {
            case 0:
                bVar.P();
                break;
            case 1:
                Number number = (Number) obj;
                if (number != null) {
                    double dDoubleValue = number.doubleValue();
                    z7.m.a(dDoubleValue);
                    bVar.U(dDoubleValue);
                    break;
                } else {
                    bVar.P();
                    break;
                }
            default:
                Number numberValueOf = (Number) obj;
                if (numberValueOf != null) {
                    float fFloatValue = numberValueOf.floatValue();
                    z7.m.a(fFloatValue);
                    if (!(numberValueOf instanceof Float)) {
                        numberValueOf = Float.valueOf(fFloatValue);
                    }
                    bVar.W(numberValueOf);
                    break;
                } else {
                    bVar.P();
                    break;
                }
        }
    }

    public String toString() {
        switch (this.f2947a) {
            case 0:
                return "AnonymousOrNonStaticLocalClassAdapter";
            default:
                return super.toString();
        }
    }
}
