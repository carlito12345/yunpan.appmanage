package org.bouncycastle.crypto.threshold;

/* loaded from: classes3.dex */
public interface SecretSplitter {
    SplitSecret resplit(byte[] bArr, int i10, int i11);

    SplitSecret split(int i10, int i11);

    SplitSecret splitAround(SecretShare secretShare, int i10, int i11);
}
