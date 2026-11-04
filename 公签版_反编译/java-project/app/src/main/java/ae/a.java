package ae;

import ce.u0;
import com.hierynomus.smbfs.SmbPath;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Hashtable;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: d, reason: collision with root package name */
    public static int f573d;

    /* renamed from: a, reason: collision with root package name */
    public static final String f570a = wd.a.f17870a.getProperty("jcifs.smb1.netbios.lmhosts");

    /* renamed from: b, reason: collision with root package name */
    public static final Hashtable f571b = new Hashtable();

    /* renamed from: c, reason: collision with root package name */
    public static long f572c = 1;

    /* renamed from: e, reason: collision with root package name */
    public static final de.d f574e = de.d.r();

    public static synchronized g a(b bVar) {
        g gVar;
        gVar = null;
        try {
            try {
                String str = f570a;
                if (str != null) {
                    File file = new File(str);
                    long jLastModified = file.lastModified();
                    if (jLastModified > f572c) {
                        f572c = jLastModified;
                        f571b.clear();
                        f573d = 0;
                        b(new FileReader(file));
                    }
                    gVar = (g) f571b.get(bVar);
                }
            } catch (FileNotFoundException e7) {
                if (de.d.f4630b > 1) {
                    de.d dVar = f574e;
                    dVar.getClass();
                    e7.printStackTrace(dVar);
                }
            } catch (IOException e10) {
                if (de.d.f4630b > 0) {
                    e10.printStackTrace(f574e);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return gVar;
    }

    public static void b(InputStreamReader inputStreamReader) throws IOException {
        String line;
        int i10;
        BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
        while (true) {
            String line2 = bufferedReader.readLine();
            if (line2 == null) {
                return;
            }
            String strTrim = line2.toUpperCase().trim();
            if (strTrim.length() != 0) {
                if (strTrim.charAt(0) == '#') {
                    if (strTrim.startsWith("#INCLUDE ")) {
                        String str = "smb1:" + strTrim.substring(strTrim.indexOf(92)).replace(SmbPath.SEPARATOR, '/');
                        if (f573d > 0) {
                            try {
                                b(new InputStreamReader(new u0(str)));
                                f573d--;
                                do {
                                    line = bufferedReader.readLine();
                                    if (line != null) {
                                    }
                                } while (!line.toUpperCase().trim().startsWith("#END_ALTERNATE"));
                            } catch (IOException e7) {
                                de.d dVar = f574e;
                                dVar.getClass();
                                e7.printStackTrace(dVar);
                            }
                        } else {
                            b(new InputStreamReader(new u0(str)));
                        }
                    } else if (strTrim.startsWith("#BEGIN_ALTERNATE")) {
                        f573d++;
                    } else if (strTrim.startsWith("#END_ALTERNATE") && (i10 = f573d) > 0) {
                        f573d = i10 - 1;
                        throw new IOException("no lmhosts alternate includes loaded");
                    }
                } else if (Character.isDigit(strTrim.charAt(0))) {
                    char[] charArray = strTrim.toCharArray();
                    int i11 = 0;
                    char c7 = '.';
                    int i12 = 0;
                    while (i11 < charArray.length && c7 == '.') {
                        int i13 = 0;
                        while (i11 < charArray.length && (c7 = charArray[i11]) >= '0' && c7 <= '9') {
                            i13 = ((i13 * 10) + c7) - 48;
                            i11++;
                        }
                        i12 = (i12 << 8) + i13;
                        i11++;
                    }
                    while (i11 < charArray.length && Character.isWhitespace(charArray[i11])) {
                        i11++;
                    }
                    int i14 = i11;
                    while (i14 < charArray.length && !Character.isWhitespace(charArray[i14])) {
                        i14++;
                    }
                    b bVar = new b(strTrim.substring(i11, i14), 32, null);
                    f571b.put(bVar, new g(bVar, i12, 0));
                }
            }
        }
    }
}
