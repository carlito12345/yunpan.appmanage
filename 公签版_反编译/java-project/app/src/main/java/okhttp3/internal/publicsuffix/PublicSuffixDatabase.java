package okhttp3.internal.publicsuffix;

import fg.c0;
import fg.d;
import fg.e0;
import fg.p;
import fg.r;
import fg.t;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Logger;
import okhttp3.internal.Util;
import okhttp3.internal.platform.Platform;
import org.slf4j.Marker;

/* loaded from: classes.dex */
public final class PublicSuffixDatabase {
    private static final byte EXCEPTION_MARKER = 33;
    public static final String PUBLIC_SUFFIX_RESOURCE = "publicsuffixes.gz";
    private byte[] publicSuffixExceptionListBytes;
    private byte[] publicSuffixListBytes;
    private static final byte[] WILDCARD_LABEL = {42};
    private static final String[] EMPTY_RULE = new String[0];
    private static final String[] PREVAILING_RULE = {Marker.ANY_MARKER};
    private static final PublicSuffixDatabase instance = new PublicSuffixDatabase();
    private final AtomicBoolean listRead = new AtomicBoolean(false);
    private final CountDownLatch readCompleteLatch = new CountDownLatch(1);

    private static String binarySearchBytes(byte[] bArr, byte[][] bArr2, int i10) {
        int i11;
        boolean z;
        int i12;
        int i13;
        int length = bArr.length;
        int i14 = 0;
        while (i14 < length) {
            int i15 = (i14 + length) / 2;
            while (i15 > -1 && bArr[i15] != 10) {
                i15--;
            }
            int i16 = i15 + 1;
            int i17 = 1;
            while (true) {
                i11 = i16 + i17;
                if (bArr[i11] == 10) {
                    break;
                }
                i17++;
            }
            int i18 = i11 - i16;
            int i19 = i10;
            boolean z4 = false;
            int i20 = 0;
            int i21 = 0;
            while (true) {
                if (z4) {
                    i12 = 46;
                    z = false;
                } else {
                    z = z4;
                    i12 = bArr2[i19][i20] & 255;
                }
                i13 = i12 - (bArr[i16 + i21] & 255);
                if (i13 == 0) {
                    i21++;
                    i20++;
                    if (i21 == i18) {
                        break;
                    }
                    if (bArr2[i19].length != i20) {
                        z4 = z;
                    } else {
                        if (i19 == bArr2.length - 1) {
                            break;
                        }
                        i19++;
                        z4 = true;
                        i20 = -1;
                    }
                } else {
                    break;
                }
            }
            if (i13 >= 0) {
                if (i13 <= 0) {
                    int i22 = i18 - i21;
                    int length2 = bArr2[i19].length - i20;
                    while (true) {
                        i19++;
                        if (i19 >= bArr2.length) {
                            break;
                        }
                        length2 += bArr2[i19].length;
                    }
                    if (length2 >= i22) {
                        if (length2 <= i22) {
                            return new String(bArr, i16, i18, Util.UTF_8);
                        }
                    }
                }
                i14 = i11 + 1;
            }
            length = i15;
        }
        return null;
    }

