package org.bouncycastle.tsp.ers;

import android.support.v4.media.session.a;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.operator.DigestCalculator;
import org.bouncycastle.util.io.Streams;

/* loaded from: classes3.dex */
public class ERSInputStreamData extends ERSCachingData {
    private final byte[] contentBytes;
    private final File contentFile;

    public ERSInputStreamData(File file) throws FileNotFoundException {
        if (file.isDirectory()) {
            throw new IllegalArgumentException("directory not allowed");
        }
        if (file.exists()) {
            this.contentBytes = null;
            this.contentFile = file;
        } else {
            throw new FileNotFoundException(file + " not found");
        }
    }

    @Override // org.bouncycastle.tsp.ers.ERSCachingData
    public byte[] calculateHash(DigestCalculator digestCalculator, byte[] bArr) throws IOException {
        byte[] bArrCalculateDigest;
        byte[] bArr2 = this.contentBytes;
        if (bArr2 != null) {
            bArrCalculateDigest = ERSUtil.calculateDigest(digestCalculator, bArr2);
        } else {
            try {
                FileInputStream fileInputStream = new FileInputStream(this.contentFile);
                byte[] bArrCalculateDigest2 = ERSUtil.calculateDigest(digestCalculator, fileInputStream);
                fileInputStream.close();
                bArrCalculateDigest = bArrCalculateDigest2;
            } catch (IOException e7) {
                throw ExpUtil.createIllegalState(a.n(e7, new StringBuilder("unable to open content: ")), e7);
            }
        }
        return bArr != null ? ERSUtil.concatPreviousHashes(digestCalculator, bArr, bArrCalculateDigest) : bArrCalculateDigest;
    }

    public ERSInputStreamData(InputStream inputStream) {
        try {
            this.contentBytes = Streams.readAll(inputStream);
            this.contentFile = null;
        } catch (IOException e7) {
            throw ExpUtil.createIllegalState(a.n(e7, new StringBuilder("unable to open content: ")), e7);
        }
    }
}
