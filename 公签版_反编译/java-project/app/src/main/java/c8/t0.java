package c8;

import java.io.IOException;
import java.util.Calendar;
import java.util.GregorianCalendar;

/* loaded from: classes.dex */
public final class t0 extends z7.a0 {
    @Override // z7.a0
    public final Object b(h8.a aVar) throws IOException, NumberFormatException {
        int iW;
        if (aVar.e0() == 9) {
            aVar.a0();
            return null;
        }
        aVar.A();
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (aVar.e0() != 4) {
            String strY = aVar.Y();
            iW = aVar.W();
            strY.getClass();
            switch (strY) {
                case "dayOfMonth":
                    i12 = iW;
                    break;
                case "minute":
                    i14 = iW;
                    break;
                case "second":
                    i15 = iW;
                    break;
                case "year":
                    i10 = iW;
                    break;
                case "month":
                    i11 = iW;
                    break;
                case "hourOfDay":
                    i13 = iW;
                    break;
            }
        }
        aVar.M();
        return new GregorianCalendar(i10, i11, i12, i13, i14, i15);
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) throws IOException {
        if (((Calendar) obj) == null) {
            bVar.P();
            return;
        }
        bVar.J();
        bVar.N("year");
        bVar.V(r4.get(1));
        bVar.N("month");
        bVar.V(r4.get(2));
        bVar.N("dayOfMonth");
        bVar.V(r4.get(5));
        bVar.N("hourOfDay");
        bVar.V(r4.get(11));
        bVar.N("minute");
        bVar.V(r4.get(12));
        bVar.N("second");
        bVar.V(r4.get(13));
        bVar.M();
    }
}