    private String[] findMatchingRule(String[] strArr) throws InterruptedException {
        String str;
        String strBinarySearchBytes;
        String strBinarySearchBytes2;
        int i10 = 0;
        if (this.listRead.get() || !this.listRead.compareAndSet(false, true)) {
            try {
                this.readCompleteLatch.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        } else {
            readTheListUninterruptibly();
        }
        synchronized (this) {
            if (this.publicSuffixListBytes == null) {
                throw new IllegalStateException("Unable to load publicsuffixes.gz resource from the classpath.");
            }
        }
        int length = strArr.length;
        byte[][] bArr = new byte[length][];
        for (int i11 = 0; i11 < strArr.length; i11++) {
            bArr[i11] = strArr[i11].getBytes(Util.UTF_8);
        }
        int i12 = 0;
        while (true) {
            str = null;
            if (i12 >= length) {
                strBinarySearchBytes = null;
                break;
            }
            strBinarySearchBytes = binarySearchBytes(this.publicSuffixListBytes, bArr, i12);
            if (strBinarySearchBytes != null) {
                break;
            }
            i12++;
        }
        if (length > 1) {
            byte[][] bArr2 = (byte[][]) bArr.clone();
            for (int i13 = 0; i13 < bArr2.length - 1; i13++) {
                bArr2[i13] = WILDCARD_LABEL;
                strBinarySearchBytes2 = binarySearchBytes(this.publicSuffixListBytes, bArr2, i13);
                if (strBinarySearchBytes2 != null) {
                    break;
                }
            }
            strBinarySearchBytes2 = null;
        } else {
            strBinarySearchBytes2 = null;
        }
        if (strBinarySearchBytes2 != null) {
            while (true) {
                if (i10 >= length - 1) {
                    break;
                }
                String strBinarySearchBytes3 = binarySearchBytes(this.publicSuffixExceptionListBytes, bArr, i10);
                if (strBinarySearchBytes3 != null) {
                    str = strBinarySearchBytes3;
                    break;
                }
                i10++;
            }
        }
        if (str != null) {
            return "!".concat(str).split("\\.");
        }
        if (strBinarySearchBytes == null && strBinarySearchBytes2 == null) {
            return PREVAILING_RULE;
        }
        String[] strArrSplit = strBinarySearchBytes != null ? strBinarySearchBytes.split("\\.") : EMPTY_RULE;
        String[] strArrSplit2 = strBinarySearchBytes2 != null ? strBinarySearchBytes2.split("\\.") : EMPTY_RULE;
        return strArrSplit.length > strArrSplit2.length ? strArrSplit : strArrSplit2;
    }

    public static PublicSuffixDatabase get() {
        return instance;
    }

    private void readTheList() throws IOException {
        InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream(PUBLIC_SUFFIX_RESOURCE);
        if (resourceAsStream == null) {
            return;
        }
        Logger logger = r.f5868a;
        t tVarC = e0.c(new p(new d(resourceAsStream, new c0())));
        try {
            byte[] bArr = new byte[tVarC.readInt()];
            tVarC.readFully(bArr);
            byte[] bArr2 = new byte[tVarC.readInt()];
            tVarC.readFully(bArr2);
            synchronized (this) {
                this.publicSuffixListBytes = bArr;
                this.publicSuffixExceptionListBytes = bArr2;
            }
            this.readCompleteLatch.countDown();
        } finally {
            Util.closeQuietly(tVarC);
        }
    }

    private void readTheListUninterruptibly() {
        boolean z = false;
        while (true) {
            try {
                try {
                    readTheList();
                    break;
                } catch (InterruptedIOException unused) {
                    Thread.interrupted();
                    z = true;
                } catch (IOException e7) {
                    Platform.get().log(5, "Failed to read public suffix list", e7);
                    if (z) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                    return;
                }
            } catch (Throwable th2) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th2;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    public String getEffectiveTldPlusOne(String str) throws InterruptedException {
        int length;
        int length2;
        if (str == null) {
            throw new NullPointerException("domain == null");
        }
        String[] strArrSplit = IDN.toUnicode(str).split("\\.");
        String[] strArrFindMatchingRule = findMatchingRule(strArrSplit);
        if (strArrSplit.length == strArrFindMatchingRule.length && strArrFindMatchingRule[0].charAt(0) != '!') {
            return null;
        }
        if (strArrFindMatchingRule[0].charAt(0) == '!') {
            length = strArrSplit.length;
            length2 = strArrFindMatchingRule.length;
        } else {
            length = strArrSplit.length;
            length2 = strArrFindMatchingRule.length + 1;
        }
        StringBuilder sb2 = new StringBuilder();
        String[] strArrSplit2 = str.split("\\.");
        for (int i10 = length - length2; i10 < strArrSplit2.length; i10++) {
            sb2.append(strArrSplit2[i10]);
            sb2.append('.');
        }
        sb2.deleteCharAt(sb2.length() - 1);
        return sb2.toString();
    }

    public void setListBytes(byte[] bArr, byte[] bArr2) {
        this.publicSuffixListBytes = bArr;
        this.publicSuffixExceptionListBytes = bArr2;
        this.listRead.set(true);
        this.readCompleteLatch.countDown();
    }
}
