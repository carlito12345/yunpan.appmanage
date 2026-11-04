package okhttp3.internal.http2;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import fg.e0;
import fg.i;
import fg.k;
import fg.l;
import fg.z;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import okhttp3.internal.Util;
import org.mozilla.universalchardet.prober.HebrewProber;
import ue.d;

/* loaded from: classes.dex */
final class Hpack {
    static final Map<l, Integer> NAME_TO_FIRST_INDEX;
    private static final int PREFIX_4_BITS = 15;
    private static final int PREFIX_5_BITS = 31;
    private static final int PREFIX_6_BITS = 63;
    private static final int PREFIX_7_BITS = 127;
    static final Header[] STATIC_HEADER_TABLE;

    public static final class Reader {
        Header[] dynamicTable;
        int dynamicTableByteCount;
        int headerCount;
        private final List<Header> headerList;
        private final int headerTableSizeSetting;
        private int maxDynamicTableByteCount;
        int nextHeaderIndex;
        private final k source;

        public Reader(int i10, z zVar) {
            this(i10, i10, zVar);
        }

        private void adjustDynamicTableByteCount() {
            int i10 = this.maxDynamicTableByteCount;
            int i11 = this.dynamicTableByteCount;
            if (i10 < i11) {
                if (i10 == 0) {
                    clearDynamicTable();
                } else {
                    evictToRecoverBytes(i11 - i10);
                }
            }
        }

        private void clearDynamicTable() {
            Arrays.fill(this.dynamicTable, (Object) null);
            this.nextHeaderIndex = this.dynamicTable.length - 1;
            this.headerCount = 0;
            this.dynamicTableByteCount = 0;
        }

        private int dynamicTableIndex(int i10) {
            return this.nextHeaderIndex + 1 + i10;
        }

        private int evictToRecoverBytes(int i10) {
            int i11;
            int i12 = 0;
            if (i10 > 0) {
                int length = this.dynamicTable.length;
                while (true) {
                    length--;
                    i11 = this.nextHeaderIndex;
                    if (length < i11 || i10 <= 0) {
                        break;
                    }
                    int i13 = this.dynamicTable[length].hpackSize;
                    i10 -= i13;
                    this.dynamicTableByteCount -= i13;
                    this.headerCount--;
                    i12++;
                }
                Header[] headerArr = this.dynamicTable;
                System.arraycopy(headerArr, i11 + 1, headerArr, i11 + 1 + i12, this.headerCount);
                this.nextHeaderIndex += i12;
            }
            return i12;
        }

        private l getName(int i10) throws IOException {
            if (isStaticHeader(i10)) {
                return Hpack.STATIC_HEADER_TABLE[i10].name;
            }
            int iDynamicTableIndex = dynamicTableIndex(i10 - Hpack.STATIC_HEADER_TABLE.length);
            if (iDynamicTableIndex >= 0) {
                Header[] headerArr = this.dynamicTable;
                if (iDynamicTableIndex < headerArr.length) {
                    return headerArr[iDynamicTableIndex].name;
                }
            }
            throw new IOException("Header index too large " + (i10 + 1));
        }

        private void insertIntoDynamicTable(int i10, Header header) {
            this.headerList.add(header);
            int i11 = header.hpackSize;
            if (i10 != -1) {
                i11 -= this.dynamicTable[dynamicTableIndex(i10)].hpackSize;
            }
            int i12 = this.maxDynamicTableByteCount;
            if (i11 > i12) {
                clearDynamicTable();
                return;
            }
            int iEvictToRecoverBytes = evictToRecoverBytes((this.dynamicTableByteCount + i11) - i12);
            if (i10 == -1) {
                int i13 = this.headerCount + 1;
                Header[] headerArr = this.dynamicTable;
                if (i13 > headerArr.length) {
                    Header[] headerArr2 = new Header[headerArr.length * 2];
                    System.arraycopy(headerArr, 0, headerArr2, headerArr.length, headerArr.length);
                    this.nextHeaderIndex = this.dynamicTable.length - 1;
                    this.dynamicTable = headerArr2;
                }
                int i14 = this.nextHeaderIndex;
                this.nextHeaderIndex = i14 - 1;
                this.dynamicTable[i14] = header;
                this.headerCount++;
            } else {
                this.dynamicTable[dynamicTableIndex(i10) + iEvictToRecoverBytes + i10] = header;
            }
            this.dynamicTableByteCount += i11;
        }

