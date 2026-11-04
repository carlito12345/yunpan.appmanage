package j1;

import java.io.IOException;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final int f9626a;

    /* renamed from: b, reason: collision with root package name */
    public final int f9627b;

    /* renamed from: c, reason: collision with root package name */
    public final long f9628c;

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f9629d;

    public c(int i10, int i11, byte[] bArr) {
        this(-1L, bArr, i10, i11);
    }

    public static c a(long j10, ByteOrder byteOrder) {
        long[] jArr = {j10};
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[g.D[4]]);
        byteBufferWrap.order(byteOrder);
        byteBufferWrap.putInt((int) jArr[0]);
        return new c(4, 1, byteBufferWrap.array());
    }

    public static c b(e eVar, ByteOrder byteOrder) {
        e[] eVarArr = {eVar};
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[g.D[5]]);
        byteBufferWrap.order(byteOrder);
        e eVar2 = eVarArr[0];
        byteBufferWrap.putInt((int) eVar2.f9634a);
        byteBufferWrap.putInt((int) eVar2.f9635b);
        return new c(5, 1, byteBufferWrap.array());
    }

    public static c c(int i10, ByteOrder byteOrder) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[g.D[3]]);
        byteBufferWrap.order(byteOrder);
        byteBufferWrap.putShort((short) new int[]{i10}[0]);
        return new c(3, 1, byteBufferWrap.array());
    }

    public final double d(ByteOrder byteOrder) throws Throwable {
        Object objG = g(byteOrder);
        if (objG == null) {
            throw new NumberFormatException("NULL can't be converted to a double value");
        }
        if (objG instanceof String) {
            return Double.parseDouble((String) objG);
        }
        if (objG instanceof long[]) {
            if (((long[]) objG).length == 1) {
                return r5[0];
            }
            throw new NumberFormatException("There are more than one component");
        }
        if (objG instanceof int[]) {
            if (((int[]) objG).length == 1) {
                return r5[0];
            }
            throw new NumberFormatException("There are more than one component");
        }
        if (objG instanceof double[]) {
            double[] dArr = (double[]) objG;
            if (dArr.length == 1) {
                return dArr[0];
            }
            throw new NumberFormatException("There are more than one component");
        }
        if (!(objG instanceof e[])) {
            throw new NumberFormatException("Couldn't find a double value");
        }
        e[] eVarArr = (e[]) objG;
        if (eVarArr.length != 1) {
            throw new NumberFormatException("There are more than one component");
        }
        e eVar = eVarArr[0];
        double d10 = eVar.f9634a;
        double d11 = eVar.f9635b;
        Double.isNaN(d10);
        Double.isNaN(d11);
        return d10 / d11;
    }

    public final int e(ByteOrder byteOrder) {
        Object objG = g(byteOrder);
        if (objG == null) {
            throw new NumberFormatException("NULL can't be converted to a integer value");
        }
        if (objG instanceof String) {
            return Integer.parseInt((String) objG);
        }
        if (objG instanceof long[]) {
            long[] jArr = (long[]) objG;
            if (jArr.length == 1) {
                return (int) jArr[0];
            }
            throw new NumberFormatException("There are more than one component");
        }
        if (!(objG instanceof int[])) {
            throw new NumberFormatException("Couldn't find a integer value");
        }
        int[] iArr = (int[]) objG;
        if (iArr.length == 1) {
            return iArr[0];
        }
        throw new NumberFormatException("There are more than one component");
    }

    public final String f(ByteOrder byteOrder) {
        Object objG = g(byteOrder);
        if (objG == null) {
            return null;
        }
        if (objG instanceof String) {
            return (String) objG;
        }
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        if (objG instanceof long[]) {
            long[] jArr = (long[]) objG;
            while (i10 < jArr.length) {
                sb2.append(jArr[i10]);
                i10++;
                if (i10 != jArr.length) {
                    sb2.append(",");
                }
            }
            return sb2.toString();
        }
        if (objG instanceof int[]) {
            int[] iArr = (int[]) objG;
            while (i10 < iArr.length) {
                sb2.append(iArr[i10]);
                i10++;
                if (i10 != iArr.length) {
                    sb2.append(",");
                }
            }
            return sb2.toString();
        }
        if (objG instanceof double[]) {
            double[] dArr = (double[]) objG;
            while (i10 < dArr.length) {
                sb2.append(dArr[i10]);
                i10++;
                if (i10 != dArr.length) {
                    sb2.append(",");
                }
            }
            return sb2.toString();
        }
        if (!(objG instanceof e[])) {
            return null;
        }
        e[] eVarArr = (e[]) objG;
        while (i10 < eVarArr.length) {
            sb2.append(eVarArr[i10].f9634a);
            sb2.append('/');
            sb2.append(eVarArr[i10].f9635b);
            i10++;
            if (i10 != eVarArr.length) {
                sb2.append(",");
            }
        }
        return sb2.toString();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:60|(2:62|(2:63|(2:65|(2:149|67)(1:68))(2:148|69)))|70|(2:72|(6:151|74|80|119|81|82)(3:75|(2:77|153)(2:78|152)|79))|150|80|119|81|82) */
    /* JADX WARN: Type inference failed for: r13v17, types: [int[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r13v18, types: [java.io.Serializable, long[]] */
    /* JADX WARN: Type inference failed for: r13v19, types: [j1.e[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r13v20, types: [int[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r13v21, types: [int[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r13v22, types: [j1.e[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r13v23, types: [double[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r13v24, types: [double[], java.io.Serializable] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Serializable g(ByteOrder byteOrder) throws Throwable {
        b bVar;
        byte b10;
        int length = 0;
        byte[] bArr = this.f9629d;
        b bVar2 = null;
        try {
            bVar = new b(bArr);
            try {
                bVar.f9623b = byteOrder;
                int i10 = this.f9626a;
                int i11 = this.f9627b;
                switch (i10) {
                    case 1:
                    case 6:
                        if (bArr.length != 1 || (b10 = bArr[0]) < 0 || b10 > 1) {
                            String str = new String(bArr, g.M);
                            try {
                                bVar.close();
                            } catch (IOException unused) {
                            }
                            return str;
                        }
                        String str2 = new String(new char[]{(char) (b10 + 48)});
                        try {
                            bVar.close();
                        } catch (IOException unused2) {
                        }
                        return str2;
                    case 2:
                    case 7:
                        if (i11 >= g.E.length) {
                            int i12 = 0;
                            while (true) {
                                byte[] bArr2 = g.E;
                                if (i12 >= bArr2.length) {
                                    length = bArr2.length;
                                } else if (bArr[i12] == bArr2[i12]) {
                                    i12++;
                                }
                            }
                        }
                        StringBuilder sb2 = new StringBuilder();
                        while (length < i11) {
                            byte b11 = bArr[length];
                            if (b11 == 0) {
                                String string = sb2.toString();
                                bVar.close();
                                return string;
                            }
                            if (b11 >= 32) {
                                sb2.append((char) b11);
                            } else {
                                sb2.append('?');
                            }
                            length++;
                        }
                        String string2 = sb2.toString();
                        bVar.close();
                        return string2;
                    case 3:
                        ?? r13 = new int[i11];
                        while (length < i11) {
                            r13[length] = bVar.readUnsignedShort();
                            length++;
                        }
                        try {
                            bVar.close();
                        } catch (IOException unused3) {
                        }
                        return r13;
                    case 4:
                        ?? r132 = new long[i11];
                        while (length < i11) {
                            r132[length] = bVar.readInt() & 4294967295L;
                            length++;
                        }
                        try {
                            bVar.close();
                        } catch (IOException unused4) {
                        }
                        return r132;
                    case 5:
                        ?? r133 = new e[i11];
                        while (length < i11) {
                            r133[length] = new e(bVar.readInt() & 4294967295L, bVar.readInt() & 4294967295L);
                            length++;
                        }
                        try {
                            bVar.close();
                        } catch (IOException unused5) {
                        }
                        return r133;
                    case 8:
                        ?? r134 = new int[i11];
                        while (length < i11) {
                            r134[length] = bVar.readShort();
                            length++;
                        }
                        try {
                            bVar.close();
                        } catch (IOException unused6) {
                        }
                        return r134;
                    case 9:
                        ?? r135 = new int[i11];
                        while (length < i11) {
                            r135[length] = bVar.readInt();
                            length++;
                        }
                        try {
                            bVar.close();
                        } catch (IOException unused7) {
                        }
                        return r135;
                    case 10:
                        ?? r136 = new e[i11];
                        while (length < i11) {
                            r136[length] = new e(bVar.readInt(), bVar.readInt());
                            length++;
                        }
                        try {
                            bVar.close();
                        } catch (IOException unused8) {
                        }
                        return r136;
                    case 11:
                        ?? r137 = new double[i11];
                        while (length < i11) {
                            r137[length] = bVar.readFloat();
                            length++;
                        }
                        try {
                            bVar.close();
                        } catch (IOException unused9) {
                        }
                        return r137;
                    case 12:
                        ?? r138 = new double[i11];
                        while (length < i11) {
                            r138[length] = bVar.readDouble();
                            length++;
                        }
                        try {
                            bVar.close();
                        } catch (IOException unused10) {
                        }
                        return r138;
                    default:
                        try {
                            bVar.close();
                        } catch (IOException unused11) {
                        }
                        return null;
                }
            } catch (IOException unused12) {
                if (bVar != null) {
                    try {
                        bVar.close();
                    } catch (IOException unused13) {
                    }
                }
                return null;
            } catch (Throwable th2) {
                th = th2;
                bVar2 = bVar;
                if (bVar2 != null) {
                    try {
                        bVar2.close();
                    } catch (IOException unused14) {
                    }
                }
                throw th;
            }
        } catch (IOException unused15) {
            bVar = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("(");
        sb2.append(g.C[this.f9626a]);
        sb2.append(", data length:");
        return android.support.v4.media.session.a.s(sb2, this.f9629d.length, ")");
    }

    public c(long j10, byte[] bArr, int i10, int i11) {
        this.f9626a = i10;
        this.f9627b = i11;
        this.f9628c = j10;
        this.f9629d = bArr;
    }
}
