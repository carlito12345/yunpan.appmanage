package s4;

import java.io.IOException;
import java.io.StringWriter;

/* loaded from: classes.dex */
public final class i extends b5.c {

    /* renamed from: c, reason: collision with root package name */
    public final int f14310c;

    public i(int i10, int i11) {
        super(i10);
        this.f14310c = i11;
    }

    public final int g() {
        int length = this.f2559b.length;
        if (length == 0) {
            return 0;
        }
        h hVar = (h) d(length - 1);
        return hVar.b() + hVar.e();
    }

    public final void h(b5.b bVar) throws IOException {
        int i10 = bVar.f2555c;
        int length = this.f2559b.length;
        if (bVar.d()) {
            for (int i11 = 0; i11 < length; i11++) {
                h hVar = (h) d(i11);
                int iB = hVar.b() * 2;
                String string = null;
                if (iB != 0) {
                    int i12 = bVar.f2558f;
                    int i13 = bVar.f2557e - ((i12 / 2) + ((i12 * 2) + 8));
                    String strG = hVar.g();
                    if (strG != null) {
                        String str = "  " + hVar.f() + ": ";
                        int length2 = str.length();
                        int length3 = i13 == 0 ? strG.length() : i13 - length2;
                        StringWriter stringWriter = new StringWriter((str.length() + strG.length()) * 3);
                        b5.i iVar = new b5.i(stringWriter, length2, length3, "");
                        try {
                            ((b5.d) iVar.f2575e).write(str);
                            ((b5.d) iVar.f2576f).write(strG);
                            StringBuffer stringBuffer = (StringBuffer) iVar.f2574d;
                            StringBuffer stringBuffer2 = (StringBuffer) iVar.f2573c;
                            b5.d dVar = (b5.d) iVar.f2576f;
                            b5.d dVar2 = (b5.d) iVar.f2575e;
                            try {
                                b5.i.b(stringBuffer2, dVar2);
                                b5.i.b(stringBuffer, dVar);
                                iVar.k();
                                b5.i.b(stringBuffer2, dVar2);
                                while (stringBuffer2.length() != 0) {
                                    dVar.write(10);
                                    iVar.k();
                                }
                                b5.i.b(stringBuffer, dVar);
                                while (stringBuffer.length() != 0) {
                                    dVar2.write(10);
                                    iVar.k();
                                }
                                string = stringWriter.toString();
                            } catch (IOException e7) {
                                throw new RuntimeException(e7);
                            }
                        } catch (IOException e10) {
                            throw new RuntimeException("shouldn't happen", e10);
                        }
                    }
                }
                if (string != null) {
                    bVar.b(iB, string);
                } else if (iB != 0) {
                    bVar.b(iB, "");
                }
            }
        }
        for (int i14 = 0; i14 < length; i14++) {
            h hVar2 = (h) d(i14);
            try {
                hVar2.l(bVar);
            } catch (RuntimeException e11) {
                throw p4.a.a(e11, "...while writing " + hVar2);
            }
        }
        int i15 = (bVar.f2555c - i10) / 2;
        if (i15 == g()) {
            return;
        }
        throw new RuntimeException("write length mismatch; expected " + g() + " but actually wrote " + i15);
    }
}