        private boolean isStaticHeader(int i10) {
            return i10 >= 0 && i10 <= Hpack.STATIC_HEADER_TABLE.length - 1;
        }

        private int readByte() {
            return this.source.readByte() & 255;
        }

        private void readIndexedHeader(int i10) throws IOException {
            if (isStaticHeader(i10)) {
                this.headerList.add(Hpack.STATIC_HEADER_TABLE[i10]);
                return;
            }
            int iDynamicTableIndex = dynamicTableIndex(i10 - Hpack.STATIC_HEADER_TABLE.length);
            if (iDynamicTableIndex >= 0) {
                Header[] headerArr = this.dynamicTable;
                if (iDynamicTableIndex < headerArr.length) {
                    this.headerList.add(headerArr[iDynamicTableIndex]);
                    return;
                }
            }
            throw new IOException("Header index too large " + (i10 + 1));
        }

        private void readLiteralHeaderWithIncrementalIndexingIndexedName(int i10) {
            insertIntoDynamicTable(-1, new Header(getName(i10), readByteString()));
        }

        private void readLiteralHeaderWithIncrementalIndexingNewName() {
            insertIntoDynamicTable(-1, new Header(Hpack.checkLowercase(readByteString()), readByteString()));
        }

        private void readLiteralHeaderWithoutIndexingIndexedName(int i10) throws IOException {
            this.headerList.add(new Header(getName(i10), readByteString()));
        }

        private void readLiteralHeaderWithoutIndexingNewName() throws IOException {
            this.headerList.add(new Header(Hpack.checkLowercase(readByteString()), readByteString()));
        }

        public List<Header> getAndResetHeaderList() {
            ArrayList arrayList = new ArrayList(this.headerList);
            this.headerList.clear();
            return arrayList;
        }

        public int maxDynamicTableByteCount() {
            return this.maxDynamicTableByteCount;
        }

        public l readByteString() {
            int i10 = readByte();
            boolean z = (i10 & 128) == 128;
            int i11 = readInt(i10, 127);
            return z ? l.l(Huffman.get().decode(this.source.B(i11))) : this.source.c(i11);
        }

        public void readHeaders() throws IOException {
            while (!this.source.j()) {
                byte b10 = this.source.readByte();
                int i10 = b10 & 255;
                if (i10 == 128) {
                    throw new IOException("index == 0");
                }
                if ((b10 & 128) == 128) {
                    readIndexedHeader(readInt(i10, 127) - 1);
                } else if (i10 == 64) {
                    readLiteralHeaderWithIncrementalIndexingNewName();
                } else if ((b10 & 64) == 64) {
                    readLiteralHeaderWithIncrementalIndexingIndexedName(readInt(i10, 63) - 1);
                } else if ((b10 & HebrewProber.SPACE) == 32) {
                    int i11 = readInt(i10, 31);
                    this.maxDynamicTableByteCount = i11;
                    if (i11 < 0 || i11 > this.headerTableSizeSetting) {
                        throw new IOException("Invalid dynamic table size update " + this.maxDynamicTableByteCount);
                    }
                    adjustDynamicTableByteCount();
                } else if (i10 == 16 || i10 == 0) {
                    readLiteralHeaderWithoutIndexingNewName();
                } else {
                    readLiteralHeaderWithoutIndexingIndexedName(readInt(i10, 15) - 1);
                }
            }
        }

