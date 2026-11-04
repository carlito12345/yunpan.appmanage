package a9;

import java.util.Locale;

/* loaded from: classes.dex */
public final class m extends n {
    public /* synthetic */ m(String str) {
        super(str);
    }

    public m(String str, int i10, String str2) {
        String str3;
        Locale locale = Locale.ROOT;
        switch (i10) {
            case 0:
                str3 = "kex";
                break;
            case 1:
                str3 = "server_host_key";
                break;
            case 2:
                str3 = "cipher.c2s";
                break;
            case 3:
                str3 = "cipher.s2c";
                break;
            case 4:
                str3 = "mac.c2s";
                break;
            case 5:
                str3 = "mac.s2c";
                break;
            case 6:
                str3 = "compression.c2s";
                break;
            case 7:
                str3 = "compression.s2c";
                break;
            case 8:
                str3 = "lang.c2s";
                break;
            case 9:
                str3 = "lang.s2c";
                break;
            default:
                str3 = "";
                break;
        }
        StringBuilder sb2 = new StringBuilder("Algorithm negotiation fail: algorithmName=\"");
        sb2.append(str3);
        sb2.append("\" jschProposal=\"");
        sb2.append(str);
        sb2.append("\" serverProposal=\"");
        super(g.b.l(str2, "\"", sb2));
    }
}
