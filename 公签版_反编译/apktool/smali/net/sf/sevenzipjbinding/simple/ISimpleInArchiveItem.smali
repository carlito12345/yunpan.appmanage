.class public interface abstract Lnet/sf/sevenzipjbinding/simple/ISimpleInArchiveItem;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract extractSlow(Lnet/sf/sevenzipjbinding/ISequentialOutStream;)Lnet/sf/sevenzipjbinding/ExtractOperationResult;
.end method

.method public abstract extractSlow(Lnet/sf/sevenzipjbinding/ISequentialOutStream;Ljava/lang/String;)Lnet/sf/sevenzipjbinding/ExtractOperationResult;
.end method

.method public abstract getAttributes()Ljava/lang/Integer;
.end method

.method public abstract getCRC()Ljava/lang/Integer;
.end method

.method public abstract getComment()Ljava/lang/String;
.end method

.method public abstract getCreationTime()Ljava/util/Date;
.end method

.method public abstract getGroup()Ljava/lang/String;
.end method

.method public abstract getHostOS()Ljava/lang/String;
.end method

.method public abstract getItemIndex()I
.end method

.method public abstract getLastAccessTime()Ljava/util/Date;
.end method

.method public abstract getLastWriteTime()Ljava/util/Date;
.end method

.method public abstract getMethod()Ljava/lang/String;
.end method

.method public abstract getPackedSize()Ljava/lang/Long;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getPosition()Ljava/lang/Integer;
.end method

.method public abstract getSize()Ljava/lang/Long;
.end method

.method public abstract getUser()Ljava/lang/String;
.end method

.method public abstract isCommented()Ljava/lang/Boolean;
.end method

.method public abstract isEncrypted()Z
.end method

.method public abstract isFolder()Z
.end method
