package jg;

import java.io.IOException;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public final class m {

    /* renamed from: j, reason: collision with root package name */
    public static final m[] f9914j = new m[0];

    /* renamed from: a, reason: collision with root package name */
    public g[] f9915a;

    /* renamed from: b, reason: collision with root package name */
    public long f9916b;

    /* renamed from: c, reason: collision with root package name */
    public long f9917c;

    /* renamed from: d, reason: collision with root package name */
    public androidx.media3.exoplayer.video.y[] f9918d;

    /* renamed from: e, reason: collision with root package name */
    public long[] f9919e;

    /* renamed from: f, reason: collision with root package name */
    public long[] f9920f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f9921g;

    /* renamed from: h, reason: collision with root package name */
    public long f9922h;

    /* renamed from: i, reason: collision with root package name */
    public int f9923i;

    /* JADX WARN: Code restructure failed: missing block: B:29:0x005e, code lost:
    
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List a() throws IOException {
        int i10;
        if (zg.a.b(this.f9919e) || zg.a.b(this.f9915a)) {
            return Collections.emptyList();
        }
        LinkedList linkedList = new LinkedList();
        long j10 = this.f9919e[0];
        loop0: while (true) {
            for (int i11 = (int) j10; i11 >= 0; i11 = -1) {
                g[] gVarArr = this.f9915a;
                if (i11 >= gVarArr.length) {
                    break loop0;
                }
                if (linkedList.contains(gVarArr[i11])) {
                    throw new IOException("folder uses the same coder more than once in coder chain");
                }
                linkedList.addLast(this.f9915a[i11]);
                if (this.f9918d != null) {
                    i10 = 0;
                    while (true) {
                        androidx.media3.exoplayer.video.y[] yVarArr = this.f9918d;
                        if (i10 >= yVarArr.length) {
                            break;
                        }
                        if (yVarArr[i10].f1984c == i11) {
                            break;
                        }
                        i10++;
                    }
                } else {
                    i10 = -1;
                }
                if (i10 != -1) {
                    break;
                }
            }
            j10 = this.f9918d[i10].f1983b;
        }
    }

    public final long b() {
        int i10;
        long j10 = this.f9917c;
        if (j10 == 0) {
            return 0L;
        }
        for (int i11 = ((int) j10) - 1; i11 >= 0; i11--) {
            if (this.f9918d != null) {
                i10 = 0;
                while (true) {
                    androidx.media3.exoplayer.video.y[] yVarArr = this.f9918d;
                    if (i10 >= yVarArr.length) {
                        break;
                    }
                    if (yVarArr[i10].f1984c == i11) {
                        break;
                    }
                    i10++;
                }
            } else {
                i10 = -1;
            }
            if (i10 < 0) {
                return this.f9920f[i11];
            }
        }
        return 0L;
    }

    public final String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder("Folder with ");
        sb2.append(this.f9915a.length);
        sb2.append(" coders, ");
        sb2.append(this.f9916b);
        sb2.append(" input streams, ");
        sb2.append(this.f9917c);
        sb2.append(" output streams, ");
        sb2.append(this.f9918d.length);
        sb2.append(" bind pairs, ");
        sb2.append(this.f9919e.length);
        sb2.append(" packed streams, ");
        sb2.append(this.f9920f.length);
        sb2.append(" unpack sizes, ");
        if (this.f9921g) {
            str = "with CRC " + this.f9922h;
        } else {
            str = "without CRC";
        }
        sb2.append(str);
        sb2.append(" and ");
        return android.support.v4.media.session.a.s(sb2, this.f9923i, " unpack streams");
    }
}
