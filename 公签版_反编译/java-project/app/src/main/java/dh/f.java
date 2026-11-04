package dh;

import java.util.Locale;
import java.util.TreeMap;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: e, reason: collision with root package name */
    public static final TreeMap f4659e;

    /* renamed from: a, reason: collision with root package name */
    public final String f4660a;

    /* renamed from: b, reason: collision with root package name */
    public String f4661b;

    /* renamed from: c, reason: collision with root package name */
    public String f4662c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f4663d;

    static {
        TreeMap treeMap = new TreeMap();
        f4659e = treeMap;
        treeMap.put("en", Locale.ENGLISH);
        treeMap.put("de", Locale.GERMAN);
        treeMap.put("it", Locale.ITALIAN);
        treeMap.put("es", new Locale("es", "", ""));
        treeMap.put("pt", new Locale("pt", "", ""));
        treeMap.put("da", new Locale("da", "", ""));
        treeMap.put("sv", new Locale("sv", "", ""));
        treeMap.put("no", new Locale("no", "", ""));
        treeMap.put("nl", new Locale("nl", "", ""));
        treeMap.put("ro", new Locale("ro", "", ""));
        treeMap.put("sq", new Locale("sq", "", ""));
        treeMap.put("sh", new Locale("sh", "", ""));
        treeMap.put("sk", new Locale("sk", "", ""));
        treeMap.put("sl", new Locale("sl", "", ""));
        treeMap.put("fr", "jan|fév|mar|avr|mai|jun|jui|aoû|sep|oct|nov|déc");
    }

    public f(f fVar) {
        this.f4663d = true;
        this.f4660a = fVar.f4660a;
        this.f4661b = fVar.f4661b;
        this.f4663d = fVar.f4663d;
        this.f4662c = fVar.f4662c;
    }

    public f(String str, String str2, String str3) {
        this.f4663d = true;
        this.f4660a = str;
        this.f4661b = str2;
        this.f4662c = str3;
    }

    public f(String str, f fVar) {
        this.f4663d = true;
        this.f4660a = str;
        this.f4661b = fVar.f4661b;
        this.f4663d = fVar.f4663d;
        this.f4662c = fVar.f4662c;
    }
}
