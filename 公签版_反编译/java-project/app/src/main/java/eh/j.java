package eh;

import java.io.BufferedReader;
import java.io.IOException;
import java.text.ParseException;
import java.util.StringTokenizer;

/* loaded from: classes.dex */
public abstract class j extends b {
    public j() {
        super("(.*?;[0-9]+)\\s*(\\d+)(?:/\\d+)?\\s*(\\S+)\\s+(\\S+)\\s+\\[(([0-9$A-Za-z_]+)|([0-9$A-Za-z_]+),([0-9$a-zA-Z_]+))\\]?\\s*\\([a-zA-Z]*,([a-zA-Z]*),([a-zA-Z]*),([a-zA-Z]*)\\)");
        a(null);
    }

    @Override // dh.h
    public final dh.g b(String str) {
        if (!h(str)) {
            return null;
        }
        dh.g gVar = new dh.g();
        gVar.f4666c = str;
        String strG = g(1);
        String strG2 = g(2);
        String str2 = g(3) + " " + g(4);
        String strG3 = g(5);
        String[] strArr = {g(9), g(10), g(11)};
        try {
            gVar.f4668e = this.f4981d.d(str2);
        } catch (ParseException unused) {
        }
        StringTokenizer stringTokenizer = new StringTokenizer(strG3, ",");
        int iCountTokens = stringTokenizer.countTokens();
        if (iCountTokens == 1) {
            stringTokenizer.nextToken();
        } else if (iCountTokens == 2) {
            stringTokenizer.nextToken();
            stringTokenizer.nextToken();
        }
        if (strG.lastIndexOf(".DIR") != -1) {
            gVar.f4664a = 1;
        } else {
            gVar.f4664a = 0;
        }
        gVar.f4667d = strG;
        gVar.f4665b = Long.parseLong(strG2) * 512;
        for (int i10 = 0; i10 < 3; i10++) {
            String str3 = strArr[i10];
            gVar.b(i10, 0, str3.indexOf(82) >= 0);
            gVar.b(i10, 1, str3.indexOf(87) >= 0);
            gVar.b(i10, 2, str3.indexOf(69) >= 0);
        }
        return gVar;
    }

    @Override // dh.h
    public final String d(BufferedReader bufferedReader) throws IOException {
        String line = bufferedReader.readLine();
        StringBuilder sb2 = new StringBuilder();
        while (line != null) {
            if (line.startsWith("Directory") || line.startsWith("Total")) {
                line = bufferedReader.readLine();
            } else {
                sb2.append(line);
                if (line.trim().endsWith(")")) {
                    break;
                }
                line = bufferedReader.readLine();
            }
        }
        if (sb2.length() == 0) {
            return null;
        }
        return sb2.toString();
    }

    @Override // eh.b
    public final dh.f f() {
        return new dh.f("VMS", "d-MMM-yyyy HH:mm:ss", null);
    }
}
