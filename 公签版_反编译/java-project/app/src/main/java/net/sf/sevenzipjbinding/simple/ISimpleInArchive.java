package net.sf.sevenzipjbinding.simple;

/* loaded from: classes.dex */
public interface ISimpleInArchive {
    void close();

    ISimpleInArchiveItem getArchiveItem(int i10);

    ISimpleInArchiveItem[] getArchiveItems();

    int getNumberOfItems();
}
