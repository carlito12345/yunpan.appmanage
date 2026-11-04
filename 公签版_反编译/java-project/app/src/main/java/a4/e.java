package a4;

import a9.o;
import android.database.Cursor;
import com.alibaba.sdk.android.oss.common.OSSHeaders;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import je.s;
import ke.f;
import ke.i;
import org.simpleframework.xml.strategy.Name;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final String f394a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f395b;

    /* renamed from: c, reason: collision with root package name */
    public final AbstractSet f396c;

    /* renamed from: d, reason: collision with root package name */
    public final AbstractSet f397d;

    public e(String str, Map map, AbstractSet abstractSet, AbstractSet abstractSet2) {
        ue.d.e(abstractSet, "foreignKeys");
        this.f394a = str;
        this.f395b = map;
        this.f396c = abstractSet;
        this.f397d = abstractSet2;
    }

    /* JADX WARN: Finally extract failed */
    public static final e a(c4.a aVar, String str) {
        Map mapB;
        i iVarC;
        i iVar;
        ue.d.e(aVar, "database");
        Cursor cursorS = aVar.s("PRAGMA table_info(`" + str + "`)");
        try {
            if (cursorS.getColumnCount() <= 0) {
                mapB = s.f9871a;
                qf.c.g(cursorS, null);
            } else {
                int columnIndex = cursorS.getColumnIndex("name");
                int columnIndex2 = cursorS.getColumnIndex("type");
                int columnIndex3 = cursorS.getColumnIndex("notnull");
                int columnIndex4 = cursorS.getColumnIndex("pk");
                int columnIndex5 = cursorS.getColumnIndex("dflt_value");
                f fVar = new f();
                while (cursorS.moveToNext()) {
                    String string = cursorS.getString(columnIndex);
                    String string2 = cursorS.getString(columnIndex2);
                    boolean z = cursorS.getInt(columnIndex3) != 0;
                    int i10 = cursorS.getInt(columnIndex4);
                    String string3 = cursorS.getString(columnIndex5);
                    ue.d.d(string, "name");
                    ue.d.d(string2, "type");
                    fVar.put(string, new a(i10, 2, string, string2, string3, z));
                }
                mapB = fVar.b();
                qf.c.g(cursorS, null);
            }
            cursorS = aVar.s("PRAGMA foreign_key_list(`" + str + "`)");
            try {
                int columnIndex6 = cursorS.getColumnIndex(Name.MARK);
                int columnIndex7 = cursorS.getColumnIndex("seq");
                int columnIndex8 = cursorS.getColumnIndex("table");
                int columnIndex9 = cursorS.getColumnIndex("on_delete");
                int columnIndex10 = cursorS.getColumnIndex("on_update");
                List listR0 = p000if.a.r0(cursorS);
                cursorS.moveToPosition(-1);
                i iVar2 = new i();
                while (cursorS.moveToNext()) {
                    if (cursorS.getInt(columnIndex7) == 0) {
                        int i11 = cursorS.getInt(columnIndex6);
                        ArrayList arrayList = new ArrayList();
                        ArrayList arrayList2 = new ArrayList();
                        int i12 = columnIndex6;
                        ArrayList arrayList3 = new ArrayList();
                        for (Object obj : listR0) {
                            int i13 = columnIndex7;
                            List list = listR0;
                            if (((c) obj).f386a == i11) {
                                arrayList3.add(obj);
                            }
                            columnIndex7 = i13;
                            listR0 = list;
                        }
                        int i14 = columnIndex7;
                        List list2 = listR0;
                        Iterator it = arrayList3.iterator();
                        while (it.hasNext()) {
                            c cVar = (c) it.next();
                            arrayList.add(cVar.f388c);
                            arrayList2.add(cVar.f389d);
                        }
                        String string4 = cursorS.getString(columnIndex8);
                        ue.d.d(string4, "cursor.getString(tableColumnIndex)");
                        String string5 = cursorS.getString(columnIndex9);
                        ue.d.d(string5, "cursor.getString(onDeleteColumnIndex)");
                        String string6 = cursorS.getString(columnIndex10);
                        ue.d.d(string6, "cursor.getString(onUpdateColumnIndex)");
                        iVar2.add(new b(string4, string5, string6, arrayList, arrayList2));
                        columnIndex6 = i12;
                        columnIndex7 = i14;
                        listR0 = list2;
                        columnIndex8 = columnIndex8;
                    }
                }
                i iVarC2 = o.c(iVar2);
                qf.c.g(cursorS, null);
                cursorS = aVar.s("PRAGMA index_list(`" + str + "`)");
                try {
                    int columnIndex11 = cursorS.getColumnIndex("name");
                    int columnIndex12 = cursorS.getColumnIndex(OSSHeaders.ORIGIN);
                    int columnIndex13 = cursorS.getColumnIndex("unique");
                    if (columnIndex11 == -1 || columnIndex12 == -1 || columnIndex13 == -1) {
                        iVarC = null;
                        qf.c.g(cursorS, null);
                    } else {
                        i iVar3 = new i();
                        while (cursorS.moveToNext()) {
                            if ("c".equals(cursorS.getString(columnIndex12))) {
                                String string7 = cursorS.getString(columnIndex11);
                                boolean z4 = cursorS.getInt(columnIndex13) == 1;
                                ue.d.d(string7, "name");
                                d dVarS0 = p000if.a.s0(aVar, string7, z4);
                                if (dVarS0 == null) {
                                    qf.c.g(cursorS, null);
                                    iVar = null;
                                    break;
                                }
                                iVar3.add(dVarS0);
                            }
                        }
                        iVarC = o.c(iVar3);
                        qf.c.g(cursorS, null);
                    }
                    iVar = iVarC;
                    return new e(str, mapB, iVarC2, iVar);
                } finally {
                }
            } catch (Throwable th2) {
                try {
                    throw th2;
                } finally {
                }
            }
        } finally {
            try {
                throw th2;
            } finally {
            }
        }
    }

    public final boolean equals(Object obj) {
        AbstractSet abstractSet;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        if (!this.f394a.equals(eVar.f394a) || !this.f395b.equals(eVar.f395b) || !ue.d.a(this.f396c, eVar.f396c)) {
            return false;
        }
        AbstractSet abstractSet2 = this.f397d;
        if (abstractSet2 == null || (abstractSet = eVar.f397d) == null) {
            return true;
        }
        return abstractSet2.equals(abstractSet);
    }

    public final int hashCode() {
        return this.f396c.hashCode() + ((this.f395b.hashCode() + (this.f394a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "TableInfo{name='" + this.f394a + "', columns=" + this.f395b + ", foreignKeys=" + this.f396c + ", indices=" + this.f397d + '}';
    }
}