        public int readInt(int i10, int i11) {
            int i12 = i10 & i11;
            if (i12 < i11) {
                return i12;
            }
            int i13 = 0;
            while (true) {
                int i14 = readByte();
                if ((i14 & 128) == 0) {
                    return i11 + (i14 << i13);
                }
                i11 += (i14 & 127) << i13;
                i13 += 7;
            }
        }

        public Reader(int i10, int i11, z zVar) {
            this.headerList = new ArrayList();
            this.dynamicTable = new Header[8];
            this.nextHeaderIndex = 7;
            this.headerCount = 0;
            this.dynamicTableByteCount = 0;
            this.headerTableSizeSetting = i10;
            this.maxDynamicTableByteCount = i11;
            this.source = e0.c(zVar);
        }
    }

    public static final class Writer {
        private static final int SETTINGS_HEADER_TABLE_SIZE = 4096;
        private static final int SETTINGS_HEADER_TABLE_SIZE_LIMIT = 16384;
        Header[] dynamicTable;
        int dynamicTableByteCount;
        private boolean emitDynamicTableSizeUpdate;
        int headerCount;
        int headerTableSizeSetting;
        int maxDynamicTableByteCount;
        int nextHeaderIndex;
        private final i out;
        private int smallestHeaderTableSizeSetting;
        private final boolean useCompression;

        public Writer(i iVar) {
            this(4096, true, iVar);
        }

        private void adjustDynamicTableByteCount() {
            int i10 = this.maxDynamicTableByteCount;
            int i11 = this.dynamicTableByteCount;
            if (i10 < i11) {
                if (i10 == 0) {
                    clearDynamicTable();
                } else {
                    evictToRecoverBytes(i11 - i10);
                }
            }
        }

        private void clearDynamicTable() {
            Arrays.fill(this.dynamicTable, (Object) null);
            this.nextHeaderIndex = this.dynamicTable.length - 1;
            this.headerCount = 0;
            this.dynamicTableByteCount = 0;
        }

        private int evictToRecoverBytes(int i10) {
            int i11;
            int i12 = 0;
            if (i10 > 0) {
                int length = this.dynamicTable.length;
                while (true) {
                    length--;
                    i11 = this.nextHeaderIndex;
                    if (length < i11 || i10 <= 0) {
                        break;
                    }
                    int i13 = this.dynamicTable[length].hpackSize;
                    i10 -= i13;
                    this.dynamicTableByteCount -= i13;
                    this.headerCount--;
                    i12++;
                }
                Header[] headerArr = this.dynamicTable;
                System.arraycopy(headerArr, i11 + 1, headerArr, i11 + 1 + i12, this.headerCount);
                Header[] headerArr2 = this.dynamicTable;
                int i14 = this.nextHeaderIndex;
                Arrays.fill(headerArr2, i14 + 1, i14 + 1 + i12, (Object) null);
                this.nextHeaderIndex += i12;
            }
            return i12;
        }

        private void insertIntoDynamicTable(Header header) {
            int i10 = header.hpackSize;
            int i11 = this.maxDynamicTableByteCount;
            if (i10 > i11) {
                clearDynamicTable();
                return;
            }
            evictToRecoverBytes((this.dynamicTableByteCount + i10) - i11);
            int i12 = this.headerCount + 1;
            Header[] headerArr = this.dynamicTable;
            if (i12 > headerArr.length) {
                Header[] headerArr2 = new Header[headerArr.length * 2];
                System.arraycopy(headerArr, 0, headerArr2, headerArr.length, headerArr.length);
                this.nextHeaderIndex = this.dynamicTable.length - 1;
                this.dynamicTable = headerArr2;
            }
            int i13 = this.nextHeaderIndex;
            this.nextHeaderIndex = i13 - 1;
            this.dynamicTable[i13] = header;
            this.headerCount++;
            this.dynamicTableByteCount += i10;
        }

