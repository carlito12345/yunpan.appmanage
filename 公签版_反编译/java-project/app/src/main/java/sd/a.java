package sd;

import com.hierynomus.smbfs.SmbPath;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import vd.s;
import vd.u;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: c, reason: collision with root package name */
    public static final Logger f14483c = LoggerFactory.getLogger((Class<?>) a.class);

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f14484a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public long f14485b = 1;

    public final synchronized h a(b bVar, xc.a aVar) {
        h hVar;
        hVar = null;
        try {
            try {
                if (aVar.f18431b.f17831d0 != null) {
                    File file = new File(aVar.f18431b.f17831d0);
                    long jLastModified = file.lastModified();
                    if (jLastModified > this.f14485b) {
                        Logger logger = f14483c;
                        if (logger.isDebugEnabled()) {
                            logger.debug("Reading " + aVar.f18431b.f17831d0);
                        }
                        this.f14485b = jLastModified;
                        this.f14484a.clear();
                        FileReader fileReader = new FileReader(file);
                        try {
                            b(fileReader, aVar);
                            fileReader.close();
                        } catch (Throwable th2) {
                            try {
                                fileReader.close();
                            } catch (Throwable th3) {
                                try {
                                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                                } catch (Exception unused) {
                                }
                            }
                            throw th2;
                        }
                    }
                    hVar = (h) this.f14484a.get(bVar);
                }
            } catch (IOException e7) {
                f14483c.error("Could not read lmhosts " + aVar.f18431b.f17831d0, (Throwable) e7);
            }
        } catch (Throwable th4) {
            throw th4;
        }
        return hVar;
    }

    public final void b(InputStreamReader inputStreamReader, xc.a aVar) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                return;
            }
            String strTrim = line.toUpperCase().trim();
            if (strTrim.length() != 0) {
                if (strTrim.charAt(0) == '#') {
                    if (strTrim.startsWith("#INCLUDE ")) {
                        InputStreamReader inputStreamReader2 = new InputStreamReader(new u(new s("smb:" + strTrim.substring(strTrim.indexOf(92)).replace(SmbPath.SEPARATOR, '/'), aVar), true));
                        try {
                            b(inputStreamReader2, aVar);
                            inputStreamReader2.close();
                        } catch (Throwable th2) {
                            try {
                                inputStreamReader2.close();
                            } catch (Throwable th3) {
                                try {
                                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                                } catch (Exception unused) {
                                }
                            }
                            throw th2;
                        }
                    } else if (!strTrim.startsWith("#BEGIN_ALTERNATE")) {
                        strTrim.startsWith("#END_ALTERNATE");
                    }
                } else if (Character.isDigit(strTrim.charAt(0))) {
                    char[] charArray = strTrim.toCharArray();
                    int i10 = 0;
                    char c7 = '.';
                    int i11 = 0;
                    while (i10 < charArray.length && c7 == '.') {
                        int i12 = 0;
                        while (i10 < charArray.length && (c7 = charArray[i10]) >= '0' && c7 <= '9') {
                            i12 = ((i12 * 10) + c7) - 48;
                            i10++;
                        }
                        i11 = (i11 << 8) + i12;
                        i10++;
                    }
                    while (i10 < charArray.length && Character.isWhitespace(charArray[i10])) {
                        i10++;
                    }
                    int i13 = i10;
                    while (i13 < charArray.length && !Character.isWhitespace(charArray[i13])) {
                        i13++;
                    }
                    b bVar = new b(aVar.f18431b, strTrim.substring(i10, i13), 32, null);
                    h hVar = new h(bVar, i11, 0);
                    Logger logger = f14483c;
                    if (logger.isDebugEnabled()) {
                        logger.debug("Adding " + bVar + " with addr " + hVar);
                    }
                    this.f14484a.put(bVar, hVar);
                }
            }
        }
    }
}
