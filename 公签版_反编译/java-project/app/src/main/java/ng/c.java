package ng;

import com.android.apksig.internal.apk.AndroidBinXmlParser;
import com.hsae.autosdk.source.SourceConst;
import java.lang.reflect.Array;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final boolean[] f11393a = new boolean[256];

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f11394b = new byte[256];

    /* renamed from: c, reason: collision with root package name */
    public final int[] f11395c = new int[AndroidBinXmlParser.Chunk.RES_XML_TYPE_START_ELEMENT];

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f11396d = new byte[18002];

    /* renamed from: e, reason: collision with root package name */
    public final byte[] f11397e = new byte[18002];

    /* renamed from: f, reason: collision with root package name */
    public final byte[] f11398f = new byte[256];

    /* renamed from: g, reason: collision with root package name */
    public final byte[][] f11399g = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, 6, AndroidBinXmlParser.Chunk.RES_XML_TYPE_START_ELEMENT);

    /* renamed from: h, reason: collision with root package name */
    public final int[][] f11400h;

    /* renamed from: i, reason: collision with root package name */
    public final int[] f11401i;

    /* renamed from: j, reason: collision with root package name */
    public final short[] f11402j;

    /* renamed from: k, reason: collision with root package name */
    public final int[][] f11403k;
    public final byte[] l;

    /* renamed from: m, reason: collision with root package name */
    public final boolean[] f11404m;

    /* renamed from: n, reason: collision with root package name */
    public final int[] f11405n;

    /* renamed from: o, reason: collision with root package name */
    public final int[] f11406o;

    /* renamed from: p, reason: collision with root package name */
    public final int[] f11407p;

    /* renamed from: q, reason: collision with root package name */
    public final byte[] f11408q;
    public final int[] r;

    /* renamed from: s, reason: collision with root package name */
    public final char[] f11409s;

    /* renamed from: t, reason: collision with root package name */
    public int f11410t;

    public c(int i10) {
        int[] iArr = {6, AndroidBinXmlParser.Chunk.RES_XML_TYPE_START_ELEMENT};
        Class cls = Integer.TYPE;
        this.f11400h = (int[][]) Array.newInstance((Class<?>) cls, iArr);
        this.f11401i = new int[6];
        this.f11402j = new short[6];
        this.f11403k = (int[][]) Array.newInstance((Class<?>) cls, 6, AndroidBinXmlParser.Chunk.RES_XML_TYPE_START_ELEMENT);
        this.l = new byte[6];
        this.f11404m = new boolean[16];
        this.f11405n = new int[SourceConst.IOCTL_FUNCTION_MIC1];
        this.f11406o = new int[516];
        this.f11407p = new int[516];
        int i11 = 100000 * i10;
        this.f11408q = new byte[i11 + 21];
        this.r = new int[i11];
        this.f11409s = new char[i10 * 200000];
    }
}
