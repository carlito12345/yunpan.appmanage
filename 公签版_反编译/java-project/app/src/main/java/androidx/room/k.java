package androidx.room;

import android.database.sqlite.SQLiteException;
import com.yunpan.appmanage.db.MyDb_Impl;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Lock;

/* loaded from: classes.dex */
public final class k {

    /* renamed from: m, reason: collision with root package name */
    public static final String[] f2408m = {"UPDATE", "DELETE", "INSERT"};

    /* renamed from: a, reason: collision with root package name */
    public final MyDb_Impl f2409a;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f2410b;

    /* renamed from: c, reason: collision with root package name */
    public final LinkedHashMap f2411c;

    /* renamed from: d, reason: collision with root package name */
    public final String[] f2412d;

    /* renamed from: e, reason: collision with root package name */
    public final AtomicBoolean f2413e = new AtomicBoolean(false);

    /* renamed from: f, reason: collision with root package name */
    public volatile boolean f2414f;

    /* renamed from: g, reason: collision with root package name */
    public volatile c4.e f2415g;

    /* renamed from: h, reason: collision with root package name */
    public final i f2416h;

    /* renamed from: i, reason: collision with root package name */
    public final y.f f2417i;

    /* renamed from: j, reason: collision with root package name */
    public final Object f2418j;

    /* renamed from: k, reason: collision with root package name */
    public final Object f2419k;
    public final androidx.activity.h l;

    public k(MyDb_Impl myDb_Impl, HashMap map, HashMap map2, String... strArr) {
        String lowerCase;
        this.f2409a = myDb_Impl;
        this.f2410b = map;
        this.f2416h = new i(strArr.length);
        ue.d.d(Collections.newSetFromMap(new IdentityHashMap()), "newSetFromMap(IdentityHashMap())");
        this.f2417i = new y.f();
        this.f2418j = new Object();
        this.f2419k = new Object();
        this.f2411c = new LinkedHashMap();
        int length = strArr.length;
        String[] strArr2 = new String[length];
        for (int i10 = 0; i10 < length; i10++) {
            String str = strArr[i10];
            Locale locale = Locale.US;
            ue.d.d(locale, "US");
            String lowerCase2 = str.toLowerCase(locale);
            ue.d.d(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
            this.f2411c.put(lowerCase2, Integer.valueOf(i10));
            String str2 = (String) this.f2410b.get(strArr[i10]);
            if (str2 != null) {
                lowerCase = str2.toLowerCase(locale);
                ue.d.d(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            } else {
                lowerCase = null;
            }
            if (lowerCase != null) {
                lowerCase2 = lowerCase;
            }
            strArr2[i10] = lowerCase2;
        }
        this.f2412d = strArr2;
        for (Map.Entry entry : this.f2410b.entrySet()) {
            String str3 = (String) entry.getValue();
            Locale locale2 = Locale.US;
            ue.d.d(locale2, "US");
            String lowerCase3 = str3.toLowerCase(locale2);
            ue.d.d(lowerCase3, "this as java.lang.String).toLowerCase(locale)");
            if (this.f2411c.containsKey(lowerCase3)) {
                String lowerCase4 = ((String) entry.getKey()).toLowerCase(locale2);
                ue.d.d(lowerCase4, "this as java.lang.String).toLowerCase(locale)");
                LinkedHashMap linkedHashMap = this.f2411c;
                ue.d.e(linkedHashMap, "<this>");
                Object obj = linkedHashMap.get(lowerCase3);
                if (obj == null && !linkedHashMap.containsKey(lowerCase3)) {
                    throw new NoSuchElementException("Key " + ((Object) lowerCase3) + " is missing in the map.");
                }
                linkedHashMap.put(lowerCase4, obj);
            }
        }
        this.l = new androidx.activity.h(3, this);
    }

    public final boolean a() {
        if (!this.f2409a.isOpenInternal()) {
            return false;
        }
        if (!this.f2414f) {
            ((d4.g) this.f2409a.getOpenHelper()).r();
        }
        return this.f2414f;
    }

    public final void b(c4.a aVar, int i10) {
        aVar.d("INSERT OR IGNORE INTO room_table_modification_log VALUES(" + i10 + ", 0)");
        String str = this.f2412d[i10];
        String[] strArr = f2408m;
        for (int i11 = 0; i11 < 3; i11++) {
            String str2 = strArr[i11];
            String str3 = "CREATE TEMP TRIGGER IF NOT EXISTS " + a9.o.N(str, str2) + " AFTER " + str2 + " ON `" + str + "` BEGIN UPDATE room_table_modification_log SET invalidated = 1 WHERE table_id = " + i10 + " AND invalidated = 0; END";
            ue.d.d(str3, "StringBuilder().apply(builderAction).toString()");
            aVar.d(str3);
        }
    }

    public final void c(c4.a aVar) {
        ue.d.e(aVar, "database");
        if (aVar.C()) {
            return;
        }
        try {
            Lock closeLock$room_runtime_release = this.f2409a.getCloseLock$room_runtime_release();
            closeLock$room_runtime_release.lock();
            try {
                synchronized (this.f2418j) {
                    int[] iArrF = this.f2416h.f();
                    if (iArrF == null) {
                        return;
                    }
                    if (aVar.E()) {
                        aVar.o();
                    } else {
                        aVar.a();
                    }
                    try {
                        int length = iArrF.length;
                        int i10 = 0;
                        int i11 = 0;
                        while (i10 < length) {
                            int i12 = iArrF[i10];
                            int i13 = i11 + 1;
                            if (i12 == 1) {
                                b(aVar, i11);
                            } else if (i12 == 2) {
                                String str = this.f2412d[i11];
                                String[] strArr = f2408m;
                                for (int i14 = 0; i14 < 3; i14++) {
                                    String str2 = "DROP TRIGGER IF EXISTS " + a9.o.N(str, strArr[i14]);
                                    ue.d.d(str2, "StringBuilder().apply(builderAction).toString()");
                                    aVar.d(str2);
                                }
                            }
                            i10++;
                            i11 = i13;
                        }
                        aVar.n();
                        aVar.u();
                    } catch (Throwable th2) {
                        aVar.u();
                        throw th2;
                    }
                }
            } finally {
                closeLock$room_runtime_release.unlock();
            }
        } catch (SQLiteException | IllegalStateException unused) {
        }
    }
}
