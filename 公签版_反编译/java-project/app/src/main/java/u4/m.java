package u4;

import java.util.TreeMap;

/* loaded from: classes.dex */
public final class m extends o {
    @Override // u4.p
    public final q b() {
        return q.TYPE_HEADER_ITEM;
    }

    @Override // u4.p
    public final int c() {
        return 112;
    }

    @Override // u4.p
    public final void d(f fVar, b5.b bVar) {
        int iB = fVar.f15356c.b();
        int iB2 = fVar.f15354a.b();
        w wVar = fVar.f15356c;
        int iB3 = wVar.b();
        wVar.f();
        int i10 = (iB3 + wVar.f15406i) - iB2;
        String strA = g.b.A("dex\n", "035", "\u0000");
        if (bVar.d()) {
            bVar.b(8, "magic: " + new x4.t(strA).e());
            bVar.b(4, "checksum");
            bVar.b(20, "signature");
            int i11 = fVar.f15367o;
            if (i11 < 0) {
                throw new RuntimeException("file size not yet known");
            }
            bVar.b(4, "file_size:       ".concat(qf.c.f0(i11)));
            bVar.b(4, "header_size:     ".concat(qf.c.f0(112)));
            bVar.b(4, "endian_tag:      ".concat(qf.c.f0(305419896)));
            bVar.b(4, "link_size:       0");
            bVar.b(4, "link_off:        0");
            bVar.b(4, "map_off:         ".concat(qf.c.f0(iB)));
        }
        for (int i12 = 0; i12 < 8; i12++) {
            bVar.i(strA.charAt(i12));
        }
        bVar.n(24);
        int i13 = fVar.f15367o;
        if (i13 < 0) {
            throw new RuntimeException("file size not yet known");
        }
        bVar.j(i13);
        bVar.j(112);
        bVar.j(305419896);
        bVar.n(8);
        bVar.j(iB);
        z zVar = fVar.f15358e;
        zVar.f();
        int size = ((TreeMap) zVar.f15415g).size();
        int iB4 = size == 0 ? 0 : zVar.b();
        if (bVar.d()) {
            bVar.b(4, "string_ids_size: ".concat(qf.c.f0(size)));
            bVar.b(4, "string_ids_off:  ".concat(qf.c.f0(iB4)));
        }
        bVar.j(size);
        bVar.j(iB4);
        z zVar2 = fVar.f15359f;
        zVar2.f();
        TreeMap treeMap = (TreeMap) zVar2.f15415g;
        int size2 = treeMap.size();
        int iB5 = size2 == 0 ? 0 : zVar2.b();
        if (size2 > 65536) {
            throw new o4.a(String.format("Too many type identifiers to fit in one dex file: %1$d; max is %2$d.%nYou may try using multi-dex. If multi-dex is enabled then the list of classes for the main dex list is too large.", Integer.valueOf(treeMap.values().size()), 65536));
        }
        if (bVar.d()) {
            bVar.b(4, "type_ids_size:   ".concat(qf.c.f0(size2)));
            bVar.b(4, "type_ids_off:    ".concat(qf.c.f0(iB5)));
        }
        bVar.j(size2);
        bVar.j(iB5);
        z zVar3 = fVar.f15360g;
        zVar3.f();
        int size3 = ((TreeMap) zVar3.f15415g).size();
        int iB6 = size3 == 0 ? 0 : zVar3.b();
        if (size3 > 65536) {
            throw new UnsupportedOperationException("too many proto ids");
        }
        if (bVar.d()) {
            bVar.b(4, "proto_ids_size:  ".concat(qf.c.f0(size3)));
            bVar.b(4, "proto_ids_off:   ".concat(qf.c.f0(iB6)));
        }
        bVar.j(size3);
        bVar.j(iB6);
        l lVar = fVar.f15361h;
        lVar.f();
        int size4 = lVar.f15376f.size();
        int iB7 = size4 == 0 ? 0 : lVar.b();
        if (bVar.d()) {
            bVar.b(4, "field_ids_size:  ".concat(qf.c.f0(size4)));
            bVar.b(4, "field_ids_off:   ".concat(qf.c.f0(iB7)));
        }
        bVar.j(size4);
        bVar.j(iB7);
        v vVar = fVar.f15362i;
        vVar.f();
        int size5 = vVar.f15401f.size();
        int iB8 = size5 == 0 ? 0 : vVar.b();
        if (bVar.d()) {
            bVar.b(4, "method_ids_size: ".concat(qf.c.f0(size5)));
            bVar.b(4, "method_ids_off:  ".concat(qf.c.f0(iB8)));
        }
        bVar.j(size5);
        bVar.j(iB8);
        d dVar = fVar.f15363j;
        dVar.f();
        int size6 = dVar.f15346f.size();
        int iB9 = size6 != 0 ? dVar.b() : 0;
        if (bVar.d()) {
            bVar.b(4, "class_defs_size: ".concat(qf.c.f0(size6)));
            bVar.b(4, "class_defs_off:  ".concat(qf.c.f0(iB9)));
        }
        bVar.j(size6);
        bVar.j(iB9);
        if (bVar.d()) {
            bVar.b(4, "data_size:       ".concat(qf.c.f0(i10)));
            bVar.b(4, "data_off:        ".concat(qf.c.f0(iB2)));
        }
        bVar.j(i10);
        bVar.j(iB2);
    }

    @Override // u4.p
    public final void a(f fVar) {
    }
}
