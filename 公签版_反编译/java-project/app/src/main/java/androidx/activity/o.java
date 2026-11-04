package androidx.activity;

import androidx.fragment.app.u0;
import java.util.ListIterator;

/* loaded from: classes.dex */
public final class o extends ue.e implements te.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f822a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f823b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ o(w wVar, int i10) {
        super(1);
        this.f822a = i10;
        this.f823b = wVar;
    }

    @Override // te.l
    public Object a(Object obj) {
        Object objPrevious;
        Object objPrevious2;
        switch (this.f822a) {
            case 0:
                ue.d.e((b) obj, "backEvent");
                w wVar = (w) this.f823b;
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
                wVar.f870c = (u0) objPrevious;
                break;
            default:
                ue.d.e((b) obj, "backEvent");
                je.h hVar2 = ((w) this.f823b).f869b;
                ListIterator listIterator2 = hVar2.listIterator(hVar2.size());
                while (true) {
                    if (listIterator2.hasPrevious()) {
                        objPrevious2 = listIterator2.previous();
                        if (((u0) objPrevious2).f1400a) {
                        }
                    } else {
                        objPrevious2 = null;
                    }
                }
                break;
        }
        return ie.e.f8690c;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(c4.d dVar) {
        super(4);
        this.f822a = 2;
        this.f823b = dVar;
    }
}
