package com.android.apksig;

import com.android.apksig.util.DataSink;
import com.android.apksig.util.DataSource;
import com.android.apksig.util.RunnablesExecutor;
import java.io.Closeable;
import java.io.File;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public interface ApkSignerEngine extends Closeable {

    public static class InputJarEntryInstructions {
        private final InspectJarEntryRequest mInspectJarEntryRequest;
        private final OutputPolicy mOutputPolicy;

        public enum OutputPolicy {
            SKIP,
            OUTPUT,
            OUTPUT_BY_ENGINE
        }

        public InputJarEntryInstructions(OutputPolicy outputPolicy) {
            this(outputPolicy, null);
        }

        public InspectJarEntryRequest getInspectJarEntryRequest() {
            return this.mInspectJarEntryRequest;
        }

        public OutputPolicy getOutputPolicy() {
            return this.mOutputPolicy;
        }

        public InputJarEntryInstructions(OutputPolicy outputPolicy, InspectJarEntryRequest inspectJarEntryRequest) {
            this.mOutputPolicy = outputPolicy;
            this.mInspectJarEntryRequest = inspectJarEntryRequest;
        }
    }

    public interface InspectJarEntryRequest {
        void done();

        DataSink getDataSink();

        String getEntryName();
    }

    @Deprecated
    public interface OutputApkSigningBlockRequest {
        void done();

        byte[] getApkSigningBlock();
    }

    public interface OutputApkSigningBlockRequest2 {
        void done();

        byte[] getApkSigningBlock();

        int getPaddingSizeBeforeApkSigningBlock();
    }

    public interface OutputJarSignatureRequest {

        public static class JarEntry {
            private final byte[] mData;
            private final String mName;

            public JarEntry(String str, byte[] bArr) {
                this.mName = str;
                this.mData = (byte[]) bArr.clone();
            }

            public byte[] getData() {
                return (byte[]) this.mData.clone();
            }

            public String getName() {
                return this.mName;
            }
        }

        void done();

        List<JarEntry> getAdditionalJarEntries();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    byte[] generateSourceStampCertificateDigest();

    Set<String> initWith(byte[] bArr, Set<String> set);

    void inputApkSigningBlock(DataSource dataSource);

    InputJarEntryInstructions inputJarEntry(String str);

    InputJarEntryInstructions.OutputPolicy inputJarEntryRemoved(String str);

    boolean isEligibleForSourceStamp();

    void outputDone();

    OutputJarSignatureRequest outputJarEntries();

    InspectJarEntryRequest outputJarEntry(String str);

    void outputJarEntryRemoved(String str);

    @Deprecated
    OutputApkSigningBlockRequest outputZipSections(DataSource dataSource, DataSource dataSource2, DataSource dataSource3);

    OutputApkSigningBlockRequest2 outputZipSections2(DataSource dataSource, DataSource dataSource2, DataSource dataSource3);

    void setExecutor(RunnablesExecutor runnablesExecutor);

    void signV4(DataSource dataSource, File file, boolean z);
}
