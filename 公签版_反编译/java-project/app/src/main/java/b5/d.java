package b5;

import java.io.FilterWriter;
import java.io.StringWriter;

/* loaded from: classes.dex */
public final class d extends FilterWriter {

    /* renamed from: a, reason: collision with root package name */
    public final String f2560a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2561b;

    /* renamed from: c, reason: collision with root package name */
    public final int f2562c;

    /* renamed from: d, reason: collision with root package name */
    public int f2563d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f2564e;

    /* renamed from: f, reason: collision with root package name */
    public int f2565f;

    public d(int i10, StringWriter stringWriter, String str) {
        super(stringWriter);
        if (i10 < 0) {
            throw new IllegalArgumentException("width < 0");
        }
        this.f2561b = i10 != 0 ? i10 : Integer.MAX_VALUE;
        int i11 = i10 >> 1;
        this.f2562c = i11;
        this.f2560a = str.length() == 0 ? null : str;
        this.f2563d = 0;
        this.f2564e = i11 != 0;
        this.f2565f = 0;
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public final void write(int i10) {
        int i11;
        synchronized (((FilterWriter) this).lock) {
            try {
                boolean z = true;
                if (this.f2564e) {
                    if (i10 == 32) {
                        int i12 = this.f2565f + 1;
                        this.f2565f = i12;
                        int i13 = this.f2562c;
                        if (i12 >= i13) {
                            this.f2565f = i13;
                            this.f2564e = false;
                        }
                    } else {
                        this.f2564e = false;
                    }
                }
                if (this.f2563d == this.f2561b && i10 != 10) {
                    ((FilterWriter) this).out.write(10);
                    this.f2563d = 0;
                }
                if (this.f2563d == 0) {
                    String str = this.f2560a;
                    if (str != null) {
                        ((FilterWriter) this).out.write(str);
                    }
                    if (!this.f2564e) {
                        int i14 = 0;
                        while (true) {
                            i11 = this.f2565f;
                            if (i14 >= i11) {
                                break;
                            }
                            ((FilterWriter) this).out.write(32);
                            i14++;
                        }
                        this.f2563d = i11;
                    }
                }
                ((FilterWriter) this).out.write(i10);
                if (i10 == 10) {
                    this.f2563d = 0;
                    if (this.f2562c == 0) {
                        z = false;
                    }
                    this.f2564e = z;
                    this.f2565f = 0;
                } else {
                    this.f2563d++;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public final void write(char[] cArr, int i10, int i11) {
        synchronized (((FilterWriter) this).lock) {
            while (i11 > 0) {
                try {
                    write(cArr[i10]);
                    i10++;
                    i11--;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public final void write(String str, int i10, int i11) {
        synchronized (((FilterWriter) this).lock) {
            while (i11 > 0) {
                try {
                    write(str.charAt(i10));
                    i10++;
                    i11--;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }
}
