package x4;

import j$.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class q extends p {

    /* renamed from: c, reason: collision with root package name */
    public final y4.a f18131c;

    /* renamed from: d, reason: collision with root package name */
    public y4.a f18132d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:139:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0204  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public q(u uVar, r rVar) {
        super(uVar, rVar);
        char c7 = 0;
        t tVar = rVar.f18134b;
        boolean zEquals = uVar.equals(u.f18140e);
        t tVar2 = rVar.f18133a;
        String str = tVar.f18136a;
        if (zEquals) {
            String str2 = tVar2.f18136a;
            str2.getClass();
            if (str2.equals("invoke") || str2.equals("invokeExact")) {
                this.f18131c = y4.a.b(str);
            } else {
                if (str != null) {
                    ConcurrentHashMap concurrentHashMap = y4.a.f18923e;
                    throw new NullPointerException("descriptor == null");
                }
                ConcurrentHashMap concurrentHashMap2 = y4.a.f18923e;
                y4.a aVarB = (y4.a) concurrentHashMap2.get(str);
                if (aVarB == null) {
                    aVarB = y4.a.b(str);
                    y4.a aVar = (y4.a) concurrentHashMap2.putIfAbsent(aVarB.f18924a, aVarB);
                    if (aVar != null) {
                        aVarB = aVar;
                    }
                }
                this.f18131c = aVarB;
            }
        } else {
            if (uVar.equals(u.f18141f)) {
                String str3 = tVar2.f18136a;
                str3.getClass();
                switch (str3.hashCode()) {
                    case -1946504908:
                        if (!str3.equals("getAndBitwiseOrRelease")) {
                            c7 = 65535;
                            break;
                        }
                        break;
                    case -1686727776:
                        if (str3.equals("getAndBitwiseAndRelease")) {
                            c7 = 1;
                            break;
                        }
                        break;
                    case -1671098288:
                        if (str3.equals("compareAndSet")) {
                            c7 = 2;
                            break;
                        }
                        break;
                    case -1292078254:
                        if (str3.equals("compareAndExchangeRelease")) {
                            c7 = 3;
                            break;
                        }
                        break;
                    case -1117944904:
                        if (str3.equals("weakCompareAndSet")) {
                            c7 = 4;
                            break;
                        }
                        break;
                    case -1103072857:
                        if (str3.equals("getAndAddRelease")) {
                            c7 = 5;
                            break;
                        }
                        break;
                    case -1032914329:
                        if (str3.equals("getAndBitwiseAnd")) {
                            c7 = 6;
                            break;
                        }
                        break;
                    case -1032892181:
                        if (str3.equals("getAndBitwiseXor")) {
                            c7 = 7;
                            break;
                        }
                        break;
                    case -794517348:
                        if (str3.equals("getAndBitwiseXorRelease")) {
                            c7 = '\b';
                            break;
                        }
                        break;
                    case -567150350:
                        if (str3.equals("weakCompareAndSetPlain")) {
                            c7 = '\t';
                            break;
                        }
                        break;
                    case -240822786:
                        if (str3.equals("weakCompareAndSetAcquire")) {
                            c7 = '\n';
                            break;
                        }
                        break;
                    case -230706875:
                        if (str3.equals("setRelease")) {
                            c7 = 11;
                            break;
                        }
                        break;
                    case -127361888:
                        if (str3.equals("getAcquire")) {
                            c7 = '\f';
                            break;
                        }
                        break;
                    case -37641530:
                        if (str3.equals("getAndSetRelease")) {
                            c7 = '\r';
                            break;
                        }
                        break;
                    case 102230:
                        if (str3.equals("get")) {
                            c7 = 14;
                            break;
                        }
                        break;
                    case 113762:
                        if (str3.equals("set")) {
                            c7 = 15;
                            break;
                        }
                        break;
                    case 93645315:
                        if (str3.equals("getAndBitwiseOrAcquire")) {
                            c7 = 16;
                            break;
                        }
                        break;
                    case 101293086:
                        if (str3.equals("setVolatile")) {
                            c7 = 17;
                            break;
                        }
                        break;
                    case 189872914:
                        if (str3.equals("getVolatile")) {
                            c7 = 18;
                            break;
                        }
                        break;
                    case 282707520:
                        if (str3.equals("getAndAdd")) {
                            c7 = 19;
                            break;
                        }
                        break;
                    case 282724865:
                        if (str3.equals("getAndSet")) {
                            c7 = 20;
                            break;
                        }
                        break;
                    case 353422447:
                        if (str3.equals("getAndBitwiseAndAcquire")) {
                            c7 = 21;
                            break;
                        }
                        break;
                    case 470702883:
                        if (str3.equals("setOpaque")) {
                            c7 = 22;
                            break;
                        }
                        break;
                    case 685319959:
                        if (str3.equals("getOpaque")) {
                            c7 = 23;
                            break;
                        }
                        break;
                    case 748071969:
                        if (str3.equals("compareAndExchangeAcquire")) {
                            c7 = 24;
                            break;
                        }
                        break;
                    case 937077366:
                        if (str3.equals("getAndAddAcquire")) {
                            c7 = 25;
                            break;
                        }
                        break;
                    case 1245632875:
                        if (str3.equals("getAndBitwiseXorAcquire")) {
                            c7 = 26;
                            break;
                        }
                        break;
                    case 1352153939:
                        if (str3.equals("getAndBitwiseOr")) {
                            c7 = 27;
                            break;
                        }
                        break;
                    case 1483964149:
                        if (str3.equals("compareAndExchange")) {
                            c7 = 28;
                            break;
                        }
                        break;
                    case 2002508693:
                        if (str3.equals("getAndSetAcquire")) {
                            c7 = 29;
                            break;
                        }
                        break;
                    case 2013994287:
                        if (str3.equals("weakCompareAndSetRelease")) {
                            c7 = 30;
                            break;
                        }
                        break;
                }
                switch (c7) {
                }
            }
            if (str != null) {
            }
        }
        this.f18132d = null;
    }

    @Override // x4.a
    public final int c(a aVar) {
        p pVar = (p) aVar;
        int iCompareTo = this.f18129a.compareTo(pVar.f18129a);
        if (iCompareTo == 0) {
            iCompareTo = this.f18130b.f18133a.compareTo(pVar.f18130b.f18133a);
        }
        return iCompareTo != 0 ? iCompareTo : this.f18131c.compareTo(((q) aVar).f18131c);
    }

    @Override // x4.a
    public final String d() {
        return "method";
    }

    public final int e(boolean z) {
        y4.a aVar = this.f18131c;
        if (!z) {
            if (this.f18132d == null) {
                y4.c cVar = this.f18129a.f18142a;
                aVar.getClass();
                StringBuilder sb2 = new StringBuilder("(");
                sb2.append(cVar.f18963a);
                String strP = android.support.v4.media.session.a.p(aVar.f18924a, 1, sb2);
                Object[] objArr = aVar.f18926c.f2559b;
                int length = objArr.length;
                y4.b bVar = new y4.b(length + 1);
                bVar.e(0, cVar);
                int i10 = 0;
                while (i10 < length) {
                    int i11 = i10 + 1;
                    bVar.e(i11, objArr[i10]);
                    i10 = i11;
                }
                bVar.f2570a = false;
                y4.a aVar2 = new y4.a(strP, aVar.f18925b, bVar);
                y4.a aVar3 = (y4.a) y4.a.f18923e.putIfAbsent(strP, aVar2);
                if (aVar3 != null) {
                    aVar2 = aVar3;
                }
                this.f18132d = aVar2;
            }
            aVar = this.f18132d;
        }
        y4.b bVar2 = aVar.f18926c;
        int length2 = bVar2.f2559b.length;
        int iC = 0;
        for (int i12 = 0; i12 < length2; i12++) {
            iC += ((y4.c) bVar2.d(i12)).c();
        }
        return iC;
    }
}
