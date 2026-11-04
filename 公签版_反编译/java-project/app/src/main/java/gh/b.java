package gh;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;

/* loaded from: classes.dex */
public final class b extends BufferedInputStream implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public boolean f6179a;

    /* renamed from: b, reason: collision with root package name */
    public volatile boolean f6180b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f6181c;

    /* renamed from: d, reason: collision with root package name */
    public int f6182d;

    /* renamed from: e, reason: collision with root package name */
    public int f6183e;

    /* renamed from: f, reason: collision with root package name */
    public int f6184f;

    /* renamed from: g, reason: collision with root package name */
    public int f6185g;

    /* renamed from: h, reason: collision with root package name */
    public final int[] f6186h;

    /* renamed from: i, reason: collision with root package name */
    public final a f6187i;

    /* renamed from: j, reason: collision with root package name */
    public final fg.b f6188j;

    /* renamed from: k, reason: collision with root package name */
    public IOException f6189k;
    public final int[] l;

    /* renamed from: m, reason: collision with root package name */
    public int f6190m;

    /* renamed from: n, reason: collision with root package name */
    public volatile boolean f6191n;

    public b(InputStream inputStream, a aVar, boolean z) {
        super(inputStream);
        this.f6187i = aVar;
        this.f6182d = 0;
        this.f6180b = true;
        this.f6179a = false;
        this.f6186h = new int[2049];
        this.f6183e = 0;
        this.f6184f = 0;
        this.l = new int[aVar.f6176q];
        this.f6185g = 0;
        this.f6189k = null;
        this.f6181c = false;
        this.f6191n = false;
        if (z) {
            this.f6188j = new fg.b(this, 1);
        } else {
            this.f6188j = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:135:0x0100 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x00fb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int A(boolean z) throws IOException {
        int i10;
        while (true) {
            if (!z && super.available() == 0) {
                return -2;
            }
            int i11 = super.read();
            if (i11 < 0) {
                return -1;
            }
            i10 = i11 & 255;
            synchronized (this.f6187i) {
                this.f6187i.i();
            }
            this.f6187i.getClass();
            switch (this.f6182d) {
                case 0:
                    if (i10 == 255) {
                        if (i10 != 13) {
                            this.f6182d = 0;
                            break;
                        } else {
                            synchronized (this.f6187i) {
                                try {
                                    if (this.f6187i.o(0)) {
                                        this.f6182d = 0;
                                    } else {
                                        this.f6182d = 8;
                                    }
                                } finally {
                                }
                            }
                            break;
                        }
                    } else {
                        this.f6182d = 1;
                    }
                case 1:
                    if (i10 != 240) {
                        switch (i10) {
                            case 250:
                                this.f6190m = 0;
                                this.f6182d = 6;
                                continue;
                            case 251:
                                this.f6182d = 2;
                                continue;
                            case 252:
                                this.f6182d = 3;
                                continue;
                            case 253:
                                this.f6182d = 4;
                                continue;
                            case 254:
                                this.f6182d = 5;
                                continue;
                            case 255:
                                this.f6182d = 0;
                                break;
                            default:
                                this.f6182d = 0;
                                this.f6187i.getClass();
                                continue;
                        }
                    } else {
                        this.f6182d = 0;
                    }
                case 2:
                    synchronized (this.f6187i) {
                        this.f6187i.m(i10);
                        this.f6187i.g();
                    }
                    this.f6182d = 0;
                case 3:
                    synchronized (this.f6187i) {
                        this.f6187i.n(i10);
                        this.f6187i.g();
                    }
                    this.f6182d = 0;
                case 4:
                    synchronized (this.f6187i) {
                        this.f6187i.j(i10);
                        this.f6187i.g();
                    }
                    this.f6182d = 0;
                case 5:
                    synchronized (this.f6187i) {
                        this.f6187i.k(i10);
                        this.f6187i.g();
                    }
                    this.f6182d = 0;
                case 6:
                    if (i10 != 255) {
                        int i12 = this.f6190m;
                        int[] iArr = this.l;
                        if (i12 < iArr.length) {
                            this.f6190m = i12 + 1;
                            iArr[i12] = i10;
                        }
                        this.f6182d = 6;
                    } else {
                        this.f6182d = 9;
                    }
                case 8:
                    if (i10 == 0) {
                        continue;
                    } else if (i10 == 255) {
                    }
                    break;
                case 9:
                    if (i10 != 240) {
                        if (i10 == 255) {
                            int i13 = this.f6190m;
                            int[] iArr2 = this.l;
                            if (i13 < iArr2.length) {
                                this.f6190m = i13 + 1;
                                iArr2[i13] = i10;
                            }
                        }
                        this.f6182d = 6;
                    } else {
                        synchronized (this.f6187i) {
                            this.f6187i.l(this.f6190m, this.l);
                            this.f6187i.g();
                        }
                        this.f6182d = 0;
                    }
            }
        }
        return i10;
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public final int available() {
        synchronized (this.f6186h) {
            try {
                if (this.f6191n) {
                    return this.f6185g;
                }
                return this.f6185g + super.available();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        super.close();
        synchronized (this.f6186h) {
            try {
                this.f6179a = true;
                this.f6180b = true;
                fg.b bVar = this.f6188j;
                if (bVar != null && bVar.isAlive()) {
                    this.f6188j.interrupt();
                }
                this.f6186h.notifyAll();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    public final boolean r(int i10) {
        boolean z;
        synchronized (this.f6186h) {
            z = this.f6185g == 0;
            while (this.f6185g >= this.f6186h.length - 1) {
                if (!this.f6191n) {
                    throw new IllegalStateException("Queue is full! Cannot process another character.");
                }
                this.f6186h.notify();
                try {
                    this.f6186h.wait();
                } catch (InterruptedException e7) {
                    throw e7;
                }
            }
            if (this.f6181c && this.f6191n) {
                this.f6186h.notify();
            }
            int[] iArr = this.f6186h;
            int i11 = this.f6184f;
            iArr[i11] = i10;
            this.f6185g++;
            int i12 = i11 + 1;
            this.f6184f = i12;
            if (i12 >= iArr.length) {
                this.f6184f = 0;
            }
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x005d, code lost:
    
        r7.f6181c = false;
     */
    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int read() {
        synchronized (this.f6186h) {
            while (true) {
                try {
                    IOException iOException = this.f6189k;
                    if (iOException != null) {
                        this.f6189k = null;
                        throw iOException;
                    }
                    int i10 = this.f6185g;
                    if (i10 != 0) {
                        int[] iArr = this.f6186h;
                        int i11 = this.f6183e;
                        int i12 = iArr[i11];
                        int i13 = i11 + 1;
                        this.f6183e = i13;
                        if (i13 >= iArr.length) {
                            this.f6183e = 0;
                        }
                        int i14 = i10 - 1;
                        this.f6185g = i14;
                        if (i14 == 0 && this.f6191n) {
                            this.f6186h.notify();
                        }
                        return i12;
                    }
                    if (this.f6179a) {
                        return -1;
                    }
                    if (this.f6191n) {
                        this.f6186h.notify();
                        try {
                            this.f6181c = true;
                            this.f6186h.wait();
                            this.f6181c = false;
                        } catch (InterruptedException unused) {
                            throw new InterruptedIOException("Fatal thread interruption during read.");
                        }
                    } else {
                        this.f6181c = true;
                        boolean z = true;
                        while (true) {
                            try {
                                int iA = A(z);
                                if (iA < 0 && iA != -2) {
                                    return iA;
                                }
                                if (iA != -2) {
                                    try {
                                        r(iA);
                                    } catch (InterruptedException unused2) {
                                        if (this.f6180b) {
                                            return -1;
                                        }
                                    }
                                }
                                if (super.available() <= 0 || this.f6185g >= this.f6186h.length - 1) {
                                    break;
                                }
                                z = false;
                            } catch (InterruptedIOException e7) {
                                synchronized (this.f6186h) {
                                    this.f6189k = e7;
                                    this.f6186h.notifyAll();
                                    try {
                                        this.f6186h.wait(100L);
                                    } catch (InterruptedException unused3) {
                                    }
                                    return -1;
                                }
                            }
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() throws IOException {
        int iA;
        boolean zR;
        while (!this.f6180b) {
            try {
                try {
                    iA = A(true);
                } catch (InterruptedIOException e7) {
                    synchronized (this.f6186h) {
                        this.f6189k = e7;
                        this.f6186h.notifyAll();
                        try {
                            this.f6186h.wait(100L);
                        } catch (InterruptedException unused) {
                            if (this.f6180b) {
                                break;
                            }
                        }
                    }
                } catch (RuntimeException unused2) {
                    super.close();
                }
                if (iA < 0) {
                    break;
                }
                try {
                    zR = r(iA);
                } catch (InterruptedException unused3) {
                    if (this.f6180b) {
                        break;
                    } else {
                        zR = false;
                    }
                }
                if (zR) {
                    this.f6187i.h();
                }
            } catch (IOException e10) {
                synchronized (this.f6186h) {
                    this.f6189k = e10;
                    this.f6187i.h();
                }
            }
        }
        synchronized (this.f6186h) {
            this.f6180b = true;
            this.f6179a = true;
            this.f6186h.notify();
        }
        this.f6191n = false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) {
        int i12;
        if (i11 < 1) {
            return 0;
        }
        synchronized (this.f6186h) {
            int i13 = this.f6185g;
            if (i11 > i13) {
                i11 = i13;
            }
        }
        int i14 = read();
        if (i14 == -1) {
            return -1;
        }
        int i15 = i10;
        while (true) {
            i12 = i15 + 1;
            bArr[i15] = (byte) i14;
            i11--;
            if (i11 <= 0 || (i14 = read()) == -1) {
                break;
            }
            i15 = i12;
        }
        return i12 - i10;
    }
}
