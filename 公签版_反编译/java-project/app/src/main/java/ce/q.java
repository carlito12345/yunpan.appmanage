package ce;

import java.io.UnsupportedEncodingException;

/* loaded from: classes.dex */
public abstract class q extends ee.a implements q0 {
    public static final de.d A = de.d.r();
    public static final byte[] B = {-1, 83, 77, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

    /* renamed from: c, reason: collision with root package name */
    public byte f3114c;

    /* renamed from: e, reason: collision with root package name */
    public int f3116e;

    /* renamed from: f, reason: collision with root package name */
    public int f3117f;

    /* renamed from: h, reason: collision with root package name */
    public int f3119h;

    /* renamed from: i, reason: collision with root package name */
    public int f3120i;

    /* renamed from: j, reason: collision with root package name */
    public int f3121j;
    public int l;

    /* renamed from: m, reason: collision with root package name */
    public int f3123m;

    /* renamed from: n, reason: collision with root package name */
    public int f3124n;

    /* renamed from: p, reason: collision with root package name */
    public int f3125p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f3126q;
    public boolean r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f3127s;

    /* renamed from: t, reason: collision with root package name */
    public int f3128t;

    /* renamed from: v, reason: collision with root package name */
    public boolean f3129v;

    /* renamed from: x, reason: collision with root package name */
    public String f3131x;
    public q z;

    /* renamed from: w, reason: collision with root package name */
    public p f3130w = null;

    /* renamed from: y, reason: collision with root package name */
    public r f3132y = null;

    /* renamed from: d, reason: collision with root package name */
    public byte f3115d = 24;

    /* renamed from: k, reason: collision with root package name */
    public int f3122k = q0.f3142k0;

    /* renamed from: g, reason: collision with root package name */
    public int f3118g = 0;

    public static int f(int i10, byte[] bArr) {
        return (bArr[i10] & 255) + ((bArr[i10 + 1] & 255) << 8);
    }

    public static int g(int i10, byte[] bArr) {
        return (bArr[i10] & 255) + ((bArr[i10 + 1] & 255) << 8) + ((bArr[i10 + 2] & 255) << 16) + ((bArr[i10 + 3] & 255) << 24);
    }

    public static long h(int i10, byte[] bArr) {
        return (g(i10, bArr) & 4294967295L) + (g(i10 + 4, bArr) << 32);
    }

    public static long l(int i10, byte[] bArr) {
        return (((g(i10 + 4, bArr) << 32) | (g(i10, bArr) & 4294967295L)) / 10000) - 11644473600000L;
    }

    public static void q(long j10, byte[] bArr, int i10) {
        bArr[i10] = (byte) j10;
        bArr[i10 + 1] = (byte) (j10 >> 8);
    }

    public static void r(long j10, byte[] bArr, int i10) {
        bArr[i10] = (byte) j10;
        bArr[i10 + 1] = (byte) (j10 >> 8);
        bArr[i10 + 2] = (byte) (j10 >> 16);
        bArr[i10 + 3] = (byte) (j10 >> 24);
    }

    public static void s(long j10, byte[] bArr, int i10) {
        bArr[i10] = (byte) j10;
        bArr[i10 + 1] = (byte) (j10 >> 8);
        bArr[i10 + 2] = (byte) (j10 >> 16);
        bArr[i10 + 3] = (byte) (j10 >> 24);
        bArr[i10 + 4] = (byte) (j10 >> 32);
        bArr[i10 + 5] = (byte) (j10 >> 40);
        bArr[i10 + 6] = (byte) (j10 >> 48);
        bArr[i10 + 7] = (byte) (j10 >> 56);
    }

    public void b(byte[] bArr) {
        this.f3116e = 4;
        e(bArr);
        byte b10 = bArr[36];
        this.f3124n = b10;
        int i10 = 37;
        de.d dVar = A;
        if (b10 != 0) {
            if (i(37, bArr) != this.f3124n * 2 && de.d.f4630b >= 5) {
                dVar.getClass();
            }
            i10 = 37 + (this.f3124n * 2);
        }
        int iF = f(i10, bArr);
        this.f3125p = iF;
        int i11 = i10 + 2;
        if (iF != 0) {
            if (d(i11, bArr) != this.f3125p && de.d.f4630b >= 5) {
                dVar.getClass();
            }
            i11 += this.f3125p;
        }
        this.f3117f = i11 - 4;
    }

    public int c(byte[] bArr) {
        this.f3116e = 4;
        p(bArr);
        int iT = t(37, bArr);
        this.f3124n = iT;
        int i10 = iT / 2;
        bArr[36] = (byte) (i10 & 255);
        this.f3124n = i10;
        int i11 = iT + 39;
        int iO = o(i11, bArr);
        this.f3125p = iO;
        bArr[37 + iT] = (byte) (iO & 255);
        bArr[iT + 38] = (byte) ((iO >> 8) & 255);
        int i12 = (i11 + iO) - 4;
        this.f3117f = i12;
        r rVar = this.f3132y;
        if (rVar != null) {
            rVar.a(bArr, this.f3116e, i12, this, this.z);
        }
        return this.f3117f;
    }

    public abstract int d(int i10, byte[] bArr);

    public final void e(byte[] bArr) {
        this.f3114c = bArr[8];
        this.f3119h = g(9, bArr);
        this.f3115d = bArr[13];
        this.f3120i = f(14, bArr);
        this.f3121j = f(28, bArr);
        this.f3122k = f(30, bArr);
        this.l = f(32, bArr);
        this.f3123m = f(34, bArr);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof q) && ((q) obj).f3123m == this.f3123m;
    }

