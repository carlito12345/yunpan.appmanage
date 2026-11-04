package m3;

import a9.o;
import android.graphics.Color;
import ta.q;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final String f10840a;

    /* renamed from: b, reason: collision with root package name */
    public final int f10841b;

    /* renamed from: c, reason: collision with root package name */
    public final Integer f10842c;

    /* renamed from: d, reason: collision with root package name */
    public final Integer f10843d;

    /* renamed from: e, reason: collision with root package name */
    public final float f10844e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f10845f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f10846g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f10847h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f10848i;

    /* renamed from: j, reason: collision with root package name */
    public final int f10849j;

    public d(String str, int i10, Integer num, Integer num2, float f10, boolean z, boolean z4, boolean z10, boolean z11, int i11) {
        this.f10840a = str;
        this.f10841b = i10;
        this.f10842c = num;
        this.f10843d = num2;
        this.f10844e = f10;
        this.f10845f = z;
        this.f10846g = z4;
        this.f10847h = z10;
        this.f10848i = z11;
        this.f10849j = i11;
    }

    public static int a(String str) {
        int i10;
        try {
            i10 = Integer.parseInt(str.trim());
        } catch (NumberFormatException unused) {
        }
        switch (i10) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return i10;
            default:
                q.t("Ignoring unknown alignment: ", str);
                return -1;
        }
    }

    public static boolean b(String str) throws NumberFormatException {
        try {
            int i10 = Integer.parseInt(str);
            return i10 == 1 || i10 == -1;
        } catch (NumberFormatException e7) {
            u1.a.q("Failed to parse boolean value: '" + str + "'", e7);
            return false;
        }
    }

    public static Integer c(String str) {
        try {
            long j10 = str.startsWith("&H") ? Long.parseLong(str.substring(2), 16) : Long.parseLong(str);
            o.k(j10 <= 4294967295L);
            return Integer.valueOf(Color.argb(d.b.h(((j10 >> 24) & 255) ^ 255), d.b.h(j10 & 255), d.b.h((j10 >> 8) & 255), d.b.h((j10 >> 16) & 255)));
        } catch (IllegalArgumentException e7) {
            u1.a.q("Failed to parse color expression: '" + str + "'", e7);
            return null;
        }
    }
}
