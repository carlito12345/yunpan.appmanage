package com.android.apksig.apk;

import android.support.v4.media.session.a;
import com.android.apksig.internal.util.Pair;
import com.android.apksig.internal.zip.ZipUtils;
import com.android.apksig.util.DataSource;
import com.android.apksig.zip.ZipFormatException;
import com.android.apksig.zip.ZipSections;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import ta.q;

/* loaded from: classes.dex */
public class ApkUtilsLite {
    private static final long APK_SIG_BLOCK_MAGIC_HI = 3617552046287187010L;
    private static final long APK_SIG_BLOCK_MAGIC_LO = 2334950737559900225L;
    private static final int APK_SIG_BLOCK_MIN_SIZE = 32;

    public static class ApkSigningBlock {
        private final DataSource mContents;
        private final long mStartOffsetInApk;

        public ApkSigningBlock(long j10, DataSource dataSource) {
            this.mStartOffsetInApk = j10;
            this.mContents = dataSource;
        }

        public DataSource getContents() {
            return this.mContents;
        }

        public long getStartOffset() {
            return this.mStartOffsetInApk;
        }
    }

    private ApkUtilsLite() {
    }

    public static byte[] computeSha256DigestBytes(byte[] bArr) throws NoSuchAlgorithmException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException e7) {
            throw new IllegalStateException("SHA-256 is not found", e7);
        }
    }

    public static ApkSigningBlock findApkSigningBlock(DataSource dataSource, ZipSections zipSections) {
        long zipCentralDirectoryOffset = zipSections.getZipCentralDirectoryOffset();
        long zipCentralDirectorySizeBytes = zipSections.getZipCentralDirectorySizeBytes() + zipCentralDirectoryOffset;
        long zipEndOfCentralDirectoryOffset = zipSections.getZipEndOfCentralDirectoryOffset();
        if (zipCentralDirectorySizeBytes != zipEndOfCentralDirectoryOffset) {
            StringBuilder sbW = a.w(zipCentralDirectorySizeBytes, "ZIP Central Directory is not immediately followed by End of Central Directory. CD end: ", ", EoCD start: ");
            sbW.append(zipEndOfCentralDirectoryOffset);
            throw new ApkSigningBlockNotFoundException(sbW.toString());
        }
        if (zipCentralDirectoryOffset < 32) {
            throw new ApkSigningBlockNotFoundException(q.j(zipCentralDirectoryOffset, "APK too small for APK Signing Block. ZIP Central Directory offset: "));
        }
        ByteBuffer byteBuffer = dataSource.getByteBuffer(zipCentralDirectoryOffset - 24, 24);
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        byteBuffer.order(byteOrder);
        if (byteBuffer.getLong(8) != APK_SIG_BLOCK_MAGIC_LO || byteBuffer.getLong(16) != APK_SIG_BLOCK_MAGIC_HI) {
            throw new ApkSigningBlockNotFoundException("No APK Signing Block before ZIP Central Directory");
        }
        long j10 = byteBuffer.getLong(0);
        if (j10 < byteBuffer.capacity() || j10 > 2147483639) {
            throw new ApkSigningBlockNotFoundException(q.j(j10, "APK Signing Block size out of range: "));
        }
        long j11 = (int) (8 + j10);
        long j12 = zipCentralDirectoryOffset - j11;
        if (j12 < 0) {
            throw new ApkSigningBlockNotFoundException(q.j(j12, "APK Signing Block offset out of range: "));
        }
        ByteBuffer byteBuffer2 = dataSource.getByteBuffer(j12, 8);
        byteBuffer2.order(byteOrder);
        long j13 = byteBuffer2.getLong(0);
        if (j13 == j10) {
            return new ApkSigningBlock(j12, dataSource.slice(j12, j11));
        }
        StringBuilder sbW2 = a.w(j13, "APK Signing Block sizes in header and footer do not match: ", " vs ");
        sbW2.append(j10);
        throw new ApkSigningBlockNotFoundException(sbW2.toString());
    }

    public static ZipSections findZipSections(DataSource dataSource) throws ZipFormatException {
        Pair<ByteBuffer, Long> pairFindZipEndOfCentralDirectoryRecord = ZipUtils.findZipEndOfCentralDirectoryRecord(dataSource);
        if (pairFindZipEndOfCentralDirectoryRecord == null) {
            throw new ZipFormatException("ZIP End of Central Directory record not found");
        }
        ByteBuffer first = pairFindZipEndOfCentralDirectoryRecord.getFirst();
        long jLongValue = pairFindZipEndOfCentralDirectoryRecord.getSecond().longValue();
        first.order(ByteOrder.LITTLE_ENDIAN);
        long zipEocdCentralDirectoryOffset = ZipUtils.getZipEocdCentralDirectoryOffset(first);
        if (zipEocdCentralDirectoryOffset > jLongValue) {
            StringBuilder sbW = a.w(zipEocdCentralDirectoryOffset, "ZIP Central Directory start offset out of range: ", ". ZIP End of Central Directory offset: ");
            sbW.append(jLongValue);
            throw new ZipFormatException(sbW.toString());
        }
        long zipEocdCentralDirectorySizeBytes = ZipUtils.getZipEocdCentralDirectorySizeBytes(first);
        long j10 = zipEocdCentralDirectoryOffset + zipEocdCentralDirectorySizeBytes;
        if (j10 <= jLongValue) {
            return new ZipSections(zipEocdCentralDirectoryOffset, zipEocdCentralDirectorySizeBytes, ZipUtils.getZipEocdCentralDirectoryTotalRecordCount(first), jLongValue, first);
        }
        StringBuilder sbW2 = a.w(j10, "ZIP Central Directory overlaps with End of Central Directory. CD end: ", ", EoCD start: ");
        sbW2.append(jLongValue);
        throw new ZipFormatException(sbW2.toString());
    }
}