    public final int hashCode() {
        return this.f3123m;
    }

    public abstract int i(int i10, byte[] bArr);

    public final String j(byte[] bArr, int i10, int i11, boolean z) {
        int i12 = 0;
        try {
            if (!z) {
                while (bArr[i10 + i12] != 0) {
                    i12++;
                    if (i12 > i11) {
                        if (de.d.f4630b > 0) {
                            de.c.a(System.err, bArr, i10, i11 < 128 ? i11 + 8 : 128);
                        }
                        throw new RuntimeException("zero termination not found");
                    }
                }
                return new String(bArr, i10, i12, q0.f3144m0);
            }
            if ((i10 - this.f3116e) % 2 != 0) {
                i10++;
            }
            do {
                int i13 = i10 + i12;
                if (bArr[i13] == 0 && bArr[i13 + 1] == 0) {
                    return new String(bArr, i10, i12, "UTF-16LE");
                }
                i12 += 2;
            } while (i12 <= i11);
            if (de.d.f4630b > 0) {
                de.c.a(System.err, bArr, i10, i11 < 128 ? i11 + 8 : 128);
            }
            throw new RuntimeException("zero termination not found");
        } catch (UnsupportedEncodingException e7) {
            if (de.d.f4630b > 1) {
                e7.printStackTrace(A);
            }
            return null;
        }
    }

    public final String k(byte[] bArr, int i10, int i11, boolean z) {
        int i12 = 0;
        try {
            if (!z) {
                while (i10 < i11 && bArr[i10 + i12] != 0) {
                    if (i12 > 255) {
                        if (de.d.f4630b > 0) {
                            de.c.a(System.err, bArr, i10, 128);
                        }
                        throw new RuntimeException("zero termination not found");
                    }
                    i12++;
                }
                return new String(bArr, i10, i12, q0.f3144m0);
            }
            if ((i10 - this.f3116e) % 2 != 0) {
                i10++;
            }
            while (true) {
                int i13 = i10 + i12;
                int i14 = i13 + 1;
                if (i14 >= i11 || (bArr[i13] == 0 && bArr[i14] == 0)) {
                    break;
                }
                if (i12 > 255) {
                    if (de.d.f4630b > 0) {
                        de.c.a(System.err, bArr, i10, 128);
                    }
                    throw new RuntimeException("zero termination not found");
                }
                i12 += 2;
            }
            return new String(bArr, i10, i12, "UTF-16LE");
        } catch (UnsupportedEncodingException e7) {
            if (de.d.f4630b > 1) {
                e7.printStackTrace(A);
            }
            return null;
        }
    }

    public void m() {
        this.f3115d = (byte) 24;
        this.f3120i = 0;
        this.f3119h = 0;
        this.r = false;
        this.f3132y = null;
    }

    public final int n(int i10, String str) {
        int length = str.length() + 1;
        if (!this.f3126q) {
            return length;
        }
        int length2 = str.length() * 2;
        return i10 % 2 != 0 ? length2 + 3 : length2 + 2;
    }

    public abstract int o(int i10, byte[] bArr);

    public final void p(byte[] bArr) {
        byte[] bArr2 = B;
        System.arraycopy(bArr2, 0, bArr, 4, bArr2.length);
        bArr[8] = this.f3114c;
        bArr[13] = this.f3115d;
        q(this.f3120i, bArr, 14);
        q(this.f3121j, bArr, 28);
        q(this.f3122k, bArr, 30);
        q(this.l, bArr, 32);
        q(this.f3123m, bArr, 34);
    }

    public abstract int t(int i10, byte[] bArr);