        public void setHeaderTableSizeSetting(int i10) {
            this.headerTableSizeSetting = i10;
            int iMin = Math.min(i10, 16384);
            int i11 = this.maxDynamicTableByteCount;
            if (i11 == iMin) {
                return;
            }
            if (iMin < i11) {
                this.smallestHeaderTableSizeSetting = Math.min(this.smallestHeaderTableSizeSetting, iMin);
            }
            this.emitDynamicTableSizeUpdate = true;
            this.maxDynamicTableByteCount = iMin;
            adjustDynamicTableByteCount();
        }

        public void writeByteString(l lVar) throws EOFException {
            if (!this.useCompression || Huffman.get().encodedLength(lVar) >= lVar.g()) {
                writeInt(lVar.g(), 127, 0);
                this.out.T(lVar);
                return;
            }
            i iVar = new i();
            Huffman.get().encode(lVar, iVar);
            l lVarC = iVar.c(iVar.f5853b);
            writeInt(lVarC.g(), 127, 128);
            this.out.T(lVarC);
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x0070  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x00a8  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00b0  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void writeHeaders(List<Header> list) throws EOFException {
            int length;
            int length2;
            if (this.emitDynamicTableSizeUpdate) {
                int i10 = this.smallestHeaderTableSizeSetting;
                if (i10 < this.maxDynamicTableByteCount) {
                    writeInt(i10, 31, 32);
                }
                this.emitDynamicTableSizeUpdate = false;
                this.smallestHeaderTableSizeSetting = Integer.MAX_VALUE;
                writeInt(this.maxDynamicTableByteCount, 31, 32);
            }
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                Header header = list.get(i11);
                l lVarO = header.name.o();
                l lVar = header.value;
                Integer num = Hpack.NAME_TO_FIRST_INDEX.get(lVarO);
                if (num != null) {
                    int iIntValue = num.intValue();
                    length2 = iIntValue + 1;
                    if (length2 > 1 && length2 < 8) {
                        Header[] headerArr = Hpack.STATIC_HEADER_TABLE;
                        if (Util.equal(headerArr[iIntValue].value, lVar)) {
                            length = length2;
                        } else if (Util.equal(headerArr[length2].value, lVar)) {
                            length2 = iIntValue + 2;
                            length = length2;
                        }
                        if (length2 == -1) {
                            int i12 = this.nextHeaderIndex + 1;
                            int length3 = this.dynamicTable.length;
                            while (true) {
                                if (i12 >= length3) {
                                    break;
                                }
                                if (Util.equal(this.dynamicTable[i12].name, lVarO)) {
                                    if (Util.equal(this.dynamicTable[i12].value, lVar)) {
                                        length2 = (i12 - this.nextHeaderIndex) + Hpack.STATIC_HEADER_TABLE.length;
                                        break;
                                    } else if (length == -1) {
                                        length = (i12 - this.nextHeaderIndex) + Hpack.STATIC_HEADER_TABLE.length;
                                    }
                                }
                                i12++;
                            }
                        }
                        if (length2 == -1) {
                            writeInt(length2, 127, 128);
                        } else if (length == -1) {
                            this.out.W(64);
                            writeByteString(lVarO);
                            writeByteString(lVar);
                            insertIntoDynamicTable(header);
                        } else {
                            l lVar2 = Header.PSEUDO_PREFIX;
                            lVarO.getClass();
                            d.e(lVar2, RequestParameters.PREFIX);
                            if (!lVarO.n(lVar2, lVar2.g()) || Header.TARGET_AUTHORITY.equals(lVarO)) {
                                writeInt(length, 63, 64);
                                writeByteString(lVar);
                                insertIntoDynamicTable(header);
                            } else {
                                writeInt(length, 15, 0);
                                writeByteString(lVar);
                            }
                        }
                    }
                    length = length2;
                } else {
                    length = -1;
                }
                length2 = -1;
                if (length2 == -1) {
                }
                if (length2 == -1) {
                }
            }
        }

        public void writeInt(int i10, int i11, int i12) {
            if (i10 < i11) {
                this.out.W(i10 | i12);
                return;
            }
            this.out.W(i12 | i11);
            int i13 = i10 - i11;
            while (i13 >= 128) {
                this.out.W(128 | (i13 & 127));
                i13 >>>= 7;
            }
            this.out.W(i13);
        }

