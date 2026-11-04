package com.android.apksig;

import com.android.apksig.ApkSignerEngine;
import com.android.apksig.DefaultApkSignerEngine;
import com.android.apksig.Hints;
import com.android.apksig.apk.ApkFormatException;
import com.android.apksig.apk.ApkSigningBlockNotFoundException;
import com.android.apksig.apk.ApkUtils;
import com.android.apksig.apk.MinSdkVersionException;
import com.android.apksig.internal.util.ByteBufferDataSource;
import com.android.apksig.internal.zip.CentralDirectoryRecord;
import com.android.apksig.internal.zip.EocdRecord;
import com.android.apksig.internal.zip.LocalFileRecord;
import com.android.apksig.internal.zip.ZipUtils;
import com.android.apksig.util.DataSink;
import com.android.apksig.util.DataSinks;
import com.android.apksig.util.DataSource;
import com.android.apksig.util.DataSources;
import com.android.apksig.util.ReadableDataSink;
import com.android.apksig.zip.ZipFormatException;
import da.b;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.lang.reflect.InvocationTargetException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.PrivateKey;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import ta.q;

/* loaded from: classes.dex */
public class ApkSigner {
    private static final short ALIGNMENT_ZIP_EXTRA_DATA_FIELD_HEADER_ID = -9931;
    private static final short ALIGNMENT_ZIP_EXTRA_DATA_FIELD_MIN_SIZE_BYTES = 6;
    private static final short ANDROID_COMMON_PAGE_ALIGNMENT_BYTES = 4096;
    private static final short ANDROID_FILE_ALIGNMENT_BYTES = 4096;
    private static final String ANDROID_MANIFEST_ZIP_ENTRY_NAME = "AndroidManifest.xml";
    private final boolean mAlignFileSize;
    private final String mCreatedBy;
    private final boolean mDebuggableApkPermitted;
    private final boolean mForceSourceStampOverwrite;
    private final DataSource mInputApkDataSource;
    private final File mInputApkFile;
    private final Integer mMinSdkVersion;
    private final boolean mOtherSignersSignaturesPreserved;
    private final DataSink mOutputApkDataSink;
    private final DataSource mOutputApkDataSource;
    private final File mOutputApkFile;
    private final File mOutputV4File;
    private final int mRotationMinSdkVersion;
    private final boolean mRotationTargetsDevRelease;
    private final List<SignerConfig> mSignerConfigs;
    private final ApkSignerEngine mSignerEngine;
    private final SigningCertificateLineage mSigningCertificateLineage;
    private final SignerConfig mSourceStampSignerConfig;
    private final SigningCertificateLineage mSourceStampSigningCertificateLineage;
    private final boolean mV1SigningEnabled;
    private final boolean mV2SigningEnabled;
    private final boolean mV3SigningEnabled;
    private final boolean mV4ErrorReportingEnabled;
    private final boolean mV4SigningEnabled;
    private final boolean mVerityEnabled;

    /* renamed from: com.android.apksig.ApkSigner$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$android$apksig$ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

        static {
            int[] iArr = new int[ApkSignerEngine.InputJarEntryInstructions.OutputPolicy.values().length];
            $SwitchMap$com$android$apksig$ApkSignerEngine$InputJarEntryInstructions$OutputPolicy = iArr;
            try {
                iArr[ApkSignerEngine.InputJarEntryInstructions.OutputPolicy.OUTPUT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$apksig$ApkSignerEngine$InputJarEntryInstructions$OutputPolicy[ApkSignerEngine.InputJarEntryInstructions.OutputPolicy.OUTPUT_BY_ENGINE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$apksig$ApkSignerEngine$InputJarEntryInstructions$OutputPolicy[ApkSignerEngine.InputJarEntryInstructions.OutputPolicy.SKIP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static class OutputSizeAndDataOffset {
        public long dataOffsetBytes;
        public long outputBytes;

        public OutputSizeAndDataOffset(long j10, long j11) {
            this.outputBytes = j10;
            this.dataOffsetBytes = j11;
        }
    }

    public static class SignerConfig {
        private final List<X509Certificate> mCertificates;
        private boolean mDeterministicDsaSigning;
        private final String mName;
        private final PrivateKey mPrivateKey;

        public static class Builder {
            private final List<X509Certificate> mCertificates;
            private final boolean mDeterministicDsaSigning;
            private final String mName;
            private final PrivateKey mPrivateKey;

            public Builder(String str, PrivateKey privateKey, List<X509Certificate> list) {
                this(str, privateKey, list, false);
            }

            public SignerConfig build() {
                return new SignerConfig(this.mName, this.mPrivateKey, this.mCertificates, this.mDeterministicDsaSigning, null);
            }

            public Builder(String str, PrivateKey privateKey, List<X509Certificate> list, boolean z) {
                if (str.isEmpty()) {
                    throw new IllegalArgumentException("Empty name");
                }
                this.mName = str;
                this.mPrivateKey = privateKey;
                this.mCertificates = new ArrayList(list);
                this.mDeterministicDsaSigning = z;
            }
        }

        public /* synthetic */ SignerConfig(String str, PrivateKey privateKey, List list, boolean z, AnonymousClass1 anonymousClass1) {
            this(str, privateKey, list, z);
        }

        public List<X509Certificate> getCertificates() {
            return this.mCertificates;
        }

        public boolean getDeterministicDsaSigning() {
            return this.mDeterministicDsaSigning;
        }

        public String getName() {
            return this.mName;
        }

        public PrivateKey getPrivateKey() {
            return this.mPrivateKey;
        }

