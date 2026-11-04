package com.owen.tvrecyclerview;

import com.owen.tvrecyclerview.BaseLayoutManager;
import java.util.Arrays;

/* loaded from: classes.dex */
public class ItemEntries {
    private static final int MIN_SIZE = 10;
    private int mAdapterSize;
    private BaseLayoutManager.ItemEntry[] mItemEntries;
    private boolean mRestoringItem;

    private void ensureSize(int i10) {
        BaseLayoutManager.ItemEntry[] itemEntryArr = this.mItemEntries;
        if (itemEntryArr == null) {
            BaseLayoutManager.ItemEntry[] itemEntryArr2 = new BaseLayoutManager.ItemEntry[Math.max(i10, 10) + 1];
            this.mItemEntries = itemEntryArr2;
            Arrays.fill(itemEntryArr2, (Object) null);
        } else if (i10 >= itemEntryArr.length) {
            BaseLayoutManager.ItemEntry[] itemEntryArr3 = new BaseLayoutManager.ItemEntry[sizeForPosition(i10)];
            this.mItemEntries = itemEntryArr3;
            System.arraycopy(itemEntryArr, 0, itemEntryArr3, 0, itemEntryArr.length);
            BaseLayoutManager.ItemEntry[] itemEntryArr4 = this.mItemEntries;
            Arrays.fill(itemEntryArr4, itemEntryArr.length, itemEntryArr4.length, (Object) null);
        }
    }

    private int sizeForPosition(int i10) {
        int i11;
        int length = this.mItemEntries.length;
        while (length <= i10) {
            length *= 2;
        }
        return (this.mRestoringItem || length <= (i11 = this.mAdapterSize)) ? length : i11;
    }

    public void clear() {
        BaseLayoutManager.ItemEntry[] itemEntryArr = this.mItemEntries;
        if (itemEntryArr != null) {
            Arrays.fill(itemEntryArr, (Object) null);
        }
    }

    public BaseLayoutManager.ItemEntry getItemEntry(int i10) {
        BaseLayoutManager.ItemEntry[] itemEntryArr = this.mItemEntries;
        if (itemEntryArr == null || i10 >= itemEntryArr.length || i10 < 0) {
            return null;
        }
        return itemEntryArr[i10];
    }

    public void invalidateItemLanesAfter(int i10) {
        BaseLayoutManager.ItemEntry[] itemEntryArr = this.mItemEntries;
        if (itemEntryArr == null || i10 >= itemEntryArr.length) {
            return;
        }
        while (true) {
            BaseLayoutManager.ItemEntry[] itemEntryArr2 = this.mItemEntries;
            if (i10 >= itemEntryArr2.length) {
                return;
            }
            BaseLayoutManager.ItemEntry itemEntry = itemEntryArr2[i10];
            if (itemEntry != null) {
                itemEntry.invalidateLane();
            }
            i10++;
        }
    }

    public void offsetForAddition(int i10, int i11) {
        BaseLayoutManager.ItemEntry[] itemEntryArr = this.mItemEntries;
        if (itemEntryArr == null || i10 >= itemEntryArr.length) {
            return;
        }
        int i12 = i10 + i11;
        ensureSize(i12);
        BaseLayoutManager.ItemEntry[] itemEntryArr2 = this.mItemEntries;
        System.arraycopy(itemEntryArr2, i10, itemEntryArr2, i12, (itemEntryArr2.length - i10) - i11);
        Arrays.fill(this.mItemEntries, i10, i12, (Object) null);
    }

    public void offsetForRemoval(int i10, int i11) {
        BaseLayoutManager.ItemEntry[] itemEntryArr = this.mItemEntries;
        if (itemEntryArr == null || i10 >= itemEntryArr.length) {
            return;
        }
        int i12 = i10 + i11;
        ensureSize(i12);
        BaseLayoutManager.ItemEntry[] itemEntryArr2 = this.mItemEntries;
        System.arraycopy(itemEntryArr2, i12, itemEntryArr2, i10, (itemEntryArr2.length - i10) - i11);
        BaseLayoutManager.ItemEntry[] itemEntryArr3 = this.mItemEntries;
        Arrays.fill(itemEntryArr3, itemEntryArr3.length - i11, itemEntryArr3.length, (Object) null);
    }

    public void putItemEntry(int i10, BaseLayoutManager.ItemEntry itemEntry) {
        ensureSize(i10);
        this.mItemEntries[i10] = itemEntry;
    }

    public void restoreItemEntry(int i10, BaseLayoutManager.ItemEntry itemEntry) {
        this.mRestoringItem = true;
        putItemEntry(i10, itemEntry);
        this.mRestoringItem = false;
    }

    public void setAdapterSize(int i10) {
        this.mAdapterSize = i10;
    }

    public int size() {
        BaseLayoutManager.ItemEntry[] itemEntryArr = this.mItemEntries;
        if (itemEntryArr != null) {
            return itemEntryArr.length;
        }
        return 0;
    }
}