        public Writer(int i10, boolean z, i iVar) {
            this.smallestHeaderTableSizeSetting = Integer.MAX_VALUE;
            this.dynamicTable = new Header[8];
            this.nextHeaderIndex = r0.length - 1;
            this.headerCount = 0;
            this.dynamicTableByteCount = 0;
            this.headerTableSizeSetting = i10;
            this.maxDynamicTableByteCount = i10;
            this.useCompression = z;
            this.out = iVar;
        }
    }

    static {
        Header header = new Header(Header.TARGET_AUTHORITY, "");
        l lVar = Header.TARGET_METHOD;
        Header header2 = new Header(lVar, "GET");
        Header header3 = new Header(lVar, "POST");
        l lVar2 = Header.TARGET_PATH;
        Header header4 = new Header(lVar2, "/");
        Header header5 = new Header(lVar2, "/index.html");
        l lVar3 = Header.TARGET_SCHEME;
        Header header6 = new Header(lVar3, "http");
        Header header7 = new Header(lVar3, "https");
        l lVar4 = Header.RESPONSE_STATUS;
        STATIC_HEADER_TABLE = new Header[]{header, header2, header3, header4, header5, header6, header7, new Header(lVar4, "200"), new Header(lVar4, "204"), new Header(lVar4, "206"), new Header(lVar4, "304"), new Header(lVar4, "400"), new Header(lVar4, "404"), new Header(lVar4, "500"), new Header("accept-charset", ""), new Header("accept-encoding", "gzip, deflate"), new Header("accept-language", ""), new Header("accept-ranges", ""), new Header("accept", ""), new Header("access-control-allow-origin", ""), new Header("age", ""), new Header("allow", ""), new Header("authorization", ""), new Header("cache-control", ""), new Header("content-disposition", ""), new Header("content-encoding", ""), new Header("content-language", ""), new Header("content-length", ""), new Header("content-location", ""), new Header("content-range", ""), new Header("content-type", ""), new Header("cookie", ""), new Header("date", ""), new Header("etag", ""), new Header("expect", ""), new Header("expires", ""), new Header("from", ""), new Header("host", ""), new Header("if-match", ""), new Header("if-modified-since", ""), new Header("if-none-match", ""), new Header("if-range", ""), new Header("if-unmodified-since", ""), new Header("last-modified", ""), new Header("link", ""), new Header(RequestParameters.SUBRESOURCE_LOCATION, ""), new Header("max-forwards", ""), new Header("proxy-authenticate", ""), new Header("proxy-authorization", ""), new Header("range", ""), new Header(RequestParameters.SUBRESOURCE_REFERER, ""), new Header("refresh", ""), new Header("retry-after", ""), new Header("server", ""), new Header("set-cookie", ""), new Header("strict-transport-security", ""), new Header("transfer-encoding", ""), new Header("user-agent", ""), new Header("vary", ""), new Header("via", ""), new Header("www-authenticate", "")};
        NAME_TO_FIRST_INDEX = nameToFirstIndex();
    }

    private Hpack() {
    }

    public static l checkLowercase(l lVar) throws IOException {
        int iG = lVar.g();
        for (int i10 = 0; i10 < iG; i10++) {
            byte bJ = lVar.j(i10);
            if (bJ >= 65 && bJ <= 90) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: ".concat(lVar.q()));
            }
        }
        return lVar;
    }

    private static Map<l, Integer> nameToFirstIndex() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(STATIC_HEADER_TABLE.length);
        int i10 = 0;
        while (true) {
            Header[] headerArr = STATIC_HEADER_TABLE;
            if (i10 >= headerArr.length) {
                return Collections.unmodifiableMap(linkedHashMap);
            }
            if (!linkedHashMap.containsKey(headerArr[i10].name)) {
                linkedHashMap.put(headerArr[i10].name, Integer.valueOf(i10));
            }
            i10++;
        }
    }
}
