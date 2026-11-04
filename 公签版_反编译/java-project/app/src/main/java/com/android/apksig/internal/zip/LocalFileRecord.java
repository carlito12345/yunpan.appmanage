package com.android.apksig.internal.zip;

import android.support.v4.media.session.a;
import com.android.apksig.internal.util.ByteBufferSink;
import com.android.apksig.util.DataSink;
import com.android.apksig.util.DataSource;
import com.android.apksig.zip.ZipFormatException;
import da.b;
import j$.nio.charset.StandardCharsets;
import java.io.Closeable;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import ta.q;

/* loaded from: classes.dex */
public class LocalFileRecord {
    private static final int COMPRESSED_SIZE_OFFSET = 18;
    private static final int CRC32_OFFSET = 14;
    private static final int DATA_DESCRIPTOR_SIGNATURE = 134695760;
    private static final int DATA_DESCRIPTOR_SIZE_BYTES_WITHOUT_SIGNATURE = 12;
    private static final ByteBuffer EMPTY_BYTE_BUFFER = ByteBuffer.allocate(0);
    private static final int EXTRA_LENGTH_OFFSET = 28;
    private static final int GP_FLAGS_OFFSET = 6;
    private static final int HEADER_SIZE_BYTES = 30;
    private static final int NAME_LENGTH_OFFSET = 26;
    private static final int NAME_OFFSET = 30;
    private static final int RECORD_SIGNATURE = 67324752;
    private static final int UNCOMPRESSED_SIZE_OFFSET = 22;
    private final boolean mDataCompressed;
    private final long mDataSize;
    private final int mDataStartOffset;
    private final ByteBuffer mExtra;
    private final String mName;
    private final int mNameSizeBytes;
    private final long mSize;
    private final long mStartOffsetInArchive;
    private final long mUncompressedDataSize;

    public static class InflateSinkAdapter implements DataSink, Closeable {
        private boolean mClosed;
        private final DataSink mDelegate;
        private Inflater mInflater;
        private byte[] mInputBuffer;
        private byte[] mOutputBuffer;
        private long mOutputByteCount;

        private void checkNotClosed() {
            if (this.mClosed) {
                throw new IllegalStateException("Closed");
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.mClosed = true;
            this.mInputBuffer = null;
            this.mOutputBuffer = null;
            Inflater inflater = this.mInflater;
            if (inflater != null) {
                inflater.end();
                this.mInflater = null;
            }
        }

        @Override // com.android.apksig.util.DataSink
        public void consume(byte[] bArr, int i10, int i11) throws DataFormatException, IOException {
            checkNotClosed();
            this.mInflater.setInput(bArr, i10, i11);
            if (this.mOutputBuffer == null) {
                this.mOutputBuffer = new byte[65536];
            }
            while (!this.mInflater.finished()) {
                try {
                    int iInflate = this.mInflater.inflate(this.mOutputBuffer);
                    if (iInflate == 0) {
                        return;
                    }
                    this.mDelegate.consume(this.mOutputBuffer, 0, iInflate);
                    this.mOutputByteCount += iInflate;
                } catch (DataFormatException e7) {
                    throw new IOException("Failed to inflate data", e7);
                }
            }
        }

        public long getOutputByteCount() {
            return this.mOutputByteCount;
        }

        private InflateSinkAdapter(DataSink dataSink) {
            this.mInflater = new Inflater(true);
            this.mDelegate = dataSink;
        }

        @Override // com.android.apksig.util.DataSink
        public void consume(ByteBuffer byteBuffer) throws DataFormatException, IOException {
            checkNotClosed();
            if (byteBuffer.hasArray()) {
                consume(byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), byteBuffer.remaining());
                byteBuffer.position(byteBuffer.limit());
                return;
            }
            if (this.mInputBuffer == null) {
                this.mInputBuffer = new byte[65536];
            }
            while (byteBuffer.hasRemaining()) {
                int iMin = Math.min(byteBuffer.remaining(), this.mInputBuffer.length);
                byteBuffer.get(this.mInputBuffer, 0, iMin);
                consume(this.mInputBuffer, 0, iMin);
            }
        }
    }

