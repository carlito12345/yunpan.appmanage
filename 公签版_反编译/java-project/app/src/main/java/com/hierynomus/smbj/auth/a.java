package com.hierynomus.smbj.auth;

import com.hierynomus.ntlm.messages.NtlmChallenge;
import com.hierynomus.ntlm.messages.NtlmNegotiateFlag;
import fa.j0;
import fa.k0;
import fa.l0;
import j$.util.function.Predicate$CC;
import java.util.function.Predicate;
import ph.q;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Predicate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3748a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f3749b;

    public /* synthetic */ a(int i10, Object obj) {
        this.f3748a = i10;
        this.f3749b = obj;
    }

    public final /* synthetic */ Predicate and(Predicate predicate) {
        int i10 = this.f3748a;
        return Predicate$CC.$default$and(this, predicate);
    }

    public final /* synthetic */ Predicate negate() {
        switch (this.f3748a) {
        }
        return Predicate$CC.$default$negate(this);
    }

    public final /* synthetic */ Predicate or(Predicate predicate) {
        int i10 = this.f3748a;
        return Predicate$CC.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f3748a) {
            case 0:
                return NtlmAuthenticator.lambda$authenticate$0((NtlmChallenge) this.f3749b, (NtlmNegotiateFlag) obj);
            case 1:
                return ((hi.a) obj).f8207a == ((k0) this.f3749b);
            case 2:
                return ((hi.a) obj).f8207a == ((l0) this.f3749b);
            case 3:
                return ((hi.a) obj).f8207a == ((j0) this.f3749b);
            case 4:
                return ((Class) obj).isInstance(this.f3749b);
            case 5:
                return ((String) this.f3749b).equalsIgnoreCase((String) obj);
            default:
                return ((Class) this.f3749b).isInstance((q) obj);
        }
    }
}
