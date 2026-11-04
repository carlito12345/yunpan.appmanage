.class public final Lde/d;
.super Ljava/io/PrintStream;
.source "SourceFile"


# static fields
.field public static a:Lde/d; = null

.field public static b:I = 0x1


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static r()Lde/d;
    .locals 2

    .line 1
    sget-object v0, Lde/d;->a:Lde/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 6
    .line 7
    new-instance v1, Lde/d;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Lde/d;-><init>(Ljava/io/PrintStream;)V

    .line 10
    .line 11
    .line 12
    sput-object v1, Lde/d;->a:Lde/d;

    .line 13
    .line 14
    :cond_0
    sget-object v0, Lde/d;->a:Lde/d;

    .line 15
    .line 16
    return-object v0
.end method