    private LocalFileRecord(String str, int i10, ByteBuffer byteBuffer, long j10, long j11, int i11, long j12, boolean z, long j13) {
        this.mName = str;
        this.mNameSizeBytes = i10;
        this.mExtra = byteBuffer;
        this.mStartOffsetInArchive = j10;
        this.mSize = j11;
        this.mDataStartOffset = i11;
        this.mDataSize = j12;
        this.mDataCompressed = z;
        this.mUncompressedDataSize = j13;
    }

    public static LocalFileRecord getRecord(DataSource dataSource, CentralDirectoryRecord centralDirectoryRecord, long j10) {
        return getRecord(dataSource, centralDirectoryRecord, j10, true, true);
    }

    public static byte[] getUncompressedData(DataSource dataSource, CentralDirectoryRecord centralDirectoryRecord, long j10) {
        if (centralDirectoryRecord.getUncompressedSize() <= 2147483647L) {
            byte[] bArr = new byte[(int) centralDirectoryRecord.getUncompressedSize()];
            outputUncompressedData(dataSource, centralDirectoryRecord, j10, new ByteBufferSink(ByteBuffer.wrap(bArr)));
            return bArr;
        }
        throw new IOException(centralDirectoryRecord.getName() + " too large: " + centralDirectoryRecord.getUncompressedSize());
    }