        private SignerConfig(String str, PrivateKey privateKey, List<X509Certificate> list, boolean z) {
            this.mName = str;
            this.mPrivateKey = privateKey;
            this.mCertificates = Collections.unmodifiableList(new ArrayList(list));
            this.mDeterministicDsaSigning = z;
        }
    }

    public /* synthetic */ ApkSigner(List list, SignerConfig signerConfig, SigningCertificateLineage signingCertificateLineage, boolean z, Integer num, int i10, boolean z4, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16, boolean z17, boolean z18, String str, ApkSignerEngine apkSignerEngine, File file, DataSource dataSource, File file2, DataSink dataSink, DataSource dataSource2, File file3, SigningCertificateLineage signingCertificateLineage2, AnonymousClass1 anonymousClass1) {
        this(list, signerConfig, signingCertificateLineage, z, num, i10, z4, z10, z11, z12, z13, z14, z15, z16, z17, z18, str, apkSignerEngine, file, dataSource, file2, dataSink, dataSource2, file3, signingCertificateLineage2);
    }

    private static ByteBuffer createExtraFieldToAlignData(ByteBuffer byteBuffer, long j10, int i10) {
        if (i10 <= 1) {
            return byteBuffer;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(byteBuffer.remaining() + 5 + i10);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        while (byteBuffer.remaining() >= 4) {
            short s8 = byteBuffer.getShort();
            int unsignedInt16 = ZipUtils.getUnsignedInt16(byteBuffer);
            if (unsignedInt16 > byteBuffer.remaining()) {
                break;
            }
            if ((s8 == 0 && unsignedInt16 == 0) || s8 == -9931) {
                byteBuffer.position(byteBuffer.position() + unsignedInt16);
            } else {
                byteBuffer.position(byteBuffer.position() - 4);
                int iLimit = byteBuffer.limit();
                byteBuffer.limit(byteBuffer.position() + 4 + unsignedInt16);
                byteBufferAllocate.put(byteBuffer);
                byteBuffer.limit(iLimit);
            }
        }
        int iPosition = (i10 - ((int) (((j10 + byteBufferAllocate.position()) + 6) % i10))) % i10;
        byteBufferAllocate.putShort(ALIGNMENT_ZIP_EXTRA_DATA_FIELD_HEADER_ID);
        ZipUtils.putUnsignedInt16(byteBufferAllocate, iPosition + 2);
        ZipUtils.putUnsignedInt16(byteBufferAllocate, i10);
        byteBufferAllocate.position(byteBufferAllocate.position() + iPosition);
        byteBufferAllocate.flip();
        return byteBufferAllocate;
    }

    private static List<Hints.PatternWithRange> extractPinPatterns(List<CentralDirectoryRecord> list, DataSource dataSource) throws ApkFormatException {
        CentralDirectoryRecord centralDirectoryRecordFindCdRecord = findCdRecord(list, Hints.PIN_HINT_ASSET_ZIP_ENTRY_NAME);
        if (centralDirectoryRecordFindCdRecord == null) {
            return null;
        }
        new ArrayList();
        try {
            return Hints.parsePinPatterns(LocalFileRecord.getUncompressedData(dataSource, centralDirectoryRecordFindCdRecord, dataSource.size()));
        } catch (ZipFormatException unused) {
            throw new ApkFormatException("Bad " + centralDirectoryRecordFindCdRecord);
        }
    }

    private static CentralDirectoryRecord findCdRecord(List<CentralDirectoryRecord> list, String str) {
        for (CentralDirectoryRecord centralDirectoryRecord : list) {
            if (str.equals(centralDirectoryRecord.getName())) {
                return centralDirectoryRecord;
            }
        }
        return null;
    }

    private static void fulfillInspectInputJarEntryRequest(DataSource dataSource, LocalFileRecord localFileRecord, ApkSignerEngine.InspectJarEntryRequest inspectJarEntryRequest) throws IllegalAccessException, NoSuchMethodException, SecurityException, IOException, ApkFormatException, IllegalArgumentException, InvocationTargetException {
        try {
            localFileRecord.outputUncompressedData(dataSource, inspectJarEntryRequest.getDataSink());
            inspectJarEntryRequest.done();
        } catch (ZipFormatException e7) {
            throw new ApkFormatException("Malformed ZIP entry: " + localFileRecord.getName(), e7);
        }
    }

    public static ByteBuffer getAndroidManifestFromApk(List<CentralDirectoryRecord> list, DataSource dataSource) throws ApkFormatException {
        CentralDirectoryRecord centralDirectoryRecordFindCdRecord = findCdRecord(list, "AndroidManifest.xml");
        if (centralDirectoryRecordFindCdRecord != null) {
            return ByteBuffer.wrap(LocalFileRecord.getUncompressedData(dataSource, centralDirectoryRecordFindCdRecord, dataSource.size()));
        }
        throw new ApkFormatException("Missing AndroidManifest.xml");
    }

    private static int getInputJarEntryDataAlignmentMultiple(LocalFileRecord localFileRecord) {
        if (localFileRecord.isDataCompressed()) {
            return 1;
        }
        ByteBuffer extra = localFileRecord.getExtra();
        if (extra.hasRemaining()) {
            extra.order(ByteOrder.LITTLE_ENDIAN);
            while (true) {
                if (extra.remaining() < 4) {
                    break;
                }
                short s8 = extra.getShort();
                int unsignedInt16 = ZipUtils.getUnsignedInt16(extra);
                if (unsignedInt16 > extra.remaining()) {
                    break;
                }
                if (s8 != -9931) {
                    extra.position(extra.position() + unsignedInt16);
                } else if (unsignedInt16 >= 2) {
                    return ZipUtils.getUnsignedInt16(extra);
                }
            }
        }
        return localFileRecord.getName().endsWith(".so") ? 4096 : 4;
    }

    private static int getMinSdkVersionFromApk(List<CentralDirectoryRecord> list, DataSource dataSource) throws MinSdkVersionException {
        try {
            return ApkUtils.getMinSdkVersionFromBinaryAndroidManifest(getAndroidManifestFromApk(list, dataSource));
        } catch (ApkFormatException | ZipFormatException e7) {
            throw new MinSdkVersionException("Failed to determine APK's minimum supported Android platform version", e7);
        }
    }

    private static ByteBuffer getZipCentralDirectory(DataSource dataSource, ApkUtils.ZipSections zipSections) throws ApkFormatException {
        long zipCentralDirectorySizeBytes = zipSections.getZipCentralDirectorySizeBytes();
        if (zipCentralDirectorySizeBytes > 2147483647L) {
            throw new ApkFormatException(q.j(zipCentralDirectorySizeBytes, "ZIP Central Directory too large: "));
        }
        ByteBuffer byteBuffer = dataSource.getByteBuffer(zipSections.getZipCentralDirectoryOffset(), (int) zipCentralDirectorySizeBytes);
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return byteBuffer;
    }

    private static long outputDataToOutputApk(String str, byte[] bArr, long j10, List<CentralDirectoryRecord> list, int i10, int i11, DataSink dataSink) {
        ZipUtils.DeflateResult deflateResultDeflate = ZipUtils.deflate(ByteBuffer.wrap(bArr));
        byte[] bArr2 = deflateResultDeflate.output;
        long j11 = deflateResultDeflate.inputCrc32;
        long jOutputRecordWithDeflateCompressedData = LocalFileRecord.outputRecordWithDeflateCompressedData(str, i10, i11, bArr2, j11, bArr.length, dataSink);
        list.add(CentralDirectoryRecord.createWithDeflateCompressedData(str, i10, i11, j11, bArr2.length, bArr.length, j10));
        return jOutputRecordWithDeflateCompressedData;
    }

    private static OutputSizeAndDataOffset outputInputJarEntryLfhRecordPreservingDataAlignment(DataSource dataSource, LocalFileRecord localFileRecord, DataSink dataSink, long j10) {
        long startOffsetInArchive = localFileRecord.getStartOffsetInArchive();
        if (startOffsetInArchive == j10) {
            return new OutputSizeAndDataOffset(localFileRecord.outputRecord(dataSource, dataSink), localFileRecord.getDataStartOffsetInRecord());
        }
        int inputJarEntryDataAlignmentMultiple = getInputJarEntryDataAlignmentMultiple(localFileRecord);
        if (inputJarEntryDataAlignmentMultiple > 1) {
            long j11 = inputJarEntryDataAlignmentMultiple;
            if (startOffsetInArchive % j11 != j10 % j11) {
                if ((startOffsetInArchive + localFileRecord.getDataStartOffsetInRecord()) % j11 != 0) {
                    return new OutputSizeAndDataOffset(localFileRecord.outputRecord(dataSource, dataSink), localFileRecord.getDataStartOffsetInRecord());
                }
                return new OutputSizeAndDataOffset(localFileRecord.outputRecordWithModifiedExtra(dataSource, createExtraFieldToAlignData(localFileRecord.getExtra(), j10 + localFileRecord.getExtraFieldStartOffsetInsideRecord(), inputJarEntryDataAlignmentMultiple), dataSink), (localFileRecord.getDataStartOffsetInRecord() + r13.remaining()) - localFileRecord.getExtra().remaining());
            }
        }
        return new OutputSizeAndDataOffset(localFileRecord.outputRecord(dataSource, dataSink), localFileRecord.getDataStartOffsetInRecord());
    }

    private static List<CentralDirectoryRecord> parseZipCentralDirectory(ByteBuffer byteBuffer, ApkUtils.ZipSections zipSections) throws ApkFormatException {
        long zipCentralDirectoryOffset = zipSections.getZipCentralDirectoryOffset();
        int zipCentralDirectoryRecordCount = zipSections.getZipCentralDirectoryRecordCount();
        ArrayList arrayList = new ArrayList(zipCentralDirectoryRecordCount);
        HashSet hashSet = new HashSet(zipCentralDirectoryRecordCount);
        for (int i10 = 0; i10 < zipCentralDirectoryRecordCount; i10++) {
            int iPosition = byteBuffer.position();
            try {
                CentralDirectoryRecord record = CentralDirectoryRecord.getRecord(byteBuffer);
                String name = record.getName();
                if (!hashSet.add(name)) {
                    throw new ApkFormatException(b.c("Multiple ZIP entries with the same name: ", name));
                }
                arrayList.add(record);
            } catch (ZipFormatException e7) {
                throw new ApkFormatException("Malformed ZIP Central Directory record #" + (i10 + 1) + " at file offset " + (zipCentralDirectoryOffset + iPosition), e7);
            }
        }
        if (!byteBuffer.hasRemaining()) {
            return arrayList;
        }
        throw new ApkFormatException("Unused space at the end of ZIP Central Directory: " + byteBuffer.remaining() + " bytes starting at file offset " + (zipCentralDirectoryOffset + byteBuffer.position()));
    }

    private static void requestOutputEntryInspection(ApkSignerEngine apkSignerEngine, String str, byte[] bArr) {
        ApkSignerEngine.InspectJarEntryRequest inspectJarEntryRequestOutputJarEntry = apkSignerEngine.outputJarEntry(str);
        if (inspectJarEntryRequestOutputJarEntry != null) {
            inspectJarEntryRequestOutputJarEntry.getDataSink().consume(bArr, 0, bArr.length);
            inspectJarEntryRequestOutputJarEntry.done();
        }
    }

    public void sign() throws Throwable {
        RandomAccessFile randomAccessFile;
        Throwable th2;
        DataSource dataSourceAsDataSource;
        DataSource dataSourceAsDataSource2;
        RandomAccessFile randomAccessFile2 = null;
        try {
            DataSource dataSource = this.mInputApkDataSource;
            if (dataSource != null) {
                dataSourceAsDataSource = dataSource;
                randomAccessFile = null;
            } else {
                if (this.mInputApkFile == null) {
                    throw new IllegalStateException("Input APK not specified");
                }
                randomAccessFile = new RandomAccessFile(this.mInputApkFile, "r");
                try {
                    dataSourceAsDataSource = DataSources.asDataSource(randomAccessFile);
                } catch (Throwable th3) {
                    th2 = th3;
                    if (randomAccessFile != null) {
                        randomAccessFile.close();
                    }
                    throw th2;
                }
            }
            try {
                DataSink dataSink = this.mOutputApkDataSink;
                if (dataSink != null) {
                    dataSourceAsDataSource2 = this.mOutputApkDataSource;
                } else {
                    if (this.mOutputApkFile == null) {
                        throw new IllegalStateException("Output APK not specified");
                    }
                    RandomAccessFile randomAccessFile3 = new RandomAccessFile(this.mOutputApkFile, "rw");
                    try {
                        randomAccessFile3.setLength(0L);
                        DataSink dataSinkAsDataSink = DataSinks.asDataSink(randomAccessFile3);
                        dataSourceAsDataSource2 = DataSources.asDataSource(randomAccessFile3);
                        dataSink = dataSinkAsDataSink;
                        randomAccessFile2 = randomAccessFile3;
                    } catch (Throwable th4) {
                        th = th4;
                        randomAccessFile2 = randomAccessFile3;
                        if (randomAccessFile2 != null) {
                            randomAccessFile2.close();
                        }
                        throw th;
                    }
                }
                sign(dataSourceAsDataSource, dataSink, dataSourceAsDataSource2);
                if (randomAccessFile2 != null) {
                    randomAccessFile2.close();
                }
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Throwable th6) {
            randomAccessFile = null;
            th2 = th6;
        }
    }

    private ApkSigner(List<SignerConfig> list, SignerConfig signerConfig, SigningCertificateLineage signingCertificateLineage, boolean z, Integer num, int i10, boolean z4, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16, boolean z17, boolean z18, String str, ApkSignerEngine apkSignerEngine, File file, DataSource dataSource, File file2, DataSink dataSink, DataSource dataSource2, File file3, SigningCertificateLineage signingCertificateLineage2) {
        this.mSignerConfigs = list;
        this.mSourceStampSignerConfig = signerConfig;
        this.mSourceStampSigningCertificateLineage = signingCertificateLineage;
        this.mForceSourceStampOverwrite = z;
        this.mMinSdkVersion = num;
        this.mRotationMinSdkVersion = i10;
        this.mRotationTargetsDevRelease = z4;
        this.mV1SigningEnabled = z10;
        this.mV2SigningEnabled = z11;
        this.mV3SigningEnabled = z12;
        this.mV4SigningEnabled = z13;
        this.mAlignFileSize = z14;
        this.mVerityEnabled = z15;
        this.mV4ErrorReportingEnabled = z16;
        this.mDebuggableApkPermitted = z17;
        this.mOtherSignersSignaturesPreserved = z18;
        this.mCreatedBy = str;
        this.mSignerEngine = apkSignerEngine;
        this.mInputApkFile = file;
        this.mInputApkDataSource = dataSource;
        this.mOutputApkFile = file2;
        this.mOutputApkDataSink = dataSink;
        this.mOutputApkDataSource = dataSource2;
        this.mOutputV4File = file3;
        this.mSigningCertificateLineage = signingCertificateLineage2;
    }

    public static class Builder {
        private boolean mAlignFileSize;
        private String mCreatedBy;
        private boolean mDebuggableApkPermitted;
        private boolean mForceSourceStampOverwrite;
        private DataSource mInputApkDataSource;
        private File mInputApkFile;
        private Integer mMinSdkVersion;
        private boolean mOtherSignersSignaturesPreserved;
        private DataSink mOutputApkDataSink;
        private DataSource mOutputApkDataSource;
        private File mOutputApkFile;
        private File mOutputV4File;
        private int mRotationMinSdkVersion;
        private boolean mRotationTargetsDevRelease;
        private final List<SignerConfig> mSignerConfigs;
        private final ApkSignerEngine mSignerEngine;
        private SigningCertificateLineage mSigningCertificateLineage;
        private SignerConfig mSourceStampSignerConfig;
        private SigningCertificateLineage mSourceStampSigningCertificateLineage;
        private boolean mV1SigningEnabled;
        private boolean mV2SigningEnabled;
        private boolean mV3SigningEnabled;
        private boolean mV3SigningExplicitlyDisabled;
        private boolean mV3SigningExplicitlyEnabled;
        private boolean mV4ErrorReportingEnabled;
        private boolean mV4SigningEnabled;
        private boolean mVerityEnabled;

        public Builder(List<SignerConfig> list) {
            this.mForceSourceStampOverwrite = false;
            this.mV1SigningEnabled = true;
            this.mV2SigningEnabled = true;
            this.mV3SigningEnabled = true;
            this.mV4SigningEnabled = true;
            this.mAlignFileSize = false;
            this.mVerityEnabled = false;
            this.mV4ErrorReportingEnabled = false;
            this.mDebuggableApkPermitted = true;
            this.mRotationMinSdkVersion = 33;
            this.mRotationTargetsDevRelease = false;
            this.mV3SigningExplicitlyDisabled = false;
            this.mV3SigningExplicitlyEnabled = false;
            if (list.isEmpty()) {
                throw new IllegalArgumentException("At least one signer config must be provided");
            }
            if (list.size() > 1) {
                this.mV3SigningEnabled = false;
            }
            this.mSignerConfigs = new ArrayList(list);
            this.mSignerEngine = null;
        }

        private void checkInitializedWithoutEngine() {
            if (this.mSignerEngine != null) {
                throw new IllegalStateException("Operation is not available when builder initialized with an engine");
            }
        }

        public ApkSigner build() {
            boolean z = this.mV3SigningExplicitlyDisabled;
            if (z && this.mV3SigningExplicitlyEnabled) {
                throw new IllegalStateException("Builder configured to both enable and disable APK Signature Scheme v3 signing");
            }
            if (z) {
                this.mV3SigningEnabled = false;
            }
            if (this.mV3SigningExplicitlyEnabled) {
                this.mV3SigningEnabled = true;
            }
            if (this.mV4SigningEnabled && !this.mV2SigningEnabled && !this.mV3SigningEnabled) {
                if (this.mV4ErrorReportingEnabled) {
                    throw new IllegalStateException("APK Signature Scheme v4 signing requires at least v2 or v3 signing to be enabled");
                }
                this.mV4SigningEnabled = false;
            }
            return new ApkSigner(this.mSignerConfigs, this.mSourceStampSignerConfig, this.mSourceStampSigningCertificateLineage, this.mForceSourceStampOverwrite, this.mMinSdkVersion, this.mRotationMinSdkVersion, this.mRotationTargetsDevRelease, this.mV1SigningEnabled, this.mV2SigningEnabled, this.mV3SigningEnabled, this.mV4SigningEnabled, this.mAlignFileSize, this.mVerityEnabled, this.mV4ErrorReportingEnabled, this.mDebuggableApkPermitted, this.mOtherSignersSignaturesPreserved, this.mCreatedBy, this.mSignerEngine, this.mInputApkFile, this.mInputApkDataSource, this.mOutputApkFile, this.mOutputApkDataSink, this.mOutputApkDataSource, this.mOutputV4File, this.mSigningCertificateLineage, null);
        }

        public Builder setAlignFileSize(boolean z) {
            checkInitializedWithoutEngine();
            this.mAlignFileSize = z;
            return this;
        }

        public Builder setCreatedBy(String str) {
            checkInitializedWithoutEngine();
            str.getClass();
            this.mCreatedBy = str;
            return this;
        }

        public Builder setDebuggableApkPermitted(boolean z) {
            checkInitializedWithoutEngine();
            this.mDebuggableApkPermitted = z;
            return this;
        }

        public Builder setForceSourceStampOverwrite(boolean z) {
            this.mForceSourceStampOverwrite = z;
            return this;
        }

        public Builder setInputApk(File file) {
            if (file == null) {
                throw new NullPointerException("inputApk == null");
            }
            this.mInputApkFile = file;
            this.mInputApkDataSource = null;
            return this;
        }

        public Builder setMinSdkVersion(int i10) {
            checkInitializedWithoutEngine();
            this.mMinSdkVersion = Integer.valueOf(i10);
            return this;
        }

        public Builder setMinSdkVersionForRotation(int i10) {
            checkInitializedWithoutEngine();
            if (i10 < 33) {
                this.mRotationMinSdkVersion = 28;
            } else {
                this.mRotationMinSdkVersion = i10;
            }
            return this;
        }

        public Builder setOtherSignersSignaturesPreserved(boolean z) {
            checkInitializedWithoutEngine();
            this.mOtherSignersSignaturesPreserved = z;
            return this;
        }

        public Builder setOutputApk(File file) {
            if (file == null) {
                throw new NullPointerException("outputApk == null");
            }
            this.mOutputApkFile = file;
            this.mOutputApkDataSink = null;
            this.mOutputApkDataSource = null;
            return this;
        }

        public Builder setRotationTargetsDevRelease(boolean z) {
            checkInitializedWithoutEngine();
            this.mRotationTargetsDevRelease = z;
            return this;
        }

        public Builder setSigningCertificateLineage(SigningCertificateLineage signingCertificateLineage) {
            if (signingCertificateLineage != null) {
                this.mV3SigningEnabled = true;
                this.mSigningCertificateLineage = signingCertificateLineage;
            }
            return this;
        }

        public Builder setSourceStampSignerConfig(SignerConfig signerConfig) {
            this.mSourceStampSignerConfig = signerConfig;
            return this;
        }

        public Builder setSourceStampSigningCertificateLineage(SigningCertificateLineage signingCertificateLineage) {
            this.mSourceStampSigningCertificateLineage = signingCertificateLineage;
            return this;
        }

        public Builder setV1SigningEnabled(boolean z) {
            checkInitializedWithoutEngine();
            this.mV1SigningEnabled = z;
            return this;
        }

        public Builder setV2SigningEnabled(boolean z) {
            checkInitializedWithoutEngine();
            this.mV2SigningEnabled = z;
            return this;
        }

        public Builder setV3SigningEnabled(boolean z) {
            checkInitializedWithoutEngine();
            this.mV3SigningEnabled = z;
            if (z) {
                this.mV3SigningExplicitlyEnabled = true;
            } else {
                this.mV3SigningExplicitlyDisabled = true;
            }
            return this;
        }

        public Builder setV4ErrorReportingEnabled(boolean z) {
            checkInitializedWithoutEngine();
            this.mV4ErrorReportingEnabled = z;
            return this;
        }

        public Builder setV4SignatureOutputFile(File file) {
            if (file == null) {
                throw new NullPointerException("v4HashRootOutputFile == null");
            }
            this.mOutputV4File = file;
            return this;
        }

        public Builder setV4SigningEnabled(boolean z) {
            checkInitializedWithoutEngine();
            this.mV4SigningEnabled = z;
            this.mV4ErrorReportingEnabled = z;
            return this;
        }

        public Builder setVerityEnabled(boolean z) {
            checkInitializedWithoutEngine();
            this.mVerityEnabled = z;
            return this;
        }

        public Builder setInputApk(DataSource dataSource) {
            if (dataSource != null) {
                this.mInputApkDataSource = dataSource;
                this.mInputApkFile = null;
                return this;
            }
            throw new NullPointerException("inputApk == null");
        }

        public Builder setOutputApk(ReadableDataSink readableDataSink) {
            if (readableDataSink != null) {
                return setOutputApk(readableDataSink, readableDataSink);
            }
            throw new NullPointerException("outputApk == null");
        }

        public Builder setOutputApk(DataSink dataSink, DataSource dataSource) {
            if (dataSink == null) {
                throw new NullPointerException("outputApkOut == null");
            }
            if (dataSource != null) {
                this.mOutputApkFile = null;
                this.mOutputApkDataSink = dataSink;
                this.mOutputApkDataSource = dataSource;
                return this;
            }
            throw new NullPointerException("outputApkIn == null");
        }

        public Builder(ApkSignerEngine apkSignerEngine) {
            this.mForceSourceStampOverwrite = false;
            this.mV1SigningEnabled = true;
            this.mV2SigningEnabled = true;
            this.mV3SigningEnabled = true;
            this.mV4SigningEnabled = true;
            this.mAlignFileSize = false;
            this.mVerityEnabled = false;
            this.mV4ErrorReportingEnabled = false;
            this.mDebuggableApkPermitted = true;
            this.mRotationMinSdkVersion = 33;
            this.mRotationTargetsDevRelease = false;
            this.mV3SigningExplicitlyDisabled = false;
            this.mV3SigningExplicitlyEnabled = false;
            if (apkSignerEngine != null) {
                this.mSignerEngine = apkSignerEngine;
                this.mSignerConfigs = null;
                return;
            }
            throw new NullPointerException("signerEngine == null");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x02e0  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0300  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0319  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0324  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0354  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x035a  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x037f  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0387  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x03c9 A[LOOP:4: B:150:0x03c3->B:152:0x03c9, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:155:0x03dd  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0496  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0137  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void sign(DataSource dataSource, DataSink dataSink, DataSource dataSource2) throws IllegalAccessException, NoSuchMethodException, SecurityException, IOException, ApkFormatException, IllegalArgumentException, InvocationTargetException {
        long zipCentralDirectoryOffset;
        DataSource contents;
        ApkSignerEngine apkSignerEngineBuild;
        int minSdkVersionFromApk;
        ApkSignerEngine apkSignerEngine;
        Iterator it;
        long j10;
        int i10;
        long size;
        ArrayList arrayList;
        Iterator<CentralDirectoryRecord> it2;
        ApkSigner apkSigner;
        ArrayList arrayList2;
        ApkSignerEngine.OutputJarSignatureRequest outputJarSignatureRequestOutputJarEntries;
        long size2;
        boolean z;
        byte[] bArr;
        int i11;
        HashMap map;
        List<CentralDirectoryRecord> list;
        int i12;
        ArrayList arrayList3;
        long j11;
        long j12;
        List<Hints.PatternWithRange> list2;
        ArrayList arrayList4;
        HashMap map2;
        long j13;
        int i13;
        ArrayList arrayList5;
        Hints.ByteRange byteRangeClampToAbsoluteByteRange;
        ApkUtils.ApkSigningBlock apkSigningBlockFindApkSigningBlock;
        try {
            ApkUtils.ZipSections zipSectionsFindZipSections = ApkUtils.findZipSections(dataSource);
            try {
                apkSigningBlockFindApkSigningBlock = ApkUtils.findApkSigningBlock(dataSource, zipSectionsFindZipSections);
                zipCentralDirectoryOffset = apkSigningBlockFindApkSigningBlock.getStartOffset();
            } catch (ApkSigningBlockNotFoundException unused) {
                zipCentralDirectoryOffset = -1;
            }
            try {
                contents = apkSigningBlockFindApkSigningBlock.getContents();
            } catch (ApkSigningBlockNotFoundException unused2) {
                contents = null;
                if (zipCentralDirectoryOffset == -1) {
                }
                DataSource dataSourceSlice = dataSource.slice(0L, zipCentralDirectoryOffset);
                List<CentralDirectoryRecord> zipCentralDirectory = parseZipCentralDirectory(getZipCentralDirectory(dataSource, zipSectionsFindZipSections), zipSectionsFindZipSections);
                List<Hints.PatternWithRange> listExtractPinPatterns = extractPinPatterns(zipCentralDirectory, dataSourceSlice);
                if (listExtractPinPatterns != null) {
                }
                apkSignerEngineBuild = this.mSignerEngine;
                if (apkSignerEngineBuild == null) {
                }
                apkSignerEngine = apkSignerEngineBuild;
                if (contents != null) {
                }
                ArrayList arrayList6 = new ArrayList(zipCentralDirectory);
                Collections.sort(arrayList6, CentralDirectoryRecord.BY_LOCAL_FILE_HEADER_OFFSET_COMPARATOR);
                HashMap map3 = new HashMap(zipCentralDirectory.size());
                it = arrayList6.iterator();
                int i14 = -1;
                j10 = 0;
                byte[] uncompressedData = null;
                int i15 = -1;
                long jOutputDataToOutputApk = 0;
                while (it.hasNext()) {
                }
                List<CentralDirectoryRecord> list3 = zipCentralDirectory;
                int i16 = i14;
                byte[] bArr2 = uncompressedData;
                i10 = i15;
                ApkUtils.ZipSections zipSections = zipSectionsFindZipSections;
                ArrayList arrayList7 = arrayList;
                HashMap map4 = map3;
                size = dataSourceSlice.size();
                if (j10 < size) {
                }
                arrayList = new ArrayList(list3.size() + 10);
                it2 = list3.iterator();
                while (it2.hasNext()) {
                }
                if (i10 == -1) {
                }
                if (apkSignerEngine.isEligibleForSourceStamp()) {
                }
                long jOutputDataToOutputApk2 = jOutputDataToOutputApk;
                if (arrayList2 == null) {
                }
                outputJarSignatureRequestOutputJarEntries = apkSignerEngine.outputJarEntries();
                if (outputJarSignatureRequestOutputJarEntries != null) {
                }
                size2 = 0;
                while (arrayList.iterator().hasNext()) {
                }
                if (size2 > 2147483647L) {
                }
            }
            if (zipCentralDirectoryOffset == -1) {
                zipCentralDirectoryOffset = zipSectionsFindZipSections.getZipCentralDirectoryOffset();
            }
            DataSource dataSourceSlice2 = dataSource.slice(0L, zipCentralDirectoryOffset);
            List<CentralDirectoryRecord> zipCentralDirectory2 = parseZipCentralDirectory(getZipCentralDirectory(dataSource, zipSectionsFindZipSections), zipSectionsFindZipSections);
            List<Hints.PatternWithRange> listExtractPinPatterns2 = extractPinPatterns(zipCentralDirectory2, dataSourceSlice2);
            ArrayList arrayList8 = listExtractPinPatterns2 != null ? null : new ArrayList();
            apkSignerEngineBuild = this.mSignerEngine;
            if (apkSignerEngineBuild == null) {
                Integer num = this.mMinSdkVersion;
                if (num != null) {
                    minSdkVersionFromApk = num.intValue();
                } else {
                    minSdkVersionFromApk = getMinSdkVersionFromApk(zipCentralDirectory2, dataSourceSlice2);
                }
                ArrayList arrayList9 = new ArrayList(this.mSignerConfigs.size());
                for (Iterator<SignerConfig> it3 = this.mSignerConfigs.iterator(); it3.hasNext(); it3 = it3) {
                    SignerConfig next = it3.next();
                    arrayList9.add(new DefaultApkSignerEngine.SignerConfig.Builder(next.getName(), next.getPrivateKey(), next.getCertificates(), next.getDeterministicDsaSigning()).build());
                }
                DefaultApkSignerEngine.Builder rotationTargetsDevRelease = new DefaultApkSignerEngine.Builder(arrayList9, minSdkVersionFromApk).setV1SigningEnabled(this.mV1SigningEnabled).setV2SigningEnabled(this.mV2SigningEnabled).setV3SigningEnabled(this.mV3SigningEnabled).setVerityEnabled(this.mVerityEnabled).setDebuggableApkPermitted(this.mDebuggableApkPermitted).setOtherSignersSignaturesPreserved(this.mOtherSignersSignaturesPreserved).setSigningCertificateLineage(this.mSigningCertificateLineage).setMinSdkVersionForRotation(this.mRotationMinSdkVersion).setRotationTargetsDevRelease(this.mRotationTargetsDevRelease);
                String str = this.mCreatedBy;
                if (str != null) {
                    rotationTargetsDevRelease.setCreatedBy(str);
                }
                SignerConfig signerConfig = this.mSourceStampSignerConfig;
                if (signerConfig != null) {
                    rotationTargetsDevRelease.setStampSignerConfig(new DefaultApkSignerEngine.SignerConfig.Builder(signerConfig.getName(), this.mSourceStampSignerConfig.getPrivateKey(), this.mSourceStampSignerConfig.getCertificates(), this.mSourceStampSignerConfig.getDeterministicDsaSigning()).build());
                }
                SigningCertificateLineage signingCertificateLineage = this.mSourceStampSigningCertificateLineage;
                if (signingCertificateLineage != null) {
                    rotationTargetsDevRelease.setSourceStampSigningCertificateLineage(signingCertificateLineage);
                }
                apkSignerEngineBuild = rotationTargetsDevRelease.build();
            }
            apkSignerEngine = apkSignerEngineBuild;
            if (contents != null) {
                apkSignerEngine.inputApkSigningBlock(contents);
            }
            ArrayList arrayList62 = new ArrayList(zipCentralDirectory2);
            Collections.sort(arrayList62, CentralDirectoryRecord.BY_LOCAL_FILE_HEADER_OFFSET_COMPARATOR);
            HashMap map32 = new HashMap(zipCentralDirectory2.size());
            it = arrayList62.iterator();
            int i142 = -1;
            j10 = 0;
            byte[] uncompressedData2 = null;
            int i152 = -1;
            long jOutputDataToOutputApk3 = 0;
            while (it.hasNext()) {
                CentralDirectoryRecord centralDirectoryRecordCreateWithModifiedLocalFileHeaderOffset = (CentralDirectoryRecord) it.next();
                ApkUtils.ZipSections zipSections2 = zipSectionsFindZipSections;
                String name = centralDirectoryRecordCreateWithModifiedLocalFileHeaderOffset.getName();
                if (!Hints.PIN_BYTE_RANGE_ZIP_ENTRY_NAME.equals(name)) {
                    if ("stamp-cert-sha256".equals(name)) {
                        int i17 = i152;
                        try {
                            uncompressedData2 = LocalFileRecord.getUncompressedData(dataSourceSlice2, centralDirectoryRecordCreateWithModifiedLocalFileHeaderOffset, dataSourceSlice2.size());
                            i152 = i17;
                        } catch (ZipFormatException unused3) {
                            throw new ApkFormatException("Bad source stamp entry");
                        }
                    } else {
                        int i18 = i152;
                        ApkSignerEngine.InputJarEntryInstructions inputJarEntryInstructionsInputJarEntry = apkSignerEngine.inputJarEntry(name);
                        int i19 = AnonymousClass1.$SwitchMap$com$android$apksig$ApkSignerEngine$InputJarEntryInstructions$OutputPolicy[inputJarEntryInstructionsInputJarEntry.getOutputPolicy().ordinal()];
                        int i20 = i142;
                        if (i19 == 1) {
                            z = true;
                        } else {
                            if (i19 != 2 && i19 != 3) {
                                throw new RuntimeException("Unknown output policy: " + inputJarEntryInstructionsInputJarEntry.getOutputPolicy());
                            }
                            z = false;
                        }
                        long localFileHeaderOffset = centralDirectoryRecordCreateWithModifiedLocalFileHeaderOffset.getLocalFileHeaderOffset();
                        if (localFileHeaderOffset > j10) {
                            long j14 = localFileHeaderOffset - j10;
                            list = zipCentralDirectory2;
                            i12 = i20;
                            i11 = i18;
                            bArr = uncompressedData2;
                            map = map32;
                            dataSourceSlice2.feed(j10, j14, dataSink);
                            arrayList3 = arrayList8;
                            j11 = jOutputDataToOutputApk3 + j14;
                            j10 = localFileHeaderOffset;
                        } else {
                            bArr = uncompressedData2;
                            i11 = i18;
                            map = map32;
                            list = zipCentralDirectory2;
                            i12 = i20;
                            arrayList3 = arrayList8;
                            j11 = jOutputDataToOutputApk3;
                        }
                        try {
                            LocalFileRecord record = LocalFileRecord.getRecord(dataSourceSlice2, centralDirectoryRecordCreateWithModifiedLocalFileHeaderOffset, dataSourceSlice2.size());
                            long size3 = j10 + record.getSize();
                            ApkSignerEngine.InspectJarEntryRequest inspectJarEntryRequest = inputJarEntryInstructionsInputJarEntry.getInspectJarEntryRequest();
                            if (inspectJarEntryRequest != null) {
                                fulfillInspectInputJarEntryRequest(dataSourceSlice2, record, inspectJarEntryRequest);
                            }
                            if (z) {
                                int lastModificationDate = centralDirectoryRecordCreateWithModifiedLocalFileHeaderOffset.getLastModificationDate();
                                int lastModificationTime = centralDirectoryRecordCreateWithModifiedLocalFileHeaderOffset.getLastModificationTime();
                                if (i11 == -1 || lastModificationDate > i11 || (lastModificationDate == i11 && lastModificationTime > i12)) {
                                    i11 = lastModificationDate;
                                } else {
                                    lastModificationTime = i12;
                                }
                                ApkSignerEngine.InspectJarEntryRequest inspectJarEntryRequestOutputJarEntry = apkSignerEngine.outputJarEntry(name);
                                if (inspectJarEntryRequestOutputJarEntry != null) {
                                    fulfillInspectInputJarEntryRequest(dataSourceSlice2, record, inspectJarEntryRequestOutputJarEntry);
                                }
                                OutputSizeAndDataOffset outputSizeAndDataOffsetOutputInputJarEntryLfhRecordPreservingDataAlignment = outputInputJarEntryLfhRecordPreservingDataAlignment(dataSourceSlice2, record, dataSink, j11);
                                j12 = size3;
                                j13 = outputSizeAndDataOffsetOutputInputJarEntryLfhRecordPreservingDataAlignment.outputBytes + j11;
                                int i21 = i11;
                                long j15 = outputSizeAndDataOffsetOutputInputJarEntryLfhRecordPreservingDataAlignment.dataOffsetBytes + j11;
                                if (listExtractPinPatterns2 != null) {
                                    boolean z4 = false;
                                    for (Hints.PatternWithRange patternWithRange : listExtractPinPatterns2) {
                                        int i22 = i21;
                                        List<Hints.PatternWithRange> list4 = listExtractPinPatterns2;
                                        if (!patternWithRange.matcher(centralDirectoryRecordCreateWithModifiedLocalFileHeaderOffset.getName()).matches() || (byteRangeClampToAbsoluteByteRange = patternWithRange.ClampToAbsoluteByteRange(new Hints.ByteRange(j15, j13))) == null) {
                                            arrayList5 = arrayList3;
                                        } else {
                                            arrayList5 = arrayList3;
                                            arrayList5.add(byteRangeClampToAbsoluteByteRange);
                                            z4 = true;
                                        }
                                        arrayList3 = arrayList5;
                                        listExtractPinPatterns2 = list4;
                                        i21 = i22;
                                    }
                                    i13 = i21;
                                    list2 = listExtractPinPatterns2;
                                    arrayList4 = arrayList3;
                                    if (z4) {
                                        arrayList4.add(new Hints.ByteRange(j11, j15));
                                    }
                                } else {
                                    i13 = i21;
                                    list2 = listExtractPinPatterns2;
                                    arrayList4 = arrayList3;
                                }
                                if (j11 != record.getStartOffsetInArchive()) {
                                    centralDirectoryRecordCreateWithModifiedLocalFileHeaderOffset = centralDirectoryRecordCreateWithModifiedLocalFileHeaderOffset.createWithModifiedLocalFileHeaderOffset(j11);
                                }
                                map2 = map;
                                map2.put(name, centralDirectoryRecordCreateWithModifiedLocalFileHeaderOffset);
                                i142 = lastModificationTime;
                                i152 = i13;
                            } else {
                                j12 = size3;
                                list2 = listExtractPinPatterns2;
                                arrayList4 = arrayList3;
                                map2 = map;
                                i142 = i12;
                                j13 = j11;
                                i152 = i11;
                            }
                            map32 = map2;
                            zipSectionsFindZipSections = zipSections2;
                            zipCentralDirectory2 = list;
                            uncompressedData2 = bArr;
                            arrayList8 = arrayList4;
                            listExtractPinPatterns2 = list2;
                            long j16 = j13;
                            j10 = j12;
                            jOutputDataToOutputApk3 = j16;
                        } catch (ZipFormatException e7) {
                            throw new ApkFormatException("Malformed ZIP entry: " + centralDirectoryRecordCreateWithModifiedLocalFileHeaderOffset.getName(), e7);
                        }
                    }
                }
                zipSectionsFindZipSections = zipSections2;
            }
            List<CentralDirectoryRecord> list32 = zipCentralDirectory2;
            int i162 = i142;
            byte[] bArr22 = uncompressedData2;
            i10 = i152;
            ApkUtils.ZipSections zipSections3 = zipSectionsFindZipSections;
            ArrayList arrayList72 = arrayList8;
            HashMap map42 = map32;
            size = dataSourceSlice2.size();
            if (j10 < size) {
                long j17 = size - j10;
                dataSourceSlice2.feed(j10, j17, dataSink);
                jOutputDataToOutputApk3 += j17;
            }
            arrayList = new ArrayList(list32.size() + 10);
            it2 = list32.iterator();
            while (it2.hasNext()) {
                CentralDirectoryRecord centralDirectoryRecord = (CentralDirectoryRecord) map42.get(it2.next().getName());
                if (centralDirectoryRecord != null) {
                    arrayList.add(centralDirectoryRecord);
                }
            }
            if (i10 == -1) {
                i162 = 0;
                i10 = 14881;
            }
            if (apkSignerEngine.isEligibleForSourceStamp()) {
                apkSigner = this;
                arrayList2 = arrayList72;
            } else {
                byte[] bArrGenerateSourceStampCertificateDigest = apkSignerEngine.generateSourceStampCertificateDigest();
                apkSigner = this;
                if (!apkSigner.mForceSourceStampOverwrite && bArr22 != null && !Arrays.equals(bArrGenerateSourceStampCertificateDigest, bArr22)) {
                    throw new ApkFormatException("Cannot generate SourceStamp. APK contains an existing entry with the name: stamp-cert-sha256, and it is different than the provided source stamp certificate");
                }
                arrayList2 = arrayList72;
                jOutputDataToOutputApk3 += outputDataToOutputApk("stamp-cert-sha256", bArrGenerateSourceStampCertificateDigest, jOutputDataToOutputApk3, arrayList, i162, i10, dataSink);
            }
            long jOutputDataToOutputApk22 = jOutputDataToOutputApk3;
            if (arrayList2 == null) {
                arrayList2.add(new Hints.ByteRange(jOutputDataToOutputApk22, Long.MAX_VALUE));
                byte[] bArrEncodeByteRangeList = Hints.encodeByteRangeList(arrayList2);
                requestOutputEntryInspection(apkSignerEngine, Hints.PIN_BYTE_RANGE_ZIP_ENTRY_NAME, bArrEncodeByteRangeList);
                jOutputDataToOutputApk22 += outputDataToOutputApk(Hints.PIN_BYTE_RANGE_ZIP_ENTRY_NAME, bArrEncodeByteRangeList, jOutputDataToOutputApk22, arrayList, i162, i10, dataSink);
            }
            outputJarSignatureRequestOutputJarEntries = apkSignerEngine.outputJarEntries();
            if (outputJarSignatureRequestOutputJarEntries != null) {
                long jOutputDataToOutputApk4 = jOutputDataToOutputApk22;
                for (ApkSignerEngine.OutputJarSignatureRequest.JarEntry jarEntry : outputJarSignatureRequestOutputJarEntries.getAdditionalJarEntries()) {
                    String name2 = jarEntry.getName();
                    byte[] data = jarEntry.getData();
                    requestOutputEntryInspection(apkSignerEngine, name2, data);
                    jOutputDataToOutputApk4 += outputDataToOutputApk(name2, data, jOutputDataToOutputApk4, arrayList, i162, i10, dataSink);
                }
                outputJarSignatureRequestOutputJarEntries.done();
                jOutputDataToOutputApk22 = jOutputDataToOutputApk4;
            }
            size2 = 0;
            while (arrayList.iterator().hasNext()) {
                size2 += ((CentralDirectoryRecord) r0.next()).getSize();
            }
            if (size2 > 2147483647L) {
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate((int) size2);
                Iterator it4 = arrayList.iterator();
                while (it4.hasNext()) {
                    ((CentralDirectoryRecord) it4.next()).copyTo(byteBufferAllocate);
                }
                byteBufferAllocate.flip();
                ByteBufferDataSource byteBufferDataSource = new ByteBufferDataSource(byteBufferAllocate);
                ByteBuffer byteBufferCreateWithModifiedCentralDirectoryInfo = EocdRecord.createWithModifiedCentralDirectoryInfo(zipSections3.getZipEndOfCentralDirectory(), arrayList.size(), byteBufferDataSource.size(), jOutputDataToOutputApk22);
                ApkSignerEngine.OutputApkSigningBlockRequest2 outputApkSigningBlockRequest2OutputZipSections2 = apkSignerEngine.outputZipSections2(dataSource2, byteBufferDataSource, DataSources.asDataSource(byteBufferCreateWithModifiedCentralDirectoryInfo));
                if (outputApkSigningBlockRequest2OutputZipSections2 != null) {
                    int paddingSizeBeforeApkSigningBlock = outputApkSigningBlockRequest2OutputZipSections2.getPaddingSizeBeforeApkSigningBlock();
                    byte[] apkSigningBlock = outputApkSigningBlockRequest2OutputZipSections2.getApkSigningBlock();
                    outputApkSigningBlockRequest2OutputZipSections2.done();
                    long j18 = jOutputDataToOutputApk22;
                    long j19 = paddingSizeBeforeApkSigningBlock;
                    long size4 = byteBufferDataSource.size() + jOutputDataToOutputApk22 + j19 + apkSigningBlock.length + byteBufferCreateWithModifiedCentralDirectoryInfo.remaining();
                    if (apkSigner.mAlignFileSize) {
                        long j20 = size4 % 4096;
                        if (j20 != 0) {
                            byteBufferCreateWithModifiedCentralDirectoryInfo = EocdRecord.createWithPaddedComment(byteBufferCreateWithModifiedCentralDirectoryInfo, (int) (4096 - j20));
                            ApkSignerEngine.OutputApkSigningBlockRequest2 outputApkSigningBlockRequest2OutputZipSections22 = apkSignerEngine.outputZipSections2(dataSource2, new ByteBufferDataSource(byteBufferAllocate), DataSources.asDataSource(byteBufferCreateWithModifiedCentralDirectoryInfo));
                            apkSigningBlock = outputApkSigningBlockRequest2OutputZipSections22.getApkSigningBlock();
                            outputApkSigningBlockRequest2OutputZipSections22.done();
                        }
                    }
                    dataSink.consume(ByteBuffer.allocate(paddingSizeBeforeApkSigningBlock));
                    dataSink.consume(apkSigningBlock, 0, apkSigningBlock.length);
                    ZipUtils.setZipEocdCentralDirectoryOffset(byteBufferCreateWithModifiedCentralDirectoryInfo, j18 + j19 + apkSigningBlock.length);
                }
                byteBufferDataSource.feed(0L, byteBufferDataSource.size(), dataSink);
                dataSink.consume(byteBufferCreateWithModifiedCentralDirectoryInfo);
                apkSignerEngine.outputDone();
                if (apkSigner.mV4SigningEnabled) {
                    apkSignerEngine.signV4(dataSource2, apkSigner.mOutputV4File, !apkSigner.mV4ErrorReportingEnabled);
                    return;
                }
                return;
            }
            throw new IOException("Output ZIP Central Directory too large: " + size2 + " bytes");
        } catch (ZipFormatException e10) {
            throw new ApkFormatException("Malformed APK: not a ZIP archive", e10);
        }
    }
}
