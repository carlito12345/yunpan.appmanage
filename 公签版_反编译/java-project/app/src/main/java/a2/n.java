package a2;

import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.hierynomus.smbj.connection.LeaseManager;
import j$.util.function.Function$CC;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.function.Function;

/* loaded from: classes.dex */
public final /* synthetic */ class n implements Function {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f233a;

    public /* synthetic */ n(int i10) {
        this.f233a = i10;
    }

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public final /* synthetic */ Function mo10andThen(Function function) {
        int i10 = this.f233a;
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f233a) {
            case 0:
                return Integer.valueOf(Integer.bitCount(((Integer) obj).intValue()));
            case 1:
                return LeaseManager.lambda$leaseKeyForPath$0((String) obj);
            case 2:
                return new jg.n();
            case 3:
                return new IdentityHashMap();
            case 4:
                oh.e eVar = (oh.e) obj;
                String strL = oh.f.l(eVar.f11803a);
                eVar.f11803a = null;
                return strL;
            case 5:
                return Collections.unmodifiableList((List) obj);
            case 6:
                ph.q qVar = (ph.q) obj;
                return qVar instanceof ph.x ? ((ph.x) qVar).A() : qVar.l("br") ? SignParameters.NEW_LINE : "";
            case 7:
                return new HashMap();
            case 8:
                return ((ph.l) obj).M();
            case 9:
                return ((ph.q) obj).r();
            case 10:
                return new rh.x((rh.p) obj, 1);
            default:
                return new rh.y((rh.p) obj);
        }
    }

    public final /* synthetic */ Function compose(Function function) {
        int i10 = this.f233a;
        return Function$CC.$default$compose(this, function);
    }
}
