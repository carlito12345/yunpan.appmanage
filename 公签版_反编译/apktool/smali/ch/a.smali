.class public final Lch/a;
.super Ljava/io/IOException;
.source "SourceFile"

# interfaces
.implements Lxd/d;
.implements Lce/y1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x9

    :goto_0
    if-lt v1, v0, :cond_2

    add-int v2, v0, v1

    .line 2
    div-int/lit8 v2, v2, 0x2

    .line 3
    sget-object v3, Lxd/d;->K0:[I

    aget v3, v3, v2

    if-le p1, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    goto :goto_0

    :cond_0
    if-ge p1, v3, :cond_1

    add-int/lit8 v2, v2, -0x1

    move v1, v2

    goto :goto_0

    .line 4
    :cond_1
    sget-object p1, Lxd/d;->L0:[Ljava/lang/String;

    aget-object p1, p1, v2

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    .line 5
    invoke-static {p1, v0}, Lde/c;->c(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0x"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    :goto_1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/io/IOException;Ljava/lang/String;)V
    .locals 1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", status code: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
