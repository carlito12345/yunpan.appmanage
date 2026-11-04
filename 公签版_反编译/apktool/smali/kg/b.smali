.class public abstract synthetic Lkg/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lj$/time/Instant;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lj$/time/TimeConversions;->convert(Lj$/time/Instant;)Ljava/time/Instant;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    return-void
.end method
