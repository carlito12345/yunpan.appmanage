package com.hierynomus.msfscc;

import com.hierynomus.protocol.commons.EnumWithValue;

/* loaded from: classes.dex */
public enum FileSystemInformationClass implements EnumWithValue<FileSystemInformationClass> {
    FileFsVolumeInformation(1),
    FileFsLabelInformation(2),
    FileFsSizeInformation(3),
    FileFsDeviceInformation(4),
    FileFsAttributeInformation(5),
    FileFsControlInformation(6),
    FileFsFullSizeInformation(7),
    FileFsObjectIdInformation(8),
    FileFsDriverPathInformation(9),
    FileFsVolumeFlagsInformation(10),
    FileFsSectorSizeInformation(11);

    private long value;

    FileSystemInformationClass(long j10) {
        this.value = j10;
    }

    @Override // com.hierynomus.protocol.commons.EnumWithValue
    public long getValue() {
        return this.value;
    }
}