    public String toString() {
        String str;
        byte b10 = this.f3114c;
        if (b10 == 0) {
            str = "SMB_COM_CREATE_DIRECTORY";
        } else if (b10 == 1) {
            str = "SMB_COM_DELETE_DIRECTORY";
        } else if (b10 == 4) {
            str = "SMB_COM_CLOSE";
        } else if (b10 == 16) {
            str = "SMB_COM_CHECK_DIRECTORY";
        } else if (b10 == 50) {
            str = "SMB_COM_TRANSACTION2";
        } else if (b10 == 52) {
            str = "SMB_COM_FIND_CLOSE2";
        } else if (b10 == 6) {
            str = "SMB_COM_DELETE";
        } else if (b10 == 7) {
            str = "SMB_COM_RENAME";
        } else if (b10 == 8) {
            str = "SMB_COM_QUERY_INFORMATION";
        } else if (b10 == 37) {
            str = "SMB_COM_TRANSACTION";
        } else if (b10 == 38) {
            str = "SMB_COM_TRANSACTION_SECONDARY";
        } else if (b10 == 42) {
            str = "SMB_COM_MOVE";
        } else if (b10 != 43) {
            switch (b10) {
                case -96:
                    str = "SMB_COM_NT_TRANSACT";
                    break;
                case -95:
                    str = "SMB_COM_NT_TRANSACT_SECONDARY";
                    break;
                case -94:
                    str = "SMB_COM_NT_CREATE_ANDX";
                    break;
                default:
                    switch (b10) {
                        case 45:
                            str = "SMB_COM_OPEN_ANDX";
                            break;
                        case 46:
                            str = "SMB_COM_READ_ANDX";
                            break;
                        case 47:
                            str = "SMB_COM_WRITE_ANDX";
                            break;
                        default:
                            switch (b10) {
                                case 113:
                                    str = "SMB_COM_TREE_DISCONNECT";
                                    break;
                                case 114:
                                    str = "SMB_COM_NEGOTIATE";
                                    break;
                                case 115:
                                    str = "SMB_COM_SESSION_SETUP_ANDX";
                                    break;
                                case 116:
                                    str = "SMB_COM_LOGOFF_ANDX";
                                    break;
                                case 117:
                                    str = "SMB_COM_TREE_CONNECT_ANDX";
                                    break;
                                default:
                                    str = "UNKNOWN";
                                    break;
                            }
                    }
            }
        } else {
            str = "SMB_COM_ECHO";
        }
        int i10 = this.f3119h;
        String strA = i10 == 0 ? "0" : r0.a(i10);
        StringBuilder sbD = da.b.d("command=", str, ",received=");
        sbD.append(this.r);
        sbD.append(",errorCode=");
        sbD.append(strA);
        sbD.append(",flags=0x");
        android.support.v4.media.session.a.y(this.f3115d & 255, 4, ",flags2=0x", sbD);
        android.support.v4.media.session.a.y(this.f3120i, 4, ",signSeq=", sbD);
        sbD.append(this.f3128t);
        sbD.append(",tid=");
        sbD.append(this.f3121j);
        sbD.append(",pid=");
        sbD.append(this.f3122k);
        sbD.append(",uid=");
        sbD.append(this.l);
        sbD.append(",mid=");
        sbD.append(this.f3123m);
        sbD.append(",wordCount=");
        sbD.append(this.f3124n);
        sbD.append(",byteCount=");
        sbD.append(this.f3125p);
        return new String(sbD.toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int u(String str, byte[] bArr, int i10, boolean z) throws UnsupportedEncodingException {
        int i11;
        int i12;
        int i13;
        int i14;
        try {
            try {
            } catch (UnsupportedEncodingException e7) {
                e = e7;
                i11 = i10;
            }
        } catch (UnsupportedEncodingException e10) {
            e = e10;
            i11 = z;
        }
        if (z == 0) {
            byte[] bytes = str.getBytes(q0.f3144m0);
            System.arraycopy(bytes, 0, bArr, i10, bytes.length);
            int length = bytes.length + i10;
            int i15 = length + 1;
            bArr[length] = 0;
            i12 = i15;
            i13 = i12;
            return i13 - i10;
        }
        if ((i10 - this.f3116e) % 2 != 0) {
            i14 = i10 + 1;
            bArr[i10] = 0;
        } else {
            i14 = i10;
        }
        System.arraycopy(str.getBytes("UTF-16LE"), 0, bArr, i14, str.length() * 2);
        int length2 = (str.length() * 2) + i14;
        int i16 = length2 + 1;
        bArr[length2] = 0;
        i13 = length2 + 2;
        try {
            bArr[i16] = 0;
        } catch (UnsupportedEncodingException e11) {
            i11 = i13;
            e = e11;
            i12 = i11;
            if (de.d.f4630b > 1) {
                e.printStackTrace(A);
                i12 = i11;
            }
            i13 = i12;
            return i13 - i10;
        }
        return i13 - i10;
    }
}
