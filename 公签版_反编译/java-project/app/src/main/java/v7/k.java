package v7;

import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public final class k extends FilterOutputStream implements DataOutput {
    public k(i iVar) {
        super(new DataOutputStream(iVar));
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        ((FilterOutputStream) this).out.close();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.DataOutput
    public final void write(byte[] bArr, int i10, int i11) throws IOException {
        ((FilterOutputStream) this).out.write(bArr, i10, i11);
    }

    @Override // java.io.DataOutput
    public final void writeBoolean(boolean z) throws IOException {
        ((DataOutputStream) ((FilterOutputStream) this).out).writeBoolean(z);
    }

    @Override // java.io.DataOutput
    public final void writeByte(int i10) throws IOException {
        ((DataOutputStream) ((FilterOutputStream) this).out).writeByte(i10);
    }

    @Override // java.io.DataOutput
    public final void writeBytes(String str) throws IOException {
        ((DataOutputStream) ((FilterOutputStream) this).out).writeBytes(str);
    }

    @Override // java.io.DataOutput
    public final void writeChar(int i10) throws IOException {
        writeShort(i10);
    }

    @Override // java.io.DataOutput
    public final void writeChars(String str) throws IOException {
        for (int i10 = 0; i10 < str.length(); i10++) {
            writeShort(str.charAt(i10));
        }
    }

    @Override // java.io.DataOutput
    public final void writeDouble(double d10) throws IOException {
        writeLong(Double.doubleToLongBits(d10));
    }

    @Override // java.io.DataOutput
    public final void writeFloat(float f10) throws IOException {
        writeInt(Float.floatToIntBits(f10));
    }

    @Override // java.io.DataOutput
    public final void writeInt(int i10) throws IOException {
        ((FilterOutputStream) this).out.write(i10 & 255);
        ((FilterOutputStream) this).out.write((i10 >> 8) & 255);
        ((FilterOutputStream) this).out.write((i10 >> 16) & 255);
        ((FilterOutputStream) this).out.write((i10 >> 24) & 255);
    }

    @Override // java.io.DataOutput
    public final void writeLong(long j10) throws IOException {
        long jReverseBytes = Long.reverseBytes(j10);
        byte[] bArr = new byte[8];
        for (int i10 = 7; i10 >= 0; i10--) {
            bArr[i10] = (byte) (255 & jReverseBytes);
            jReverseBytes >>= 8;
        }
        write(bArr, 0, 8);
    }

    @Override // java.io.DataOutput
    public final void writeShort(int i10) throws IOException {
        ((FilterOutputStream) this).out.write(i10 & 255);
        ((FilterOutputStream) this).out.write((i10 >> 8) & 255);
    }

    @Override // java.io.DataOutput
    public final void writeUTF(String str) throws IOException {
        ((DataOutputStream) ((FilterOutputStream) this).out).writeUTF(str);
    }
}