    public static long outputRecordWithDeflateCompressedData(String str, int i10, int i11, byte[] bArr, long j10, long j11, DataSink dataSink) {
        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bytes.length + 30);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.putInt(RECORD_SIGNATURE);
        ZipUtils.putUnsignedInt16(byteBufferAllocate, 20);
        byteBufferAllocate.putShort(ZipUtils.GP_FLAG_EFS);
        byteBufferAllocate.putShort((short) 8);
        ZipUtils.putUnsignedInt16(byteBufferAllocate, i10);
        ZipUtils.putUnsignedInt16(byteBufferAllocate, i11);
        ZipUtils.putUnsignedInt32(byteBufferAllocate, j10);
        ZipUtils.putUnsignedInt32(byteBufferAllocate, bArr.length);
        ZipUtils.putUnsignedInt32(byteBufferAllocate, j11);
        ZipUtils.putUnsignedInt16(byteBufferAllocate, bytes.length);
        ZipUtils.putUnsignedInt16(byteBufferAllocate, 0);
        byteBufferAllocate.put(bytes);
        if (byteBufferAllocate.hasRemaining()) {
            throw new RuntimeException("pos: " + byteBufferAllocate.position() + ", limit: " + byteBufferAllocate.limit());
        }
        byteBufferAllocate.flip();
        long jRemaining = byteBufferAllocate.remaining();
        dataSink.consume(byteBufferAllocate);
        long length = jRemaining + bArr.length;
        dataSink.consume(bArr, 0, bArr.length);
        return length;
    }

    public int getDataStartOffsetInRecord() {
        return this.mDataStartOffset;
    }

    public ByteBuffer getExtra() {
        return this.mExtra.capacity() > 0 ? this.mExtra.slice() : this.mExtra;
    }

    public int getExtraFieldStartOffsetInsideRecord() {
        return this.mNameSizeBytes + 30;
    }

    public String getName() {
        return this.mName;
    }

    public long getSize() {
        return this.mSize;
    }

    public long getStartOffsetInArchive() {
        return this.mStartOffsetInArchive;
    }

    public boolean isDataCompressed() {
        return this.mDataCompressed;
    }

    public long outputRecord(DataSource dataSource, DataSink dataSink) {
        long size = getSize();
        dataSource.feed(getStartOffsetInArchive(), size, dataSink);
        return size;
    }

    public long outputRecordWithModifiedExtra(DataSource dataSource, ByteBuffer byteBuffer, DataSink dataSink) {
        long startOffsetInArchive = getStartOffsetInArchive();
        int extraFieldStartOffsetInsideRecord = getExtraFieldStartOffsetInsideRecord();
        int iRemaining = byteBuffer.remaining();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(extraFieldStartOffsetInsideRecord + iRemaining);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        dataSource.copyTo(startOffsetInArchive, extraFieldStartOffsetInsideRecord, byteBufferAllocate);
        byteBufferAllocate.put(byteBuffer.slice());
        byteBufferAllocate.flip();
        ZipUtils.setUnsignedInt16(byteBufferAllocate, 28, iRemaining);
        long jRemaining = byteBufferAllocate.remaining();
        dataSink.consume(byteBufferAllocate);
        long size = getSize();
        int i10 = this.mDataStartOffset;
        long j10 = size - i10;
        dataSource.feed(startOffsetInArchive + i10, j10, dataSink);
        return jRemaining + j10;
    }

    public void outputUncompressedData(DataSource dataSource, DataSink dataSink) throws IllegalAccessException, NoSuchMethodException, SecurityException, IOException, IllegalArgumentException, ZipFormatException, InvocationTargetException {
        long j10 = this.mStartOffsetInArchive + this.mDataStartOffset;
        try {
            if (!this.mDataCompressed) {
                dataSource.feed(j10, this.mDataSize, dataSink);
                return;
            }
            try {
                InflateSinkAdapter inflateSinkAdapter = new InflateSinkAdapter(dataSink);
                try {
                    dataSource.feed(j10, this.mDataSize, inflateSinkAdapter);
                    long outputByteCount = inflateSinkAdapter.getOutputByteCount();
                    if (outputByteCount == this.mUncompressedDataSize) {
                        inflateSinkAdapter.close();
                        return;
                    }
                    throw new ZipFormatException("Unexpected size of uncompressed data of " + this.mName + ". Expected: " + this.mUncompressedDataSize + " bytes, actual: " + outputByteCount + " bytes");
                } finally {
                }
            } catch (IOException e7) {
                if (!(e7.getCause() instanceof DataFormatException)) {
                    throw e7;
                }
                throw new ZipFormatException("Data of entry " + this.mName + " malformed", e7);
            }
        } catch (IOException e10) {
            StringBuilder sb2 = new StringBuilder("Failed to read data of ");
            sb2.append(this.mDataCompressed ? "compressed" : "uncompressed");
            sb2.append(" entry ");
            sb2.append(this.mName);
            throw new IOException(sb2.toString(), e10);
        }
    }

    private static LocalFileRecord getRecord(DataSource dataSource, CentralDirectoryRecord centralDirectoryRecord, long j10, boolean z, boolean z4) throws IOException, ZipFormatException {
        long j11;
        DataSource dataSource2;
        String name = centralDirectoryRecord.getName();
        int nameSizeBytes = centralDirectoryRecord.getNameSizeBytes();
        int i10 = nameSizeBytes + 30;
        long localFileHeaderOffset = centralDirectoryRecord.getLocalFileHeaderOffset();
        long j12 = i10 + localFileHeaderOffset;
        if (j12 > j10) {
            throw new ZipFormatException("Local File Header of " + name + " extends beyond start of Central Directory. LFH end: " + j12 + ", CD start: " + j10);
        }
        try {
            ByteBuffer byteBuffer = dataSource.getByteBuffer(localFileHeaderOffset, i10);
            ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
            byteBuffer.order(byteOrder);
            int i11 = byteBuffer.getInt();
            if (i11 != RECORD_SIGNATURE) {
                StringBuilder sbD = b.d("Not a Local File Header record for entry ", name, ". Signature: 0x");
                sbD.append(Long.toHexString(i11 & 4294967295L));
                throw new ZipFormatException(sbD.toString());
            }
            int i12 = byteBuffer.getShort(6) & 8;
            boolean z10 = i12 != 0;
            boolean z11 = (centralDirectoryRecord.getGpFlags() & 8) != 0;
            if (z10 != z11) {
                throw new ZipFormatException("Data Descriptor presence mismatch between Local File Header and Central Directory for entry " + name + ". LFH: " + z10 + ", CD: " + z11);
            }
            boolean z12 = z10;
            long crc32 = centralDirectoryRecord.getCrc32();
            long compressedSize = centralDirectoryRecord.getCompressedSize();
            long uncompressedSize = centralDirectoryRecord.getUncompressedSize();
            if (z12) {
                j11 = localFileHeaderOffset;
            } else {
                j11 = localFileHeaderOffset;
                long unsignedInt32 = ZipUtils.getUnsignedInt32(byteBuffer, 14);
                if (unsignedInt32 != crc32) {
                    throw new ZipFormatException("CRC-32 mismatch between Local File Header and Central Directory for entry " + name + ". LFH: " + unsignedInt32 + ", CD: " + crc32);
                }
                long unsignedInt322 = ZipUtils.getUnsignedInt32(byteBuffer, 18);
                if (unsignedInt322 != compressedSize) {
                    throw new ZipFormatException("Compressed size mismatch between Local File Header and Central Directory for entry " + name + ". LFH: " + unsignedInt322 + ", CD: " + compressedSize);
                }
                long unsignedInt323 = ZipUtils.getUnsignedInt32(byteBuffer, 22);
                if (unsignedInt323 != uncompressedSize) {
                    throw new ZipFormatException("Uncompressed size mismatch between Local File Header and Central Directory for entry " + name + ". LFH: " + unsignedInt323 + ", CD: " + uncompressedSize);
                }
            }
            int unsignedInt16 = ZipUtils.getUnsignedInt16(byteBuffer, 26);
            if (unsignedInt16 > nameSizeBytes) {
                StringBuilder sb2 = new StringBuilder("Name mismatch between Local File Header and Central Directory for entry");
                sb2.append(name);
                sb2.append(". LFH: ");
                sb2.append(unsignedInt16);
                sb2.append(" bytes, CD: ");
                throw new ZipFormatException(a.s(sb2, nameSizeBytes, " bytes"));
            }
            String name2 = CentralDirectoryRecord.getName(byteBuffer, 30, unsignedInt16);
            if (!name.equals(name2)) {
                throw new ZipFormatException(q.l("Name mismatch between Local File Header and Central Directory. LFH: \"", name2, "\", CD: \"", name, "\""));
            }
            int unsignedInt162 = ZipUtils.getUnsignedInt16(byteBuffer, 28);
            long j13 = j11 + 30 + unsignedInt16;
            long j14 = unsignedInt162 + j13;
            boolean z13 = centralDirectoryRecord.getCompressionMethod() != 0;
            long j15 = z13 ? compressedSize : uncompressedSize;
            long j16 = j14 + j15;
            if (j16 > j10) {
                throw new ZipFormatException("Local File Header data of " + name + " overlaps with Central Directory. LFH data start: " + j14 + ", LFH data end: " + j16 + ", CD start: " + j10);
            }
            ByteBuffer byteBuffer2 = EMPTY_BYTE_BUFFER;
            if (!z || unsignedInt162 <= 0) {
                dataSource2 = dataSource;
            } else {
                dataSource2 = dataSource;
                byteBuffer2 = dataSource2.getByteBuffer(j13, unsignedInt162);
            }
            if (z4 && i12 != 0) {
                long j17 = 12 + j16;
                if (j17 > j10) {
                    throw new ZipFormatException("Data Descriptor of " + name + " overlaps with Central Directory. Data Descriptor end: " + j16 + ", CD start: " + j10);
                }
                ByteBuffer byteBuffer3 = dataSource2.getByteBuffer(j16, 4);
                byteBuffer3.order(byteOrder);
                if (byteBuffer3.getInt() == DATA_DESCRIPTOR_SIGNATURE) {
                    j17 = 16 + j16;
                    if (j17 > j10) {
                        throw new ZipFormatException("Data Descriptor of " + name + " overlaps with Central Directory. Data Descriptor end: " + j16 + ", CD start: " + j10);
                    }
                }
                j16 = j17;
            }
            return new LocalFileRecord(name, nameSizeBytes, byteBuffer2, j11, j16 - j11, unsignedInt16 + 30 + unsignedInt162, j15, z13, uncompressedSize);
        } catch (IOException e7) {
            throw new IOException(b.c("Failed to read Local File Header of ", name), e7);
        }
    }

    public static void outputUncompressedData(DataSource dataSource, CentralDirectoryRecord centralDirectoryRecord, long j10, DataSink dataSink) throws IllegalAccessException, NoSuchMethodException, SecurityException, IOException, IllegalArgumentException, ZipFormatException, InvocationTargetException {
        getRecord(dataSource, centralDirectoryRecord, j10, false, false).outputUncompressedData(dataSource, dataSink);
    }
}
