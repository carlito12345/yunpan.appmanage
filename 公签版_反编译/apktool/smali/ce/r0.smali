.class public Lce/r0;
.super Ljava/io/IOException;
.source "SourceFile"

# interfaces
.implements Lce/o;
.implements Lce/f;
.implements Lce/y1;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 8
    invoke-static {p1}, Lce/r0;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-static {p1}, Lce/r0;->b(I)I

    move-result p1

    iput p1, p0, Lce/r0;->a:I

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lce/r0;->b:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 4

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    const/16 v1, 0x8

    :goto_0
    if-lt v1, v0, :cond_2

    add-int v2, v0, v1

    .line 1
    div-int/lit8 v2, v2, 0x2

    .line 2
    sget-object v3, Lce/y1;->y0:[I

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

    .line 3
    :cond_1
    sget-object v0, Lce/y1;->z0:[Ljava/lang/String;

    aget-object v0, v0, v2

    goto :goto_1

    .line 4
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 5
    :cond_3
    invoke-static {p1}, Lce/r0;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    goto :goto_2

    .line 6
    :cond_4
    invoke-static {p1}, Lce/r0;->b(I)I

    move-result p1

    :goto_2
    iput p1, p0, Lce/r0;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const p1, -0x3fffffff    # -2.0000002f

    .line 12
    iput p1, p0, Lce/r0;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 14
    iput-object p2, p0, Lce/r0;->b:Ljava/lang/Exception;

    const p1, -0x3fffffff    # -2.0000002f

    .line 15
    iput p1, p0, Lce/r0;->a:I

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 5

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "NT_STATUS_SUCCESS"

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/high16 v0, -0x40000000    # -2.0f

    .line 7
    .line 8
    and-int v1, p0, v0

    .line 9
    .line 10
    if-ne v1, v0, :cond_3

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    const/16 v1, 0x3d

    .line 14
    .line 15
    :goto_0
    if-lt v1, v0, :cond_6

    .line 16
    .line 17
    add-int v2, v0, v1

    .line 18
    .line 19
    div-int/lit8 v2, v2, 0x2

    .line 20
    .line 21
    sget-object v3, Lce/o;->U:[I

    .line 22
    .line 23
    aget v3, v3, v2

    .line 24
    .line 25
    if-le p0, v3, :cond_1

    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    move v0, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    if-ge p0, v3, :cond_2

    .line 32
    .line 33
    add-int/lit8 v2, v2, -0x1

    .line 34
    .line 35
    move v1, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    sget-object p0, Lce/o;->W:[Ljava/lang/String;

    .line 38
    .line 39
    aget-object p0, p0, v2

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_3
    const/4 v0, 0x0

    .line 43
    const/16 v1, 0x27

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    :goto_1
    if-lt v1, v2, :cond_6

    .line 47
    .line 48
    add-int v3, v2, v1

    .line 49
    .line 50
    div-int/lit8 v3, v3, 0x2

    .line 51
    .line 52
    sget-object v4, Lce/f;->J:[[I

    .line 53
    .line 54
    aget-object v4, v4, v3

    .line 55
    .line 56
    aget v4, v4, v0

    .line 57
    .line 58
    if-le p0, v4, :cond_4

    .line 59
    .line 60
    add-int/lit8 v2, v3, 0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_4
    if-ge p0, v4, :cond_5

    .line 64
    .line 65
    add-int/lit8 v3, v3, -0x1

    .line 66
    .line 67
    move v1, v3

    .line 68
    goto :goto_1

    .line 69
    :cond_5
    sget-object p0, Lce/f;->Q:[Ljava/lang/String;

    .line 70
    .line 71
    aget-object p0, p0, v3

    .line 72
    .line 73
    return-object p0

    .line 74
    :cond_6
    const/16 v0, 0x8

    .line 75
    .line 76
    invoke-static {p0, v0}, Lde/c;->c(II)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const-string v0, "0x"

    .line 81
    .line 82
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0
.end method

.method public static b(I)I
    .locals 6

    .line 1
    const/high16 v0, -0x40000000    # -2.0f

    .line 2
    .line 3
    and-int/2addr v0, p0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return p0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    const/16 v1, 0x27

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-lt v1, v2, :cond_3

    .line 12
    .line 13
    add-int v3, v2, v1

    .line 14
    .line 15
    div-int/lit8 v3, v3, 0x2

    .line 16
    .line 17
    sget-object v4, Lce/f;->J:[[I

    .line 18
    .line 19
    aget-object v4, v4, v3

    .line 20
    .line 21
    aget v5, v4, v0

    .line 22
    .line 23
    if-le p0, v5, :cond_1

    .line 24
    .line 25
    add-int/lit8 v2, v3, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    if-ge p0, v5, :cond_2

    .line 29
    .line 30
    add-int/lit8 v3, v3, -0x1

    .line 31
    .line 32
    move v1, v3

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 p0, 0x1

    .line 35
    aget p0, v4, p0

    .line 36
    .line 37
    return p0

    .line 38
    :cond_3
    const p0, -0x3fffffff    # -2.0000002f

    .line 39
    .line 40
    .line 41
    return p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lce/r0;->b:Ljava/lang/Exception;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Ljava/io/StringWriter;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v2, Ljava/io/PrintWriter;

    .line 11
    .line 12
    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-super {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, "\n"

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0

    .line 43
    :cond_0
    invoke-super {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0
.end method
