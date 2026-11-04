package pg;

import j$.time.Instant;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;
import java.util.zip.CRC32;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* loaded from: classes.dex */
public final class d extends mg.a {

    /* renamed from: b, reason: collision with root package name */
    public int f12677b;

    /* renamed from: d, reason: collision with root package name */
    public boolean f12679d;

    /* renamed from: e, reason: collision with root package name */
    public final FilterInputStream f12680e;

    /* renamed from: h, reason: collision with root package name */
    public final e f12683h;

    /* renamed from: i, reason: collision with root package name */
    public final wg.c f12684i;

    /* renamed from: j, reason: collision with root package name */
    public final wg.c f12685j;

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f12676a = new byte[8192];

    /* renamed from: c, reason: collision with root package name */
    public final CRC32 f12678c = new CRC32();

    /* renamed from: f, reason: collision with root package name */
    public Inflater f12681f = new Inflater(true);

    /* renamed from: g, reason: collision with root package name */
    public final byte[] f12682g = new byte[1];

    /* JADX WARN: Removed duplicated region for block: B:25:0x00c6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public d(c cVar) throws IOException {
        int i10 = 4;
        int i11 = xg.b.f18466i;
        xg.a aVar = new xg.a();
        tg.b bVar = (tg.b) cVar.f15098b;
        if (bVar == null) {
            throw new IllegalStateException("origin == null");
        }
        aVar.P0(bVar.N0(cVar.Q0()));
        FilterInputStream bVar2 = new xg.b(aVar);
        bVar2 = bVar2.markSupported() ? bVar2 : new BufferedInputStream(bVar2);
        this.f12680e = bVar2;
        int i12 = c.f12675e;
        Charset charset = f.f12696a;
        wg.c cVar2 = wg.b.I0;
        this.f12684i = cVar2;
        this.f12685j = cVar2;
        if (bVar2.read() != 31 || bVar2.read() != 139) {
            throw new IOException("Input is not in the .gz format.");
        }
        e eVar = new e();
        this.f12683h = eVar;
        int i13 = sg.a.f14562a;
        eVar.f12690e = charset;
        DataInputStream dataInputStream = new DataInputStream(bVar2);
        int unsignedByte = dataInputStream.readUnsignedByte();
        if (unsignedByte != 8) {
            throw new IOException(g.b.i("Unsupported compression method ", unsignedByte, " in the .gz header"));
        }
        int unsignedByte2 = dataInputStream.readUnsignedByte();
        if ((unsignedByte2 & 224) != 0) {
            throw new IOException("Reserved flags are set in the .gz header.");
        }
        e eVar2 = this.f12683h;
        long jB = rg.b.b(dataInputStream);
        eVar2.getClass();
        eVar2.f12692g = Instant.ofEpochSecond(jB);
        int unsignedByte3 = dataInputStream.readUnsignedByte();
        int i14 = 9;
        if (unsignedByte3 == 2) {
            this.f12683h.b(9);
        } else if (unsignedByte3 != 4) {
            this.f12683h.b(-1);
        } else {
            this.f12683h.b(1);
        }
        e eVar3 = this.f12683h;
        int unsignedByte4 = dataInputStream.readUnsignedByte();
        eVar3.getClass();
        int i15 = 255;
        if (unsignedByte4 != 255) {
            switch (unsignedByte4) {
                case 0:
                    i14 = 5;
                    break;
                case 1:
                    i14 = 2;
                    break;
                case 2:
                    i14 = 14;
                    break;
                case 3:
                    i14 = 11;
                    break;
                case 4:
                    i14 = 13;
                    break;
                case 5:
                    i14 = 3;
                    break;
                case 6:
                    i14 = 6;
                    break;
                case 7:
                    i14 = 7;
                    break;
                case 8:
                    i14 = 15;
                    break;
                case 9:
                    i14 = 4;
                    break;
                case 10:
                    i14 = 10;
                    break;
                case 11:
                    i14 = 8;
                    break;
                case 12:
                    break;
                case 13:
                    i14 = 1;
                    break;
                default:
                    i14 = 12;
                    break;
            }
        }
        eVar3.f12693h = i14;
        if ((unsignedByte2 & 4) != 0) {
            int unsignedByte5 = dataInputStream.readUnsignedByte() | (dataInputStream.readUnsignedByte() << 8);
            byte[] bArr = new byte[unsignedByte5];
            dataInputStream.readFully(bArr);
            e eVar4 = this.f12683h;
            b bVar3 = new b();
            int i16 = 0;
            while (i16 <= unsignedByte5 - 4) {
                byte b10 = bArr[i16];
                byte b11 = bArr[i16 + 1];
                int i17 = i16 + 3;
                int i18 = bArr[i16 + 2] & i15;
                int i19 = i16 + i10;
                int i20 = i18 | ((bArr[i17] & i15) << 8);
                int i21 = unsignedByte5 - i19;
                if (i20 > i21) {
                    throw new IOException(android.support.v4.media.session.a.o("Extra subfield lenght exceeds remaining bytes in extra: ", i20, i21, " > "));
                }
                byte[] bArr2 = new byte[i20];
                System.arraycopy(bArr, i19, bArr2, 0, i20);
                i16 = i19 + i20;
                bVar3.f12673a.add(new a(bArr2, b10, b11));
                bVar3.f12674b = i16;
                i10 = 4;
                i15 = 255;
            }
            if (i16 < unsignedByte5) {
                throw new IOException("" + (unsignedByte5 - i16) + " remaining bytes not used to parse an extra subfield.");
            }
            eVar4.f12688c = bVar3;
        }
        if ((unsignedByte2 & 8) != 0) {
            e eVar5 = this.f12683h;
            String str = new String(A(dataInputStream), this.f12683h.f12690e);
            eVar5.a(str);
            eVar5.f12689d = str;
        }
        if ((unsignedByte2 & 16) != 0) {
            e eVar6 = this.f12683h;
            String str2 = new String(A(dataInputStream), this.f12683h.f12690e);
            eVar6.a(str2);
            eVar6.f12686a = str2;
        }
        if ((unsignedByte2 & 2) != 0) {
            this.f12683h.f12691f = true;
            dataInputStream.readShort();
        }
        this.f12681f.reset();
        this.f12678c.reset();
        this.f12684i.getClass();
    }

    public static byte[] A(DataInputStream dataInputStream) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            try {
                int unsignedByte = dataInputStream.readUnsignedByte();
                if (unsignedByte == 0) {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    return byteArray;
                }
                byteArrayOutputStream.write(unsignedByte);
            } catch (Throwable th2) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th3) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                    } catch (Exception unused) {
                    }
                }
                throw th2;
            }
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        Inflater inflater = this.f12681f;
        if (inflater != null) {
            inflater.end();
            this.f12681f = null;
        }
        InputStream inputStream = System.in;
        FilterInputStream filterInputStream = this.f12680e;
        if (filterInputStream != inputStream) {
            filterInputStream.close();
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = this.f12682g;
        if (read(bArr, 0, 1) == -1) {
            return -1;
        }
        return bArr[0] & 255;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws DataFormatException, IOException {
        if (i11 == 0) {
            return 0;
        }
        if (this.f12679d) {
            return -1;
        }
        int i12 = 0;
        while (i11 > 0) {
            boolean zNeedsInput = this.f12681f.needsInput();
            FilterInputStream filterInputStream = this.f12680e;
            if (zNeedsInput) {
                byte[] bArr2 = this.f12676a;
                filterInputStream.mark(bArr2.length);
                int i13 = filterInputStream.read(bArr2);
                this.f12677b = i13;
                if (i13 == -1) {
                    throw new EOFException();
                }
                this.f12681f.setInput(bArr2, 0, i13);
            }
            try {
                int iInflate = this.f12681f.inflate(bArr, i10, i11);
                CRC32 crc32 = this.f12678c;
                crc32.update(bArr, i10, iInflate);
                i10 += iInflate;
                i11 -= iInflate;
                i12 += iInflate;
                if (this.f12681f.finished()) {
                    filterInputStream.reset();
                    long remaining = this.f12677b - this.f12681f.getRemaining();
                    if (sg.b.a(filterInputStream, remaining, new ah.a(10)) != remaining) {
                        throw new IOException();
                    }
                    this.f12677b = 0;
                    DataInputStream dataInputStream = new DataInputStream(filterInputStream);
                    long jB = rg.b.b(dataInputStream);
                    if (jB != crc32.getValue()) {
                        throw new IOException("Gzip-compressed data is corrupt (CRC32 error).");
                    }
                    long jB2 = rg.b.b(dataInputStream);
                    if (jB2 != (this.f12681f.getBytesWritten() & 4294967295L)) {
                        throw new IOException("Gzip-compressed data is corrupt (uncompressed size mismatch).");
                    }
                    e eVar = this.f12683h;
                    eVar.f12694i = jB;
                    eVar.f12695j = jB2;
                    this.f12685j.getClass();
                    this.f12681f.end();
                    this.f12681f = null;
                    this.f12679d = true;
                    if (i12 == 0) {
                        return -1;
                    }
                    return i12;
                }
            } catch (DataFormatException e7) {
                throw new IOException("Gzip-compressed data is corrupt.", e7);
            }
        }
        return i12;
    }
}
