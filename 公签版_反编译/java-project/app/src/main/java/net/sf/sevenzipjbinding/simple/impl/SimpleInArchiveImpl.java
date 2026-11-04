package net.sf.sevenzipjbinding.simple.impl;

import g.b;
import net.sf.sevenzipjbinding.IInArchive;
import net.sf.sevenzipjbinding.SevenZipException;
import net.sf.sevenzipjbinding.simple.ISimpleInArchive;
import net.sf.sevenzipjbinding.simple.ISimpleInArchiveItem;

/* loaded from: classes.dex */
public class SimpleInArchiveImpl implements ISimpleInArchive {
    private final IInArchive sevenZipInArchive;
    private boolean wasClosed = false;

    public SimpleInArchiveImpl(IInArchive iInArchive) {
        this.sevenZipInArchive = iInArchive;
    }

    @Override // net.sf.sevenzipjbinding.simple.ISimpleInArchive
    public void close() {
        this.sevenZipInArchive.close();
        this.wasClosed = true;
    }

    @Override // net.sf.sevenzipjbinding.simple.ISimpleInArchive
    public ISimpleInArchiveItem getArchiveItem(int i10) throws SevenZipException {
        if (i10 >= 0 && i10 < this.sevenZipInArchive.getNumberOfItems()) {
            return new SimpleInArchiveItemImpl(this, i10);
        }
        StringBuilder sbN = b.n("Index ", i10, " is out of range. Number of items in archive: ");
        sbN.append(this.sevenZipInArchive.getNumberOfItems());
        throw new SevenZipException(sbN.toString());
    }

    @Override // net.sf.sevenzipjbinding.simple.ISimpleInArchive
    public ISimpleInArchiveItem[] getArchiveItems() {
        int numberOfItems = getNumberOfItems();
        ISimpleInArchiveItem[] iSimpleInArchiveItemArr = new ISimpleInArchiveItem[numberOfItems];
        for (int i10 = 0; i10 < numberOfItems; i10++) {
            iSimpleInArchiveItemArr[i10] = new SimpleInArchiveItemImpl(this, i10);
        }
        return iSimpleInArchiveItemArr;
    }

    @Override // net.sf.sevenzipjbinding.simple.ISimpleInArchive
    public int getNumberOfItems() {
        return testAndGetSafeSevenZipInArchive().getNumberOfItems();
    }

    public IInArchive testAndGetSafeSevenZipInArchive() throws SevenZipException {
        if (this.wasClosed) {
            throw new SevenZipException("Archive was closed");
        }
        return this.sevenZipInArchive;
    }
}
