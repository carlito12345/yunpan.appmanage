package org.bouncycastle.util.io.pem;

import g.b;
import j$.io.BufferedReaderRetargetInterface;
import j$.io.DesugarBufferedReader;
import j$.util.stream.Stream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.stream.Stream;
import org.bouncycastle.util.encoders.Base64;

/* loaded from: classes3.dex */
public class PemReader extends BufferedReader implements BufferedReaderRetargetInterface {
    private static final String BEGIN = "-----BEGIN ";
    private static final String END = "-----END ";
    public static final String LAX_PEM_PARSING_SYSTEM_PROPERTY_NAME = "org.bouncycastle.pemreader.lax";
    private static final Logger LOG = Logger.getLogger(PemReader.class.getName());

    public PemReader(Reader reader) {
        super(reader);
    }

    private PemObject loadObject(String str) throws IOException {
        String line;
        String strA = b.A(END, str, "-----");
        StringBuffer stringBuffer = new StringBuffer();
        ArrayList arrayList = new ArrayList();
        while (true) {
            line = readLine();
            if (line == null) {
                break;
            }
            int iIndexOf = line.indexOf(58);
            if (iIndexOf >= 0) {
                arrayList.add(new PemHeader(line.substring(0, iIndexOf), line.substring(iIndexOf + 1).trim()));
            } else {
                if (System.getProperty(LAX_PEM_PARSING_SYSTEM_PROPERTY_NAME, "false").equalsIgnoreCase("true")) {
                    String strTrim = line.trim();
                    if (!strTrim.equals(line)) {
                        Logger logger = LOG;
                        Level level = Level.WARNING;
                        if (logger.isLoggable(level)) {
                            logger.log(level, "PEM object contains whitespaces on -----END line", (Throwable) new Exception("trace"));
                        }
                    }
                    line = strTrim;
                }
                if (line.indexOf(strA) == 0) {
                    break;
                }
                stringBuffer.append(line.trim());
            }
        }
        if (line != null) {
            return new PemObject(str, arrayList, Base64.decode(stringBuffer.toString()));
        }
        throw new IOException(b.j(strA, " not found"));
    }

    @Override // java.io.BufferedReader
    public final /* synthetic */ Stream lines() {
        return Stream.Wrapper.convert(lines());
    }

    public PemObject readPemObject() throws IOException {
        String line;
        String strTrim;
        int iIndexOf;
        do {
            line = readLine();
            if (line == null) {
                break;
            }
        } while (!line.startsWith(BEGIN));
        if (line == null || (iIndexOf = (strTrim = line.substring(11).trim()).indexOf(45)) <= 0 || !strTrim.endsWith("-----") || strTrim.length() - iIndexOf != 5) {
            return null;
        }
        return loadObject(strTrim.substring(0, iIndexOf));
    }

    @Override // java.io.BufferedReader, j$.io.BufferedReaderRetargetInterface
    public final /* synthetic */ j$.util.stream.Stream lines() {
        return DesugarBufferedReader.lines(this);
    }
}
