package org.mozilla.universalchardet;

import j$.util.Objects;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.OpenOption;

/* loaded from: classes3.dex */
public final class ReaderFactory {
    private ReaderFactory() {
        throw new AssertionError("No instances allowed");
    }

    public static BufferedReader createBufferedReader(File file, Charset charset) {
        Objects.requireNonNull(charset, "defaultCharset must be not null");
        String strDetectCharset = UniversalDetector.detectCharset(file);
        if (strDetectCharset != null) {
            charset = Charset.forName(strDetectCharset);
        }
        return !charset.name().contains("UTF") ? Files.newBufferedReader(file.toPath(), charset) : new BufferedReader(new InputStreamReader(new UnicodeBOMInputStream(new BufferedInputStream(Files.newInputStream(file.toPath(), new OpenOption[0]))), charset));
    }

    @Deprecated
    public static Reader createReaderFromFile(File file, Charset charset) {
        return createBufferedReader(file, charset);
    }

    @Deprecated
    public static Reader createReaderFromFile(File file) {
        return createReaderFromFile(file, Charset.defaultCharset());
    }

    public static BufferedReader createBufferedReader(File file) {
        return createBufferedReader(file, Charset.defaultCharset());
    }

    public static BufferedReader createBufferedReader(byte[] bArr, Charset charset) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        Objects.requireNonNull(charset, "defaultCharset must be not null");
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            String strDetectCharset = UniversalDetector.detectCharset(byteArrayInputStream);
            byteArrayInputStream.close();
            if (strDetectCharset != null) {
                charset = Charset.forName(strDetectCharset);
            }
            if (!charset.name().contains("UTF")) {
                return new BufferedReader(new InputStreamReader(new ByteArrayInputStream(bArr), charset));
            }
            return new BufferedReader(new InputStreamReader(new UnicodeBOMInputStream(new ByteArrayInputStream(bArr)), charset));
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                try {
                    byteArrayInputStream.close();
                } catch (Throwable th4) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th4);
                    } catch (Exception unused) {
                    }
                }
                throw th3;
            }
        }
    }

    public static BufferedReader createBufferedReader(byte[] bArr) {
        return createBufferedReader(bArr, Charset.defaultCharset());
    }
}
