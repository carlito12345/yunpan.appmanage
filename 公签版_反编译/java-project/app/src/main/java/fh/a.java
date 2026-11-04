package fh;

import j$.io.BufferedReaderRetargetInterface;
import j$.io.DesugarBufferedReader;
import j$.util.stream.Stream;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.stream.Stream;

/* loaded from: classes.dex */
public final class a extends BufferedReader implements BufferedReaderRetargetInterface {
    public a(InputStreamReader inputStreamReader) {
        super(inputStreamReader);
    }

    @Override // java.io.BufferedReader
    public final /* synthetic */ Stream lines() {
        return Stream.Wrapper.convert(lines());
    }

    @Override // java.io.BufferedReader
    public final String readLine() {
        StringBuilder sb2 = new StringBuilder();
        synchronized (((BufferedReader) this).lock) {
            boolean z = false;
            while (true) {
                try {
                    int i10 = read();
                    if (i10 == -1) {
                        String string = sb2.toString();
                        if (string.isEmpty()) {
                            return null;
                        }
                        return string;
                    }
                    if (z && i10 == 10) {
                        return sb2.substring(0, sb2.length() - 1);
                    }
                    z = i10 == 13;
                    sb2.append((char) i10);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    @Override // java.io.BufferedReader, j$.io.BufferedReaderRetargetInterface
    public final /* synthetic */ j$.util.stream.Stream lines() {
        return DesugarBufferedReader.lines(this);
    }
}
