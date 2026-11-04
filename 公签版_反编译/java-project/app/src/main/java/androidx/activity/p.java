package androidx.activity;

import androidx.fragment.app.u0;
import java.util.ListIterator;

/* loaded from: classes.dex */
public final class p extends ue.e implements te.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f824a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ w f825b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ p(w wVar, int i10) {
        super(0);
        this.f824a = i10;
        this.f825b = wVar;
    }

    @Override // te.a
    public final Object b() {
        Object objPrevious;
        switch (this.f824a) {
            case 0:
                this.f825b.b();
                break;
            case 1:
                w wVar = this.f825b;
                je.h hVar = wVar.f869b;
                ListIterator listIterator = hVar.listIterator(hVar.size());
                while (true) {
                    if (listIterator.hasPrevious()) {
                        objPrevious = listIterator.previous();
                        if (((u0) objPrevious).f1400a) {
                        }
                    } else {
                        objPrevious = null;
                    }
                }
                wVar.f870c = null;
                break;
            default:
                this.f825b.b();
                break;
        }
        return ie.e.f8690c;
    }
}
