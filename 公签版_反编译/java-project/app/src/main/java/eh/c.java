package eh;

import androidx.fragment.app.b0;
import java.util.Locale;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f4982a = Pattern.compile("(\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*\\.)+\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*");

    public static dh.h a(String str, dh.f fVar) throws ClassNotFoundException {
        dh.h iVar;
        dh.f fVar2;
        dh.h aVar;
        if (f4982a.matcher(str).matches()) {
            try {
                Class<?> cls = Class.forName(str);
                try {
                    iVar = (dh.h) cls.getConstructor(null).newInstance(null);
                } catch (ClassCastException e7) {
                    throw new b0(1, cls.getName().concat(" does not implement the interface org.apache.commons.net.ftp.FTPFileEntryParser."), e7);
                } catch (Exception e10) {
                    e = e10;
                    throw new b0(1, "Error initializing parser", e);
                } catch (ExceptionInInitializerError e11) {
                    e = e11;
                    throw new b0(1, "Error initializing parser", e);
                }
            } catch (ClassNotFoundException unused) {
            }
        } else {
            iVar = null;
        }
        if (iVar == null) {
            String upperCase = str.toUpperCase(Locale.ENGLISH);
            if (upperCase.contains("UNIX_LTRIM")) {
                iVar = new i(fVar, true);
            } else if (upperCase.contains("UNIX")) {
                iVar = new i(fVar, false);
            } else if (upperCase.contains("VMS")) {
                iVar = new k(fVar);
            } else {
                if (upperCase.contains("WINDOWS")) {
                    if (fVar == null || !"WINDOWS".equals(fVar.f4660a)) {
                        fVar2 = fVar != null ? new dh.f(fVar) : null;
                        aVar = new a(new dh.h[]{new g(fVar), new i(fVar2, fVar2 != null && "UNIX_LTRIM".equals(fVar2.f4660a))});
                    } else {
                        aVar = new g(fVar);
                    }
                } else if (upperCase.contains("OS/2")) {
                    iVar = new f(fVar, 2);
                } else if (upperCase.contains("OS/400") || upperCase.contains("AS/400")) {
                    if (fVar == null || !"OS/400".equals(fVar.f4660a)) {
                        fVar2 = fVar != null ? new dh.f(fVar) : null;
                        aVar = new a(new dh.h[]{new f(fVar, 3), new i(fVar2, fVar2 != null && "UNIX_LTRIM".equals(fVar2.f4660a))});
                    } else {
                        aVar = new f(fVar, 3);
                    }
                } else if (upperCase.contains("MVS")) {
                    iVar = new e();
                } else if (upperCase.contains("NETWARE")) {
                    iVar = new f(fVar, 1);
                } else if (upperCase.contains("MACOS PETER")) {
                    iVar = new f(fVar, 0);
                } else {
                    if (!upperCase.contains("TYPE: L8")) {
                        throw new b0("Unknown parser type: ".concat(str), 1);
                    }
                    iVar = new i(fVar, false);
                }
                iVar = aVar;
            }
        }
        if (iVar instanceof dh.a) {
            ((dh.a) iVar).a(fVar);
        }
        return iVar;
    }
}
