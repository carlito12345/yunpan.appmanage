package ng;

import com.android.apksig.internal.apk.AndroidBinXmlParser;
import java.lang.reflect.Array;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final boolean[] f11360a = new boolean[256];

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f11361b = new byte[256];

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f11362c = new byte[18002];

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f11363d = new byte[18002];

    /* renamed from: e, reason: collision with root package name */
    public final int[] f11364e = new int[256];

    /* renamed from: f, reason: collision with root package name */
    public final int[][] f11365f;

    /* renamed from: g, reason: collision with root package name */
    public final int[][] f11366g;

    /* renamed from: h, reason: collision with root package name */
    public final int[][] f11367h;

    /* renamed from: i, reason: collision with root package name */
    public final int[] f11368i;

    /* renamed from: j, reason: collision with root package name */
    public final int[] f11369j;

    /* renamed from: k, reason: collision with root package name */
    public final char[] f11370k;
    public final char[][] l;

    /* renamed from: m, reason: collision with root package name */
    public final byte[] f11371m;

    /* renamed from: n, reason: collision with root package name */
    public int[] f11372n;

    /* renamed from: o, reason: collision with root package name */
    public final byte[] f11373o;

    public a(int i10) {
        int[] iArr = {6, AndroidBinXmlParser.Chunk.RES_XML_TYPE_START_ELEMENT};
        Class cls = Integer.TYPE;
        this.f11365f = (int[][]) Array.newInstance((Class<?>) cls, iArr);
        this.f11366g = (int[][]) Array.newInstance((Class<?>) cls, 6, AndroidBinXmlParser.Chunk.RES_XML_TYPE_START_ELEMENT);
        this.f11367h = (int[][]) Array.newInstance((Class<?>) cls, 6, AndroidBinXmlParser.Chunk.RES_XML_TYPE_START_ELEMENT);
        this.f11368i = new int[6];
        this.f11369j = new int[257];
        this.f11370k = new char[256];
        this.l = (char[][]) Array.newInstance((Class<?>) Character.TYPE, 6, AndroidBinXmlParser.Chunk.RES_XML_TYPE_START_ELEMENT);
        this.f11371m = new byte[6];
        this.f11373o = new byte[i10 * 100000];
    }
}
