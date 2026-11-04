package com.hierynomus.msfscc.fileinformation;

/* loaded from: classes.dex */
public class FileAllInformation implements FileQueryableInformation {
    private FileAccessInformation accessInformation;
    private FileAlignmentInformation alignmentInformation;
    private FileBasicInformation basicInformation;
    private FileEaInformation eaInformation;
    private FileInternalInformation internalInformation;
    private FileModeInformation modeInformation;
    private String nameInformation;
    private FilePositionInformation positionInformation;
    private FileStandardInformation standardInformation;

    public FileAllInformation(FileBasicInformation fileBasicInformation, FileStandardInformation fileStandardInformation, FileInternalInformation fileInternalInformation, FileEaInformation fileEaInformation, FileAccessInformation fileAccessInformation, FilePositionInformation filePositionInformation, FileModeInformation fileModeInformation, FileAlignmentInformation fileAlignmentInformation, String str) {
        this.basicInformation = fileBasicInformation;
        this.standardInformation = fileStandardInformation;
        this.internalInformation = fileInternalInformation;
        this.eaInformation = fileEaInformation;
        this.accessInformation = fileAccessInformation;
        this.positionInformation = filePositionInformation;
        this.modeInformation = fileModeInformation;
        this.alignmentInformation = fileAlignmentInformation;
        this.nameInformation = str;
    }

    public FileAccessInformation getAccessInformation() {
        return this.accessInformation;
    }

    public FileAlignmentInformation getAlignmentInformation() {
        return this.alignmentInformation;
    }

    public FileBasicInformation getBasicInformation() {
        return this.basicInformation;
    }

    public FileEaInformation getEaInformation() {
        return this.eaInformation;
    }

    public FileInternalInformation getInternalInformation() {
        return this.internalInformation;
    }

    public FileModeInformation getModeInformation() {
        return this.modeInformation;
    }

    public String getNameInformation() {
        return this.nameInformation;
    }

    public FilePositionInformation getPositionInformation() {
        return this.positionInformation;
    }

    public FileStandardInformation getStandardInformation() {
        return this.standardInformation;
    }
}
