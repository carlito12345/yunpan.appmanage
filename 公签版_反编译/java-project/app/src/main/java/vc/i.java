package vc;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class i {

    /* renamed from: c, reason: collision with root package name */
    public static final i f16786c;

    /* renamed from: d, reason: collision with root package name */
    public static final i f16787d;

    /* renamed from: e, reason: collision with root package name */
    public static final i f16788e;

    /* renamed from: f, reason: collision with root package name */
    public static final i f16789f;

    /* renamed from: g, reason: collision with root package name */
    public static final i f16790g;

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ i[] f16791h;

    /* renamed from: a, reason: collision with root package name */
    public final boolean f16792a;

    /* renamed from: b, reason: collision with root package name */
    public final int f16793b;

    static {
        i iVar = new i();
        f16786c = iVar;
        i iVar2 = new i("SMB202", 1, 514);
        f16787d = iVar2;
        i iVar3 = new i("SMB210", 2, 528);
        f16788e = iVar3;
        i iVar4 = new i("SMB300", 3, 768);
        f16789f = iVar4;
        i iVar5 = new i("SMB302", 4, 770);
        i iVar6 = new i("SMB311", 5, 785);
        f16790g = iVar6;
        f16791h = new i[]{iVar, iVar2, iVar3, iVar4, iVar5, iVar6};
    }

    public i() {
        this.f16792a = false;
        this.f16793b = -1;
    }

    public static i valueOf(String str) {
        return (i) Enum.valueOf(i.class, str);
    }

    public static i[] values() {
        return (i[]) f16791h.clone();
    }

    public final boolean a(i iVar) {
        return ordinal() >= iVar.ordinal();
    }

    public i(String str, int i10, int i11) {
        this.f16792a = true;
        this.f16793b = i11;
    }
}
