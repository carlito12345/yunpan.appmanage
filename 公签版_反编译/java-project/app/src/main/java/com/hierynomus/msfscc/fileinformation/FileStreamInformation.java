package com.hierynomus.msfscc.fileinformation;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class FileStreamInformation implements FileQueryableInformation {
    private List<FileStreamInformationItem> streamList;

    public FileStreamInformation(List<FileStreamInformationItem> list) {
        this.streamList = list;
    }

    public List<FileStreamInformationItem> getStreamList() {
        return this.streamList;
    }

    public List<String> getStreamNames() {
        ArrayList arrayList = new ArrayList();
        Iterator<FileStreamInformationItem> it = this.streamList.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getName());
        }
        return arrayList;
    }
}
