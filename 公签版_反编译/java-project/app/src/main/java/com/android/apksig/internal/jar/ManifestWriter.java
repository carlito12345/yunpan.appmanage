package com.android.apksig.internal.jar;

import g.b;
import j$.nio.charset.StandardCharsets;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.jar.Attributes;

/* loaded from: classes.dex */
public abstract class ManifestWriter {
    private static final byte[] CRLF = {13, 10};
    private static final int MAX_LINE_LENGTH = 70;

    private ManifestWriter() {
    }

    public static SortedMap<String, String> getAttributesSortedByName(Attributes attributes) {
        Set<Map.Entry<Object, Object>> setEntrySet = attributes.entrySet();
        TreeMap treeMap = new TreeMap();
        for (Map.Entry<Object, Object> entry : setEntrySet) {
            treeMap.put(entry.getKey().toString(), entry.getValue().toString());
        }
        return treeMap;
    }

    public static void writeAttribute(OutputStream outputStream, Attributes.Name name, String str) throws IOException {
        writeAttribute(outputStream, name.toString(), str);
    }

    public static void writeAttributes(OutputStream outputStream, SortedMap<String, String> sortedMap) throws IOException {
        for (Map.Entry<String, String> entry : sortedMap.entrySet()) {
            writeAttribute(outputStream, entry.getKey(), entry.getValue());
        }
    }

    public static void writeIndividualSection(OutputStream outputStream, String str, Attributes attributes) throws IOException {
        writeAttribute(outputStream, "Name", str);
        if (!attributes.isEmpty()) {
            writeAttributes(outputStream, getAttributesSortedByName(attributes));
        }
        writeSectionDelimiter(outputStream);
    }

    private static void writeLine(OutputStream outputStream, String str) throws IOException {
        int iMin;
        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
        int length = bytes.length;
        boolean z = true;
        int i10 = 0;
        while (length > 0) {
            if (z) {
                iMin = Math.min(length, 70);
            } else {
                outputStream.write(CRLF);
                outputStream.write(32);
                iMin = Math.min(length, 69);
            }
            outputStream.write(bytes, i10, iMin);
            i10 += iMin;
            length -= iMin;
            z = false;
        }
        outputStream.write(CRLF);
    }

    public static void writeMainSection(OutputStream outputStream, Attributes attributes) throws IOException {
        Attributes.Name name = Attributes.Name.MANIFEST_VERSION;
        String value = attributes.getValue(name);
        if (value == null) {
            throw new IllegalArgumentException("Mandatory " + name + " attribute missing");
        }
        writeAttribute(outputStream, name, value);
        if (attributes.size() > 1) {
            SortedMap<String, String> attributesSortedByName = getAttributesSortedByName(attributes);
            attributesSortedByName.remove(name.toString());
            writeAttributes(outputStream, attributesSortedByName);
        }
        writeSectionDelimiter(outputStream);
    }

    public static void writeSectionDelimiter(OutputStream outputStream) throws IOException {
        outputStream.write(CRLF);
    }

    private static void writeAttribute(OutputStream outputStream, String str, String str2) throws IOException {
        writeLine(outputStream, b.k(str, ": ", str2));
    }
}
