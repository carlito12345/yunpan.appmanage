.class public Lce/t0;
.super Ljava/net/URLConnection;
.source "SourceFile"

# interfaces
.implements Lce/q0;


# static fields
.field public static final A:Lce/d;

.field public static final x:Lde/d;

.field public static final y:J

.field public static final z:Z


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:J

.field public e:I

.field public f:J

.field public g:J

.field public h:J

.field public i:Z

.field public final j:I

.field public k:Lce/t;

.field public l:Lce/e;

.field public final m:Lce/p;

.field public n:Lce/c1;

.field public p:Ljava/lang/String;

.field public q:I

.field public r:I

.field public s:Z

.field public t:I

.field public v:[Lwd/c;

.field public w:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lde/d;->r()Lde/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lce/t0;->x:Lde/d;

    .line 6
    .line 7
    :try_start_0
    sget-object v0, Lwd/a;->a:Ljava/util/Properties;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    :goto_0
    sget-object v0, Lwd/a;->a:Ljava/util/Properties;

    .line 15
    .line 16
    const-string v1, "jcifs.smb1.smb.client.attrExpirationPeriod"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 28
    goto :goto_1

    .line 29
    :catch_1
    move-exception v0

    .line 30
    sget v1, Lde/d;->b:I

    .line 31
    .line 32
    if-lez v1, :cond_0

    .line 33
    .line 34
    sget-object v1, Lwd/a;->b:Lde/d;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    const-wide/16 v0, 0x1388

    .line 40
    .line 41
    :goto_1
    sput-wide v0, Lce/t0;->y:J

    .line 42
    .line 43
    const-string v0, "jcifs.smb1.smb.client.ignoreCopyToException"

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    invoke-static {v0, v1}, Lwd/a;->a(Ljava/lang/String;Z)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    sput-boolean v0, Lce/t0;->z:Z

    .line 51
    .line 52
    new-instance v0, Lce/d;

    .line 53
    .line 54
    invoke-direct {v0}, Lce/d;-><init>()V

    .line 55
    .line 56
    .line 57
    sput-object v0, Lce/t0;->A:Lce/d;

    .line 58
    .line 59
    return-void
.end method

.method public constructor <init>(Lce/t0;Ljava/lang/String;IIJJJ)V
    .locals 5

    .line 10
    iget v0, p1, Lce/t0;->r:I

    .line 11
    const-string v1, "/"

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    iget-object v0, p1, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p1}, Lce/t0;->t()Ljava/lang/String;

    .line 13
    iget-object v0, p1, Lce/t0;->b:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 14
    invoke-virtual {p1}, Lce/t0;->n()Lwd/c;

    move-result-object v0

    .line 15
    iget-object v0, v0, Lwd/c;->a:Ljava/lang/Object;

    .line 16
    instance-of v3, v0, Lae/g;

    if-eqz v3, :cond_2

    .line 17
    check-cast v0, Lae/g;

    .line 18
    iget-object v0, v0, Lae/g;->a:Lae/b;

    .line 19
    iget v0, v0, Lae/b;->c:I

    const/16 v3, 0x1d

    if-eq v0, v3, :cond_1

    const/16 v3, 0x1b

    if-ne v0, v3, :cond_2

    .line 20
    :cond_1
    iput v2, p1, Lce/t0;->r:I

    goto :goto_2

    :cond_2
    const/4 v0, 0x4

    .line 21
    iput v0, p1, Lce/t0;->r:I

    .line 22
    :cond_3
    new-instance v0, Ljava/net/URL;

    iget-object v2, p1, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 23
    invoke-static {p2}, Lg/b;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit8 v4, p4, 0x10

    if-lez v4, :cond_4

    goto :goto_0

    .line 24
    :cond_4
    const-string v1, ""

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    goto :goto_3

    .line 25
    :cond_5
    :goto_1
    iput v2, p1, Lce/t0;->r:I

    .line 26
    :goto_2
    new-instance v0, Ljava/net/URL;

    const-string v2, "smb1://"

    .line 27
    invoke-static {v2, p2, v1}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 28
    sget-object v2, Lce/h;->a:Lce/h;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 29
    :goto_3
    invoke-direct {p0, v0}, Lce/t0;-><init>(Ljava/net/URL;)V

    .line 30
    iget-object v0, p1, Lce/t0;->m:Lce/p;

    iput-object v0, p0, Lce/t0;->m:Lce/p;

    .line 31
    iget-object v0, p1, Lce/t0;->b:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 32
    iget-object v0, p1, Lce/t0;->n:Lce/c1;

    iput-object v0, p0, Lce/t0;->n:Lce/c1;

    .line 33
    iget-object v0, p1, Lce/t0;->l:Lce/e;

    iput-object v0, p0, Lce/t0;->l:Lce/e;

    .line 34
    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 35
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_7

    const/4 v2, 0x0

    .line 36
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 37
    :cond_7
    iget-object v0, p1, Lce/t0;->b:Ljava/lang/String;

    const-string v2, "\\"

    if-nez v0, :cond_8

    .line 38
    iput-object v2, p0, Lce/t0;->p:Ljava/lang/String;

    goto :goto_4

    .line 39
    :cond_8
    iget-object v0, p1, Lce/t0;->p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 40
    invoke-static {v2, p2}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 41
    iput-object p1, p0, Lce/t0;->p:Ljava/lang/String;

    goto :goto_4

    .line 42
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lce/t0;->p:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5c

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lce/t0;->p:Ljava/lang/String;

    .line 43
    :goto_4
    iput p3, p0, Lce/t0;->r:I

    .line 44
    iput p4, p0, Lce/t0;->e:I

    .line 45
    iput-wide p5, p0, Lce/t0;->c:J

    .line 46
    iput-wide p7, p0, Lce/t0;->d:J

    .line 47
    iput-wide p9, p0, Lce/t0;->g:J

    .line 48
    iput-boolean v1, p0, Lce/t0;->i:Z

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sget-wide p3, Lce/t0;->y:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Lce/t0;->h:J

    iput-wide p1, p0, Lce/t0;->f:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/net/URL;

    sget-object v1, Lce/h;->a:Lce/h;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0}, Lce/t0;-><init>(Ljava/net/URL;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 2

    .line 2
    new-instance v0, Lce/p;

    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lce/p;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lce/t0;-><init>(Ljava/net/URL;Lce/p;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lce/p;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    const/4 v0, 0x7

    .line 4
    iput v0, p0, Lce/t0;->j:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lce/t0;->k:Lce/t;

    .line 6
    iput-object v0, p0, Lce/t0;->l:Lce/e;

    .line 7
    iput-object v0, p0, Lce/t0;->n:Lce/c1;

    if-nez p2, :cond_0

    .line 8
    new-instance p2, Lce/p;

    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lce/p;-><init>(Ljava/lang/String;)V

    :cond_0
    iput-object p2, p0, Lce/t0;->m:Lce/p;

    .line 9
    invoke-virtual {p0}, Lce/t0;->t()Ljava/lang/String;

    return-void
.end method

.method public static B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    array-length v3, p0

    .line 9
    if-ge v0, v3, :cond_3

    .line 10
    .line 11
    aget-char v3, p0, v0

    .line 12
    .line 13
    const/16 v4, 0x26

    .line 14
    .line 15
    if-ne v3, v4, :cond_1

    .line 16
    .line 17
    if-le v1, v2, :cond_0

    .line 18
    .line 19
    new-instance v3, Ljava/lang/String;

    .line 20
    .line 21
    sub-int v4, v1, v2

    .line 22
    .line 23
    invoke-direct {v3, p0, v2, v4}, Ljava/lang/String;-><init>([CII)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    new-instance p1, Ljava/lang/String;

    .line 35
    .line 36
    sub-int/2addr v0, v1

    .line 37
    invoke-direct {p1, p0, v1, v0}, Ljava/lang/String;-><init>([CII)V

    .line 38
    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/16 v4, 0x3d

    .line 45
    .line 46
    if-ne v3, v4, :cond_2

    .line 47
    .line 48
    move v1, v0

    .line 49
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    if-le v1, v2, :cond_4

    .line 53
    .line 54
    new-instance v0, Ljava/lang/String;

    .line 55
    .line 56
    sub-int v3, v1, v2

    .line 57
    .line 58
    invoke-direct {v0, p0, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_4

    .line 66
    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    new-instance p1, Ljava/lang/String;

    .line 70
    .line 71
    array-length v0, p0

    .line 72
    sub-int/2addr v0, v1

    .line 73
    invoke-direct {p1, p0, v1, v0}, Ljava/lang/String;-><init>([CII)V

    .line 74
    .line 75
    .line 76
    return-object p1

    .line 77
    :cond_4
    const/4 p0, 0x0

    .line 78
    return-object p0
.end method


# virtual methods
.method public final A(IIII)I
    .locals 9

    .line 1
    invoke-virtual {p0}, Lce/t0;->c()V

    .line 2
    .line 3
    .line 4
    sget v0, Lde/d;->b:I

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    sget-object v0, Lce/t0;->x:Lde/d;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lce/t0;->n:Lce/c1;

    .line 15
    .line 16
    iget-object v0, v0, Lce/c1;->f:Lce/y0;

    .line 17
    .line 18
    iget-object v0, v0, Lce/y0;->h:Lce/b1;

    .line 19
    .line 20
    const/16 v1, 0x10

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lce/b1;->q(I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    new-instance v0, Lce/y;

    .line 29
    .line 30
    invoke-direct {v0}, Lce/y;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v8, Lce/x;

    .line 34
    .line 35
    iget-object v2, p0, Lce/t0;->p:Ljava/lang/String;

    .line 36
    .line 37
    iget v5, p0, Lce/t0;->j:I

    .line 38
    .line 39
    move-object v1, v8

    .line 40
    move v3, p1

    .line 41
    move v4, p2

    .line 42
    move v6, p3

    .line 43
    move v7, p4

    .line 44
    invoke-direct/range {v1 .. v7}, Lce/x;-><init>(Ljava/lang/String;IIIII)V

    .line 45
    .line 46
    .line 47
    instance-of p1, p0, Lce/w0;

    .line 48
    .line 49
    const/4 p2, 0x1

    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    iget p1, v8, Lce/x;->L:I

    .line 53
    .line 54
    or-int/lit8 p1, p1, 0x16

    .line 55
    .line 56
    iput p1, v8, Lce/x;->L:I

    .line 57
    .line 58
    iget p1, v8, Lce/x;->M:I

    .line 59
    .line 60
    const/high16 p3, 0x20000

    .line 61
    .line 62
    or-int/2addr p1, p3

    .line 63
    iput p1, v8, Lce/x;->M:I

    .line 64
    .line 65
    iput-boolean p2, v0, Lce/y;->V:Z

    .line 66
    .line 67
    :cond_1
    invoke-virtual {p0, v8, v0}, Lce/t0;->F(Lce/q;Lce/q;)V

    .line 68
    .line 69
    .line 70
    iget p1, v0, Lce/y;->G:I

    .line 71
    .line 72
    iget p3, v0, Lce/y;->I:I

    .line 73
    .line 74
    and-int/lit16 p3, p3, 0x7fff

    .line 75
    .line 76
    iput p3, p0, Lce/t0;->e:I

    .line 77
    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 79
    .line 80
    .line 81
    move-result-wide p3

    .line 82
    sget-wide v0, Lce/t0;->y:J

    .line 83
    .line 84
    add-long/2addr p3, v0

    .line 85
    iput-wide p3, p0, Lce/t0;->f:J

    .line 86
    .line 87
    iput-boolean p2, p0, Lce/t0;->i:Z

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    new-instance p3, Lce/b0;

    .line 91
    .line 92
    invoke-direct {p3}, Lce/b0;-><init>()V

    .line 93
    .line 94
    .line 95
    new-instance p4, Lce/a0;

    .line 96
    .line 97
    iget-object v0, p0, Lce/t0;->p:Ljava/lang/String;

    .line 98
    .line 99
    invoke-direct {p4, v0, p2, p1}, Lce/a0;-><init>(Ljava/lang/String;II)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, p4, p3}, Lce/t0;->F(Lce/q;Lce/q;)V

    .line 103
    .line 104
    .line 105
    iget p1, p3, Lce/b0;->F:I

    .line 106
    .line 107
    :goto_0
    return p1
.end method

.method public final C(ILjava/lang/String;)Lce/i;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lce/t0;->c()V

    .line 2
    .line 3
    .line 4
    sget v0, Lde/d;->b:I

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    sget-object v0, Lce/t0;->x:Lde/d;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lce/t0;->n:Lce/c1;

    .line 15
    .line 16
    iget-object v0, v0, Lce/c1;->f:Lce/y0;

    .line 17
    .line 18
    iget-object v0, v0, Lce/y0;->h:Lce/b1;

    .line 19
    .line 20
    const/16 v1, 0x10

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lce/b1;->q(I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    new-instance v0, Lce/q1;

    .line 29
    .line 30
    invoke-direct {v0, p1}, Lce/q1;-><init>(I)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lce/n1;

    .line 34
    .line 35
    invoke-direct {v1, p2, p1}, Lce/n1;-><init>(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1, v0}, Lce/t0;->F(Lce/q;Lce/q;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, v0, Lce/q1;->M0:Lce/i;

    .line 42
    .line 43
    return-object p1

    .line 44
    :cond_1
    new-instance p1, Lce/c0;

    .line 45
    .line 46
    iget-object v0, p0, Lce/t0;->n:Lce/c1;

    .line 47
    .line 48
    iget-object v0, v0, Lce/c1;->f:Lce/y0;

    .line 49
    .line 50
    iget-object v0, v0, Lce/y0;->h:Lce/b1;

    .line 51
    .line 52
    iget-object v0, v0, Lce/b1;->w:Lce/a1;

    .line 53
    .line 54
    iget v0, v0, Lce/a1;->n:I

    .line 55
    .line 56
    mul-int/lit16 v0, v0, 0x3e8

    .line 57
    .line 58
    int-to-long v0, v0

    .line 59
    const-wide/16 v2, 0x3c

    .line 60
    .line 61
    mul-long v0, v0, v2

    .line 62
    .line 63
    invoke-direct {p1, v0, v1}, Lce/c0;-><init>(J)V

    .line 64
    .line 65
    .line 66
    new-instance v0, Lce/t;

    .line 67
    .line 68
    const/4 v1, 0x5

    .line 69
    invoke-direct {v0, p2, v1}, Lce/t;-><init>(Ljava/lang/String;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0, p1}, Lce/t0;->F(Lce/q;Lce/q;)V

    .line 73
    .line 74
    .line 75
    return-object p1
.end method

.method public final D(Lce/t0;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lce/t0;->t()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "Invalid operation for workgroups, servers, or shares"

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v0, v2, :cond_2

    .line 13
    .line 14
    invoke-virtual {p1}, Lce/t0;->t()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eq v0, v2, :cond_2

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, v0}, Lce/t0;->E(Lce/q;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lce/t0;->E(Lce/q;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lce/t0;->n:Lce/c1;

    .line 32
    .line 33
    iget-object v2, p1, Lce/t0;->n:Lce/c1;

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Lce/c1;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    sget v0, Lde/d;->b:I

    .line 42
    .line 43
    const/4 v1, 0x3

    .line 44
    if-lt v0, v1, :cond_0

    .line 45
    .line 46
    sget-object v0, Lce/t0;->x:Lde/d;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    :cond_0
    const-wide/16 v0, 0x0

    .line 52
    .line 53
    iput-wide v0, p0, Lce/t0;->h:J

    .line 54
    .line 55
    iput-wide v0, p0, Lce/t0;->f:J

    .line 56
    .line 57
    iput-wide v0, p1, Lce/t0;->f:J

    .line 58
    .line 59
    new-instance v0, Lce/f0;

    .line 60
    .line 61
    iget-object v1, p0, Lce/t0;->p:Ljava/lang/String;

    .line 62
    .line 63
    iget-object p1, p1, Lce/t0;->p:Ljava/lang/String;

    .line 64
    .line 65
    invoke-direct {v0, v1, p1}, Lce/f0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lce/t0;->a()Lce/t;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p0, v0, p1}, Lce/t0;->F(Lce/q;Lce/q;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_1
    new-instance p1, Lce/r0;

    .line 77
    .line 78
    invoke-direct {p1, v1}, Lce/r0;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p1

    .line 82
    :cond_2
    new-instance p1, Lce/r0;

    .line 83
    .line 84
    invoke-direct {p1, v1}, Lce/r0;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1
.end method

.method public final E(Lce/q;)V
    .locals 9

    .line 1
    sget-object v0, Lce/t0;->x:Lde/d;

    .line 2
    .line 3
    instance-of v1, p1, Lce/u;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lce/t0;->c()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lce/t0;->n:Lce/c1;

    .line 12
    .line 13
    iget-object v3, v2, Lce/c1;->f:Lce/y0;

    .line 14
    .line 15
    iget-object v3, v3, Lce/y0;->h:Lce/b1;

    .line 16
    .line 17
    iget-object v3, v3, Lce/b1;->D:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v2, v2, Lce/c1;->c:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v4, p0, Lce/t0;->p:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v5, p0, Lce/t0;->m:Lce/p;

    .line 24
    .line 25
    sget-object v6, Lce/t0;->A:Lce/d;

    .line 26
    .line 27
    invoke-virtual {v6, v3, v2, v4, v5}, Lce/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lce/p;)Lce/e;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x0

    .line 32
    if-eqz v2, :cond_f

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iget-byte v1, p1, Lce/q;->c:B

    .line 38
    .line 39
    const/16 v5, 0x25

    .line 40
    .line 41
    const-string v6, "A:"

    .line 42
    .line 43
    if-eq v1, v5, :cond_1

    .line 44
    .line 45
    const/16 v5, 0x32

    .line 46
    .line 47
    if-eq v1, v5, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move-object v1, p1

    .line 51
    check-cast v1, Lce/i0;

    .line 52
    .line 53
    iget-byte v1, v1, Lce/i0;->X:B

    .line 54
    .line 55
    and-int/lit16 v1, v1, 0xff

    .line 56
    .line 57
    const/16 v5, 0x10

    .line 58
    .line 59
    if-eq v1, v5, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    move-object v6, v4

    .line 63
    :goto_0
    move-object v1, v2

    .line 64
    :cond_3
    :try_start_0
    sget v5, Lde/d;->b:I

    .line 65
    .line 66
    const/4 v7, 0x2

    .line 67
    if-lt v5, v7, :cond_5

    .line 68
    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    invoke-virtual {v1}, Lce/e;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :catch_0
    move-exception v5

    .line 79
    goto :goto_2

    .line 80
    :cond_5
    :goto_1
    iget-object v5, v1, Lce/e;->e:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {v5, v3}, Lwd/c;->b(Ljava/lang/String;Z)Lwd/c;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    iget-object v7, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 87
    .line 88
    invoke-virtual {v7}, Ljava/net/URL;->getPort()I

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    invoke-static {v5, v7}, Lce/b1;->o(Lwd/c;I)Lce/b1;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v5}, Lce/b1;->l()V

    .line 97
    .line 98
    .line 99
    iget-object v7, p0, Lce/t0;->m:Lce/p;

    .line 100
    .line 101
    invoke-virtual {v5, v7}, Lce/b1;->n(Lce/p;)Lce/y0;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    iget-object v7, v1, Lce/e;->f:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v5, v7, v6}, Lce/y0;->a(Ljava/lang/String;Ljava/lang/String;)Lce/c1;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    iput-object v5, p0, Lce/t0;->n:Lce/c1;

    .line 112
    .line 113
    if-eq v1, v2, :cond_7

    .line 114
    .line 115
    iget-object v5, v1, Lce/e;->l:Ljava/lang/String;

    .line 116
    .line 117
    if-eqz v5, :cond_7

    .line 118
    .line 119
    iget-object v7, v1, Lce/e;->k:Ljava/util/HashMap;

    .line 120
    .line 121
    invoke-virtual {v7, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    .line 124
    goto :goto_4

    .line 125
    :goto_2
    instance-of v7, v5, Lce/r0;

    .line 126
    .line 127
    if-eqz v7, :cond_6

    .line 128
    .line 129
    check-cast v5, Lce/r0;

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_6
    new-instance v7, Lce/r0;

    .line 133
    .line 134
    iget-object v8, v1, Lce/e;->e:Ljava/lang/String;

    .line 135
    .line 136
    invoke-direct {v7, v8, v5}, Lce/r0;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 137
    .line 138
    .line 139
    move-object v5, v7

    .line 140
    :goto_3
    iget-object v1, v1, Lce/e;->j:Lce/e;

    .line 141
    .line 142
    if-ne v1, v2, :cond_3

    .line 143
    .line 144
    move-object v4, v5

    .line 145
    :cond_7
    :goto_4
    if-nez v4, :cond_e

    .line 146
    .line 147
    sget v2, Lde/d;->b:I

    .line 148
    .line 149
    const/4 v4, 0x3

    .line 150
    if-lt v2, v4, :cond_8

    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    :cond_8
    iput-object v1, p0, Lce/t0;->l:Lce/e;

    .line 156
    .line 157
    iget v0, v1, Lce/e;->c:I

    .line 158
    .line 159
    if-gez v0, :cond_9

    .line 160
    .line 161
    iput v3, v1, Lce/e;->c:I

    .line 162
    .line 163
    goto :goto_5

    .line 164
    :cond_9
    iget-object v2, p0, Lce/t0;->p:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-le v0, v2, :cond_a

    .line 171
    .line 172
    iget-object v0, p0, Lce/t0;->p:Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    iput v0, v1, Lce/e;->c:I

    .line 179
    .line 180
    :cond_a
    :goto_5
    iget-object v0, p0, Lce/t0;->p:Ljava/lang/String;

    .line 181
    .line 182
    iget v2, v1, Lce/e;->c:I

    .line 183
    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    const-string v2, ""

    .line 189
    .line 190
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    const-string v4, "\\"

    .line 195
    .line 196
    if-eqz v3, :cond_b

    .line 197
    .line 198
    move-object v0, v4

    .line 199
    :cond_b
    iget-object v3, v1, Lce/e;->h:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-nez v2, :cond_c

    .line 206
    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iget-object v1, v1, Lce/e;->h:Ljava/lang/String;

    .line 213
    .line 214
    invoke-static {v1, v0, v2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    :cond_c
    iput-object v0, p0, Lce/t0;->p:Ljava/lang/String;

    .line 219
    .line 220
    if-eqz p1, :cond_d

    .line 221
    .line 222
    iget-object v1, p1, Lce/q;->x:Ljava/lang/String;

    .line 223
    .line 224
    if-eqz v1, :cond_d

    .line 225
    .line 226
    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-eqz v1, :cond_d

    .line 231
    .line 232
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    if-nez v1, :cond_d

    .line 237
    .line 238
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    :cond_d
    if-eqz p1, :cond_12

    .line 243
    .line 244
    iput-object v0, p1, Lce/q;->x:Ljava/lang/String;

    .line 245
    .line 246
    iget v0, p1, Lce/q;->i:I

    .line 247
    .line 248
    or-int/lit16 v0, v0, 0x1000

    .line 249
    .line 250
    iput v0, p1, Lce/q;->i:I

    .line 251
    .line 252
    goto :goto_7

    .line 253
    :cond_e
    throw v4

    .line 254
    :cond_f
    iget-object v0, p0, Lce/t0;->n:Lce/c1;

    .line 255
    .line 256
    iget-boolean v0, v0, Lce/c1;->h:Z

    .line 257
    .line 258
    if-eqz v0, :cond_11

    .line 259
    .line 260
    if-nez v1, :cond_11

    .line 261
    .line 262
    instance-of v0, p1, Lce/v;

    .line 263
    .line 264
    if-eqz v0, :cond_10

    .line 265
    .line 266
    goto :goto_6

    .line 267
    :cond_10
    new-instance p1, Lce/r0;

    .line 268
    .line 269
    const v0, -0x3ffffddb    # -2.000131f

    .line 270
    .line 271
    .line 272
    invoke-direct {p1, v0, v3}, Lce/r0;-><init>(IZ)V

    .line 273
    .line 274
    .line 275
    throw p1

    .line 276
    :cond_11
    :goto_6
    if-eqz p1, :cond_12

    .line 277
    .line 278
    iget v0, p1, Lce/q;->i:I

    .line 279
    .line 280
    and-int/lit16 v0, v0, -0x1001

    .line 281
    .line 282
    iput v0, p1, Lce/q;->i:I

    .line 283
    .line 284
    :cond_12
    :goto_7
    return-void
.end method

.method public final F(Lce/q;Lce/q;)V
    .locals 1

    .line 1
    :goto_0
    invoke-virtual {p0, p1}, Lce/t0;->E(Lce/q;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lce/t0;->n:Lce/c1;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Lce/c1;->b(Lce/q;Lce/q;)V
    :try_end_0
    .catch Lce/e; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catch_0
    invoke-virtual {p1}, Lce/q;->m()V

    .line 11
    .line 12
    .line 13
    goto :goto_0
.end method

.method public final G(IJJ)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual {p0}, Lce/t0;->m()Z

    .line 3
    .line 4
    .line 5
    iget v1, v0, Lce/t0;->e:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x10

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 v3, 0x40

    .line 15
    .line 16
    :goto_0
    const/16 v4, 0x100

    .line 17
    .line 18
    invoke-virtual {p0, v2, v4, v1, v3}, Lce/t0;->A(IIII)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    new-instance v3, Lce/r1;

    .line 23
    .line 24
    or-int v7, p1, v1

    .line 25
    .line 26
    move-object v5, v3

    .line 27
    move v6, v2

    .line 28
    move-wide v8, p2

    .line 29
    move-wide/from16 v10, p4

    .line 30
    .line 31
    invoke-direct/range {v5 .. v11}, Lce/r1;-><init>(IIJJ)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lce/s1;

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-direct {v1, v4}, Lce/s1;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v3, v1}, Lce/t0;->F(Lce/q;Lce/q;)V

    .line 41
    .line 42
    .line 43
    sget v1, Lde/d;->b:I

    .line 44
    .line 45
    const/4 v3, 0x3

    .line 46
    if-lt v1, v3, :cond_1

    .line 47
    .line 48
    sget-object v1, Lce/t0;->x:Lde/d;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    :cond_1
    new-instance v1, Lce/u;

    .line 54
    .line 55
    invoke-direct {v1, v2}, Lce/u;-><init>(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lce/t0;->a()Lce/t;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {p0, v1, v2}, Lce/t0;->F(Lce/q;Lce/q;)V

    .line 63
    .line 64
    .line 65
    const-wide/16 v1, 0x0

    .line 66
    .line 67
    iput-wide v1, v0, Lce/t0;->f:J

    .line 68
    .line 69
    return-void
.end method

.method public final a()Lce/t;
    .locals 2

    .line 1
    iget-object v0, p0, Lce/t0;->k:Lce/t;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lce/t;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, v1}, Lce/t;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lce/t0;->k:Lce/t;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lce/t0;->k:Lce/t;

    .line 14
    .line 15
    return-object v0
.end method

.method public final b()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lce/t0;->v()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v0, p0, Lce/t0;->q:I

    .line 9
    .line 10
    sget v1, Lde/d;->b:I

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    if-lt v1, v2, :cond_1

    .line 14
    .line 15
    sget-object v1, Lce/t0;->x:Lde/d;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    :cond_1
    new-instance v1, Lce/u;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Lce/u;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lce/t0;->a()Lce/t;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0, v1, v0}, Lce/t0;->F(Lce/q;Lce/q;)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lce/t0;->s:Z

    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    const-string v0, "Failed to connect to server"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lce/t0;->connect()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lce/r0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception v1

    .line 8
    new-instance v2, Lce/r0;

    .line 9
    .line 10
    invoke-direct {v2, v0, v1}, Lce/r0;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 11
    .line 12
    .line 13
    throw v2

    .line 14
    :catch_1
    move-exception v0

    .line 15
    throw v0

    .line 16
    :catch_2
    move-exception v1

    .line 17
    new-instance v2, Lce/r0;

    .line 18
    .line 19
    invoke-direct {v2, v0, v1}, Lce/r0;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 20
    .line 21
    .line 22
    throw v2
.end method

.method public final connect()V
    .locals 3

    .line 1
    iget-object v0, p0, Lce/t0;->n:Lce/c1;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v2, v0, Lce/c1;->a:I

    .line 7
    .line 8
    if-ne v2, v1, :cond_0

    .line 9
    .line 10
    iget-object v2, v0, Lce/c1;->f:Lce/y0;

    .line 11
    .line 12
    iget-object v2, v2, Lce/y0;->h:Lce/b1;

    .line 13
    .line 14
    iget-object v2, v2, Lce/b1;->D:Ljava/lang/String;

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v0, v2}, Lce/c1;->d(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lce/t0;->n:Lce/c1;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget v0, v0, Lce/c1;->a:I

    .line 27
    .line 28
    if-ne v0, v1, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-virtual {p0}, Lce/t0;->t()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lce/t0;->o()Lwd/c;

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lce/t0;->g()V
    :try_end_0
    .catch Lce/s; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lce/r0; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {p0}, Lce/t0;->q()Lwd/c;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    sget v1, Lde/d;->b:I

    .line 49
    .line 50
    const/4 v2, 0x3

    .line 51
    if-lt v1, v2, :cond_2

    .line 52
    .line 53
    sget-object v1, Lce/t0;->x:Lde/d;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    throw v0

    .line 60
    :catch_1
    move-exception v0

    .line 61
    goto :goto_2

    .line 62
    :goto_1
    throw v0

    .line 63
    :goto_2
    goto :goto_1
.end method

.method public final d(Lce/t0;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lce/t0;->b:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p1, Lce/t0;->b:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    new-instance v6, Lce/d0;

    .line 10
    .line 11
    invoke-direct {v6}, Lce/d0;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v7, Lce/e0;

    .line 15
    .line 16
    invoke-direct {v7}, Lce/e0;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lce/t0;->c()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lce/t0;->c()V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, v0}, Lce/t0;->E(Lce/q;)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-virtual {p0}, Lce/t0;->n()Lwd/c;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1}, Lce/t0;->n()Lwd/c;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lwd/c;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget-object v8, p0, Lce/t0;->a:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v11, p1, Lce/t0;->a:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iget-object v1, p1, Lce/t0;->a:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 58
    .line 59
    .line 60
    move-result v13

    .line 61
    const/4 v10, 0x0

    .line 62
    const/4 v12, 0x0

    .line 63
    const/4 v9, 0x1

    .line 64
    invoke-virtual/range {v8 .. v13}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_0

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    new-instance v0, Lce/r0;

    .line 72
    .line 73
    const-string v1, "Source and destination paths overlap."

    .line 74
    .line 75
    invoke-direct {v0, v1}, Lce/r0;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :catch_0
    nop

    .line 80
    :cond_1
    :goto_0
    new-instance v8, Lce/s0;

    .line 81
    .line 82
    invoke-direct {v8, p0}, Lce/s0;-><init>(Lce/t0;)V

    .line 83
    .line 84
    .line 85
    const/4 v0, 0x1

    .line 86
    invoke-virtual {v8, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lce/t0;->n:Lce/c1;

    .line 93
    .line 94
    iget-object v1, v1, Lce/c1;->f:Lce/y0;

    .line 95
    .line 96
    iget-object v1, v1, Lce/y0;->h:Lce/b1;

    .line 97
    .line 98
    iget-object v2, p1, Lce/t0;->n:Lce/c1;

    .line 99
    .line 100
    iget-object v2, v2, Lce/c1;->f:Lce/y0;

    .line 101
    .line 102
    iget-object v2, v2, Lce/y0;->h:Lce/b1;

    .line 103
    .line 104
    iget v3, v1, Lce/b1;->z:I

    .line 105
    .line 106
    iget v4, v2, Lce/b1;->z:I

    .line 107
    .line 108
    if-ge v3, v4, :cond_2

    .line 109
    .line 110
    iput v3, v2, Lce/b1;->z:I

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    iput v4, v1, Lce/b1;->z:I

    .line 114
    .line 115
    :goto_1
    iget v2, v1, Lce/b1;->A:I

    .line 116
    .line 117
    add-int/lit8 v2, v2, -0x46

    .line 118
    .line 119
    iget v1, v1, Lce/b1;->z:I

    .line 120
    .line 121
    add-int/lit8 v1, v1, -0x46

    .line 122
    .line 123
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    const/4 v1, 0x2

    .line 128
    new-array v2, v1, [I

    .line 129
    .line 130
    aput v4, v2, v0

    .line 131
    .line 132
    const/4 v0, 0x0

    .line 133
    aput v1, v2, v0

    .line 134
    .line 135
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 136
    .line 137
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    move-object v3, v0

    .line 142
    check-cast v3, [[B

    .line 143
    .line 144
    move-object v1, p0

    .line 145
    move-object v2, p1

    .line 146
    move-object v5, v8

    .line 147
    :try_start_1
    invoke-virtual/range {v1 .. v7}, Lce/t0;->e(Lce/t0;[[BILce/s0;Lce/d0;Lce/e0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    .line 149
    .line 150
    const/4 v9, 0x0

    .line 151
    const/4 v10, -0x1

    .line 152
    const/4 v11, 0x0

    .line 153
    const-wide/16 v12, 0x0

    .line 154
    .line 155
    invoke-virtual/range {v8 .. v13}, Lce/s0;->a([BILce/t0;J)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :catchall_0
    move-exception p1

    .line 160
    const/4 v9, 0x0

    .line 161
    const/4 v10, -0x1

    .line 162
    const/4 v11, 0x0

    .line 163
    const-wide/16 v12, 0x0

    .line 164
    .line 165
    invoke-virtual/range {v8 .. v13}, Lce/s0;->a([BILce/t0;J)V

    .line 166
    .line 167
    .line 168
    throw p1

    .line 169
    :cond_3
    new-instance p1, Lce/r0;

    .line 170
    .line 171
    const-string v0, "Invalid operation for workgroups or servers"

    .line 172
    .line 173
    invoke-direct {p1, v0}, Lce/r0;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p1
.end method

.method public final e(Lce/t0;[[BILce/s0;Lce/d0;Lce/e0;)V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v13, p1

    .line 4
    .line 5
    move/from16 v14, p3

    .line 6
    .line 7
    move-object/from16 v15, p4

    .line 8
    .line 9
    move-object/from16 v11, p5

    .line 10
    .line 11
    move-object/from16 v12, p6

    .line 12
    .line 13
    iget-wide v2, v1, Lce/t0;->f:J

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v4

    .line 19
    const-wide/16 v8, 0x0

    .line 20
    .line 21
    const/4 v10, 0x1

    .line 22
    const/4 v6, 0x0

    .line 23
    cmp-long v0, v2, v4

    .line 24
    .line 25
    if-gez v0, :cond_0

    .line 26
    .line 27
    const/16 v0, 0x11

    .line 28
    .line 29
    iput v0, v1, Lce/t0;->e:I

    .line 30
    .line 31
    iput-wide v8, v1, Lce/t0;->c:J

    .line 32
    .line 33
    iput-wide v8, v1, Lce/t0;->d:J

    .line 34
    .line 35
    iput-boolean v6, v1, Lce/t0;->i:Z

    .line 36
    .line 37
    invoke-virtual/range {p0 .. p0}, Lce/t0;->t()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/16 v2, 0x101

    .line 42
    .line 43
    invoke-virtual {v1, v2, v0}, Lce/t0;->C(ILjava/lang/String;)Lce/i;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Lce/i;->getAttributes()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    iput v2, v1, Lce/t0;->e:I

    .line 52
    .line 53
    invoke-interface {v0}, Lce/i;->a()J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    iput-wide v2, v1, Lce/t0;->c:J

    .line 58
    .line 59
    invoke-interface {v0}, Lce/i;->getLastWriteTime()J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    iput-wide v2, v1, Lce/t0;->d:J

    .line 64
    .line 65
    iput-boolean v10, v1, Lce/t0;->i:Z

    .line 66
    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v2

    .line 71
    sget-wide v4, Lce/t0;->y:J

    .line 72
    .line 73
    add-long/2addr v2, v4

    .line 74
    iput-wide v2, v1, Lce/t0;->f:J

    .line 75
    .line 76
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lce/t0;->u()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    invoke-virtual/range {p1 .. p1}, Lce/t0;->t()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-le v0, v10, :cond_2

    .line 91
    .line 92
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lce/t0;->y()V

    .line 93
    .line 94
    .line 95
    iget v3, v1, Lce/t0;->e:I

    .line 96
    .line 97
    iget-wide v4, v1, Lce/t0;->c:J

    .line 98
    .line 99
    iget-wide v7, v1, Lce/t0;->d:J
    :try_end_0
    .catch Lce/r0; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    .line 101
    move-object/from16 v2, p1

    .line 102
    .line 103
    const/4 v9, 0x0

    .line 104
    move-wide v6, v7

    .line 105
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lce/t0;->G(IJJ)V
    :try_end_1
    .catch Lce/r0; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    goto :goto_0

    .line 111
    :catch_1
    move-exception v0

    .line 112
    const/4 v9, 0x0

    .line 113
    :goto_0
    iget v2, v0, Lce/r0;->a:I

    .line 114
    .line 115
    const v3, -0x3fffffde    # -2.000008f

    .line 116
    .line 117
    .line 118
    if-eq v2, v3, :cond_3

    .line 119
    .line 120
    const v3, -0x3fffffcb    # -2.0000126f

    .line 121
    .line 122
    .line 123
    if-ne v2, v3, :cond_1

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_1
    throw v0

    .line 127
    :cond_2
    const/4 v9, 0x0

    .line 128
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lce/t0;->x()[Lce/t0;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    :goto_2
    :try_start_2
    array-length v2, v0

    .line 133
    if-ge v9, v2, :cond_e

    .line 134
    .line 135
    new-instance v16, Lce/t0;

    .line 136
    .line 137
    aget-object v2, v0, v9

    .line 138
    .line 139
    invoke-virtual {v2}, Lce/t0;->p()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    aget-object v2, v0, v9

    .line 144
    .line 145
    iget v5, v2, Lce/t0;->r:I

    .line 146
    .line 147
    iget v6, v2, Lce/t0;->e:I

    .line 148
    .line 149
    iget-wide v7, v2, Lce/t0;->c:J

    .line 150
    .line 151
    move/from16 v17, v9

    .line 152
    .line 153
    iget-wide v9, v2, Lce/t0;->d:J

    .line 154
    .line 155
    iget-wide v2, v2, Lce/t0;->g:J

    .line 156
    .line 157
    move-wide/from16 v18, v2

    .line 158
    .line 159
    move-object/from16 v2, v16

    .line 160
    .line 161
    move-object/from16 v3, p1

    .line 162
    .line 163
    move-object v14, v11

    .line 164
    move-wide/from16 v11, v18

    .line 165
    .line 166
    invoke-direct/range {v2 .. v12}, Lce/t0;-><init>(Lce/t0;Ljava/lang/String;IIJJJ)V

    .line 167
    .line 168
    .line 169
    aget-object v2, v0, v17

    .line 170
    .line 171
    move-object/from16 v3, v16

    .line 172
    .line 173
    move-object/from16 v4, p2

    .line 174
    .line 175
    move/from16 v5, p3

    .line 176
    .line 177
    move-object/from16 v6, p4

    .line 178
    .line 179
    move-object/from16 v7, p5

    .line 180
    .line 181
    move-object/from16 v8, p6

    .line 182
    .line 183
    invoke-virtual/range {v2 .. v8}, Lce/t0;->e(Lce/t0;[[BILce/s0;Lce/d0;Lce/e0;)V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 184
    .line 185
    .line 186
    add-int/lit8 v9, v17, 0x1

    .line 187
    .line 188
    move-object/from16 v12, p6

    .line 189
    .line 190
    move-object v11, v14

    .line 191
    move/from16 v14, p3

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :catch_2
    move-exception v0

    .line 195
    goto :goto_3

    .line 196
    :catch_3
    move-exception v0

    .line 197
    goto :goto_4

    .line 198
    :goto_3
    new-instance v2, Lce/r0;

    .line 199
    .line 200
    iget-object v3, v1, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 201
    .line 202
    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    invoke-direct {v2, v3, v0}, Lce/r0;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 207
    .line 208
    .line 209
    throw v2

    .line 210
    :goto_4
    new-instance v2, Lce/r0;

    .line 211
    .line 212
    iget-object v3, v1, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 213
    .line 214
    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    invoke-direct {v2, v3, v0}, Lce/r0;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 219
    .line 220
    .line 221
    throw v2

    .line 222
    :cond_4
    move-object v14, v11

    .line 223
    const/4 v11, 0x0

    .line 224
    const/16 v0, 0x80

    .line 225
    .line 226
    :try_start_3
    invoke-virtual {v1, v10, v11, v0, v11}, Lce/t0;->z(IIII)V
    :try_end_3
    .catch Lce/r0; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 227
    .line 228
    .line 229
    const/16 v12, 0x102

    .line 230
    .line 231
    const/16 v6, 0x52

    .line 232
    .line 233
    :try_start_4
    iget v0, v1, Lce/t0;->e:I

    .line 234
    .line 235
    invoke-virtual {v13, v6, v12, v0, v11}, Lce/t0;->z(IIII)V
    :try_end_4
    .catch Lce/s; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lce/r0; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 236
    .line 237
    .line 238
    goto :goto_5

    .line 239
    :catchall_0
    move-exception v0

    .line 240
    goto/16 :goto_d

    .line 241
    .line 242
    :catch_4
    move-exception v0

    .line 243
    goto/16 :goto_b

    .line 244
    .line 245
    :catch_5
    move-exception v0

    .line 246
    :try_start_5
    iget v2, v13, Lce/t0;->e:I

    .line 247
    .line 248
    and-int/lit8 v3, v2, 0x1

    .line 249
    .line 250
    if-eqz v3, :cond_d

    .line 251
    .line 252
    and-int/lit8 v3, v2, -0x2

    .line 253
    .line 254
    const-wide/16 v4, 0x0

    .line 255
    .line 256
    const-wide/16 v16, 0x0

    .line 257
    .line 258
    move-object/from16 v2, p1

    .line 259
    .line 260
    const/16 v8, 0x52

    .line 261
    .line 262
    move-wide/from16 v6, v16

    .line 263
    .line 264
    invoke-virtual/range {v2 .. v7}, Lce/t0;->G(IJJ)V

    .line 265
    .line 266
    .line 267
    iget v0, v1, Lce/t0;->e:I

    .line 268
    .line 269
    invoke-virtual {v13, v8, v12, v0, v11}, Lce/t0;->z(IIII)V

    .line 270
    .line 271
    .line 272
    :goto_5
    const/4 v0, 0x0

    .line 273
    const-wide/16 v8, 0x0

    .line 274
    .line 275
    :goto_6
    iget v2, v1, Lce/t0;->q:I

    .line 276
    .line 277
    iput v2, v14, Lce/d0;->G:I

    .line 278
    .line 279
    iput-wide v8, v14, Lce/d0;->F:J

    .line 280
    .line 281
    move/from16 v12, p3

    .line 282
    .line 283
    iput v12, v14, Lce/d0;->I:I

    .line 284
    .line 285
    iput v12, v14, Lce/d0;->H:I

    .line 286
    .line 287
    aget-object v2, p2, v0

    .line 288
    .line 289
    move-object/from16 v6, p6

    .line 290
    .line 291
    iput-object v2, v6, Lce/e0;->F:[B

    .line 292
    .line 293
    iput v11, v6, Lce/e0;->G:I

    .line 294
    .line 295
    invoke-virtual {v1, v14, v6}, Lce/t0;->F(Lce/q;Lce/q;)V

    .line 296
    .line 297
    .line 298
    monitor-enter p4
    :try_end_5
    .catch Lce/r0; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 299
    :try_start_6
    iget-object v2, v15, Lce/s0;->f:Lce/r0;

    .line 300
    .line 301
    if-nez v2, :cond_c

    .line 302
    .line 303
    :goto_7
    iget-boolean v2, v15, Lce/s0;->d:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 304
    .line 305
    if-nez v2, :cond_5

    .line 306
    .line 307
    :try_start_7
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 308
    .line 309
    .line 310
    goto :goto_7

    .line 311
    :catchall_1
    move-exception v0

    .line 312
    goto/16 :goto_a

    .line 313
    .line 314
    :catch_6
    move-exception v0

    .line 315
    move-object v2, v0

    .line 316
    :try_start_8
    new-instance v0, Lce/r0;

    .line 317
    .line 318
    iget-object v3, v13, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 319
    .line 320
    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    invoke-direct {v0, v3, v2}, Lce/r0;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 325
    .line 326
    .line 327
    throw v0

    .line 328
    :cond_5
    iget-object v2, v15, Lce/s0;->f:Lce/r0;

    .line 329
    .line 330
    if-nez v2, :cond_b

    .line 331
    .line 332
    iget v4, v6, Lce/e0;->I:I

    .line 333
    .line 334
    if-gtz v4, :cond_9

    .line 335
    .line 336
    monitor-exit p4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 337
    :try_start_9
    new-instance v0, Lce/r1;

    .line 338
    .line 339
    iget v15, v13, Lce/t0;->q:I

    .line 340
    .line 341
    iget v2, v1, Lce/t0;->e:I

    .line 342
    .line 343
    iget-wide v3, v1, Lce/t0;->c:J

    .line 344
    .line 345
    iget-wide v5, v1, Lce/t0;->d:J

    .line 346
    .line 347
    move-object v14, v0

    .line 348
    move/from16 v16, v2

    .line 349
    .line 350
    move-wide/from16 v17, v3

    .line 351
    .line 352
    move-wide/from16 v19, v5

    .line 353
    .line 354
    invoke-direct/range {v14 .. v20}, Lce/r1;-><init>(IIJJ)V

    .line 355
    .line 356
    .line 357
    new-instance v2, Lce/s1;

    .line 358
    .line 359
    const/4 v3, 0x0

    .line 360
    invoke-direct {v2, v3}, Lce/s1;-><init>(I)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v13, v0, v2}, Lce/t0;->F(Lce/q;Lce/q;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual/range {p1 .. p1}, Lce/t0;->v()Z

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    if-nez v0, :cond_6

    .line 371
    .line 372
    goto :goto_8

    .line 373
    :cond_6
    iget v0, v13, Lce/t0;->q:I

    .line 374
    .line 375
    sget v2, Lde/d;->b:I

    .line 376
    .line 377
    const/4 v3, 0x3

    .line 378
    if-lt v2, v3, :cond_7

    .line 379
    .line 380
    sget-object v2, Lce/t0;->x:Lde/d;

    .line 381
    .line 382
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 383
    .line 384
    .line 385
    :cond_7
    new-instance v2, Lce/u;

    .line 386
    .line 387
    invoke-direct {v2, v0}, Lce/u;-><init>(I)V

    .line 388
    .line 389
    .line 390
    invoke-virtual/range {p1 .. p1}, Lce/t0;->a()Lce/t;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-virtual {v13, v2, v0}, Lce/t0;->F(Lce/q;Lce/q;)V

    .line 395
    .line 396
    .line 397
    iput-boolean v11, v13, Lce/t0;->s:Z
    :try_end_9
    .catch Lce/r0; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 398
    .line 399
    :cond_8
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lce/t0;->b()V

    .line 400
    .line 401
    .line 402
    goto :goto_c

    .line 403
    :cond_9
    :try_start_a
    aget-object v3, p2, v0

    .line 404
    .line 405
    move-object/from16 v2, p4

    .line 406
    .line 407
    move-object/from16 v5, p1

    .line 408
    .line 409
    move-object v11, v6

    .line 410
    move-wide v6, v8

    .line 411
    invoke-virtual/range {v2 .. v7}, Lce/s0;->a([BILce/t0;J)V

    .line 412
    .line 413
    .line 414
    monitor-exit p4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 415
    if-ne v0, v10, :cond_a

    .line 416
    .line 417
    const/4 v0, 0x0

    .line 418
    goto :goto_9

    .line 419
    :cond_a
    const/4 v0, 0x1

    .line 420
    :goto_9
    :try_start_b
    iget v2, v11, Lce/e0;->I:I
    :try_end_b
    .catch Lce/r0; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 421
    .line 422
    int-to-long v2, v2

    .line 423
    add-long/2addr v8, v2

    .line 424
    const/4 v11, 0x0

    .line 425
    goto/16 :goto_6

    .line 426
    .line 427
    :cond_b
    :try_start_c
    throw v2

    .line 428
    :cond_c
    throw v2

    .line 429
    :goto_a
    monitor-exit p4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 430
    :try_start_d
    throw v0

    .line 431
    :cond_d
    throw v0
    :try_end_d
    .catch Lce/r0; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 432
    :goto_b
    :try_start_e
    sget-boolean v2, Lce/t0;->z:Z

    .line 433
    .line 434
    if-eqz v2, :cond_f

    .line 435
    .line 436
    sget v2, Lde/d;->b:I

    .line 437
    .line 438
    if-le v2, v10, :cond_8

    .line 439
    .line 440
    sget-object v2, Lce/t0;->x:Lde/d;

    .line 441
    .line 442
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 443
    .line 444
    .line 445
    goto :goto_8

    .line 446
    :cond_e
    :goto_c
    return-void

    .line 447
    :cond_f
    new-instance v2, Lce/r0;

    .line 448
    .line 449
    new-instance v3, Ljava/lang/StringBuilder;

    .line 450
    .line 451
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 452
    .line 453
    .line 454
    const-string v4, "Failed to copy file from ["

    .line 455
    .line 456
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual/range {p0 .. p0}, Lce/t0;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v4

    .line 463
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    const-string v4, "] to ["

    .line 467
    .line 468
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual/range {p1 .. p1}, Lce/t0;->toString()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v4

    .line 475
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    const-string v4, "]"

    .line 479
    .line 480
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v3

    .line 487
    invoke-direct {v2, v3, v0}, Lce/r0;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 488
    .line 489
    .line 490
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 491
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lce/t0;->b()V

    .line 492
    .line 493
    .line 494
    goto :goto_f

    .line 495
    :goto_e
    throw v0

    .line 496
    :goto_f
    goto :goto_e
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 9

    .line 1
    instance-of v0, p1, Lce/t0;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    check-cast p1, Lce/t0;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-ne p0, p1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v1, p1, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    const/16 v1, 0x2f

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-virtual {v5, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    sub-int v7, v1, v4

    .line 38
    .line 39
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    sub-int/2addr v1, v6

    .line 44
    const/16 v3, 0x2e

    .line 45
    .line 46
    if-le v7, v0, :cond_1

    .line 47
    .line 48
    add-int/lit8 v8, v4, 0x1

    .line 49
    .line 50
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    if-ne v8, v3, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    if-le v1, v0, :cond_2

    .line 58
    .line 59
    add-int/lit8 v0, v6, 0x1

    .line 60
    .line 61
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-ne v0, v3, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    if-ne v7, v1, :cond_3

    .line 69
    .line 70
    const/4 v3, 0x1

    .line 71
    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    :goto_0
    invoke-virtual {p0}, Lce/t0;->t()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lce/t0;->t()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lce/t0;->a:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v1, p1, Lce/t0;->a:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    :try_start_0
    invoke-virtual {p0}, Lce/t0;->n()Lwd/c;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p1}, Lce/t0;->n()Lwd/c;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Lwd/c;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    goto :goto_1

    .line 106
    :catch_0
    invoke-virtual {p0}, Lce/t0;->r()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {p1}, Lce/t0;->r()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    :goto_1
    return p1

    .line 119
    :cond_3
    const/4 p1, 0x0

    .line 120
    return p1
.end method

.method public final f()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lce/t0;->m()Z

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lce/t0;->t()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    iget-object v7, p0, Lce/t0;->p:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0}, Lce/t0;->t()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    const-string v2, "Invalid operation for workgroups, servers, or shares"

    .line 19
    .line 20
    if-eq v0, v1, :cond_8

    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    iget-wide v5, p0, Lce/t0;->f:J

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    const-wide/16 v8, 0x0

    .line 30
    .line 31
    cmp-long v10, v3, v5

    .line 32
    .line 33
    if-lez v10, :cond_0

    .line 34
    .line 35
    const/16 v3, 0x11

    .line 36
    .line 37
    iput v3, p0, Lce/t0;->e:I

    .line 38
    .line 39
    iput-wide v8, p0, Lce/t0;->c:J

    .line 40
    .line 41
    iput-wide v8, p0, Lce/t0;->d:J

    .line 42
    .line 43
    iput-boolean v0, p0, Lce/t0;->i:Z

    .line 44
    .line 45
    invoke-virtual {p0}, Lce/t0;->t()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const/16 v4, 0x101

    .line 50
    .line 51
    invoke-virtual {p0, v4, v3}, Lce/t0;->C(ILjava/lang/String;)Lce/i;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-interface {v3}, Lce/i;->getAttributes()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    iput v4, p0, Lce/t0;->e:I

    .line 60
    .line 61
    invoke-interface {v3}, Lce/i;->a()J

    .line 62
    .line 63
    .line 64
    move-result-wide v4

    .line 65
    iput-wide v4, p0, Lce/t0;->c:J

    .line 66
    .line 67
    invoke-interface {v3}, Lce/i;->getLastWriteTime()J

    .line 68
    .line 69
    .line 70
    move-result-wide v3

    .line 71
    iput-wide v3, p0, Lce/t0;->d:J

    .line 72
    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 74
    .line 75
    .line 76
    move-result-wide v3

    .line 77
    sget-wide v5, Lce/t0;->y:J

    .line 78
    .line 79
    add-long/2addr v3, v5

    .line 80
    iput-wide v3, p0, Lce/t0;->f:J

    .line 81
    .line 82
    iput-boolean v1, p0, Lce/t0;->i:Z

    .line 83
    .line 84
    :cond_0
    iget v3, p0, Lce/t0;->e:I

    .line 85
    .line 86
    and-int/2addr v3, v1

    .line 87
    if-eqz v3, :cond_3

    .line 88
    .line 89
    invoke-virtual {p0}, Lce/t0;->t()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-ne v3, v1, :cond_1

    .line 98
    .line 99
    const/4 v3, 0x0

    .line 100
    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {p0}, Lce/t0;->m()Z

    .line 102
    .line 103
    .line 104
    iget v3, p0, Lce/t0;->e:I

    .line 105
    .line 106
    and-int/lit16 v3, v3, 0x7fff

    .line 107
    .line 108
    :goto_0
    invoke-virtual {p0}, Lce/t0;->t()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eq v4, v1, :cond_2

    .line 117
    .line 118
    and-int/lit16 v2, v3, 0x30a6

    .line 119
    .line 120
    const-wide/16 v3, 0x0

    .line 121
    .line 122
    const-wide/16 v5, 0x0

    .line 123
    .line 124
    move-object v1, p0

    .line 125
    invoke-virtual/range {v1 .. v6}, Lce/t0;->G(IJJ)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_2
    new-instance v0, Lce/r0;

    .line 130
    .line 131
    invoke-direct {v0, v2}, Lce/r0;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw v0

    .line 135
    :cond_3
    :goto_1
    sget v1, Lde/d;->b:I

    .line 136
    .line 137
    const/4 v2, 0x3

    .line 138
    if-lt v1, v2, :cond_4

    .line 139
    .line 140
    sget-object v1, Lce/t0;->x:Lde/d;

    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    :cond_4
    iget v1, p0, Lce/t0;->e:I

    .line 146
    .line 147
    and-int/lit8 v1, v1, 0x10

    .line 148
    .line 149
    if-eqz v1, :cond_7

    .line 150
    .line 151
    :try_start_0
    invoke-virtual {p0}, Lce/t0;->x()[Lce/t0;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    :goto_2
    array-length v2, v1

    .line 156
    if-ge v0, v2, :cond_5

    .line 157
    .line 158
    aget-object v2, v1, v0

    .line 159
    .line 160
    invoke-virtual {v2}, Lce/t0;->f()V
    :try_end_0
    .catch Lce/r0; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .line 162
    .line 163
    add-int/lit8 v0, v0, 0x1

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :catch_0
    move-exception v0

    .line 167
    const v1, -0x3ffffff1    # -2.0000036f

    .line 168
    .line 169
    .line 170
    iget v2, v0, Lce/r0;->a:I

    .line 171
    .line 172
    if-ne v2, v1, :cond_6

    .line 173
    .line 174
    :cond_5
    new-instance v0, Lce/t;

    .line 175
    .line 176
    const/4 v1, 0x3

    .line 177
    invoke-direct {v0, v7, v1}, Lce/t;-><init>(Ljava/lang/String;I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Lce/t0;->a()Lce/t;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {p0, v0, v1}, Lce/t0;->F(Lce/q;Lce/q;)V

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_6
    throw v0

    .line 189
    :cond_7
    new-instance v0, Lce/t;

    .line 190
    .line 191
    const/4 v1, 0x2

    .line 192
    invoke-direct {v0, v7, v1}, Lce/t;-><init>(Ljava/lang/String;I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, Lce/t0;->a()Lce/t;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {p0, v0, v1}, Lce/t0;->F(Lce/q;Lce/q;)V

    .line 200
    .line 201
    .line 202
    :goto_3
    iput-wide v8, p0, Lce/t0;->h:J

    .line 203
    .line 204
    iput-wide v8, p0, Lce/t0;->f:J

    .line 205
    .line 206
    return-void

    .line 207
    :cond_8
    new-instance v0, Lce/r0;

    .line 208
    .line 209
    invoke-direct {v0, v2}, Lce/r0;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    goto :goto_5

    .line 213
    :goto_4
    throw v0

    .line 214
    :goto_5
    goto :goto_4
.end method

.method public final g()V
    .locals 9

    .line 1
    sget-object v0, Lce/t0;->x:Lde/d;

    .line 2
    .line 3
    invoke-virtual {p0}, Lce/t0;->n()Lwd/c;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lce/t0;->n:Lce/c1;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    iget-object v2, v2, Lce/c1;->f:Lce/y0;

    .line 13
    .line 14
    iget-object v2, v2, Lce/y0;->h:Lce/b1;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-static {v1, v2}, Lce/b1;->o(Lwd/c;I)Lce/b1;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v4, p0, Lce/t0;->m:Lce/p;

    .line 28
    .line 29
    invoke-virtual {v2, v4}, Lce/b1;->n(Lce/p;)Lce/y0;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    iget-object v5, p0, Lce/t0;->b:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v4, v5, v3}, Lce/y0;->a(Ljava/lang/String;Ljava/lang/String;)Lce/c1;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    iput-object v4, p0, Lce/t0;->n:Lce/c1;

    .line 40
    .line 41
    :goto_0
    iget-object v4, p0, Lce/t0;->l:Lce/e;

    .line 42
    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    iget-object v4, v4, Lce/e;->e:Ljava/lang/String;

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {p0}, Lce/t0;->r()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    :goto_1
    iget-object v5, p0, Lce/t0;->n:Lce/c1;

    .line 53
    .line 54
    iget-object v6, v5, Lce/c1;->c:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v7, p0, Lce/t0;->m:Lce/p;

    .line 57
    .line 58
    sget-object v8, Lce/t0;->A:Lce/d;

    .line 59
    .line 60
    invoke-virtual {v8, v4, v6, v3, v7}, Lce/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lce/p;)Lce/e;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const/4 v6, 0x1

    .line 65
    if-eqz v4, :cond_2

    .line 66
    .line 67
    const/4 v4, 0x1

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    const/4 v4, 0x0

    .line 70
    :goto_2
    iput-boolean v4, v5, Lce/c1;->h:Z

    .line 71
    .line 72
    iget-object v4, p0, Lce/t0;->n:Lce/c1;

    .line 73
    .line 74
    iget-boolean v5, v4, Lce/c1;->h:Z

    .line 75
    .line 76
    if-eqz v5, :cond_3

    .line 77
    .line 78
    const/4 v5, 0x2

    .line 79
    iput v5, v4, Lce/c1;->a:I

    .line 80
    .line 81
    :cond_3
    :try_start_0
    sget v4, Lde/d;->b:I

    .line 82
    .line 83
    const/4 v5, 0x3

    .line 84
    if-lt v4, v5, :cond_5

    .line 85
    .line 86
    if-eqz v1, :cond_4

    .line 87
    .line 88
    invoke-virtual {v1}, Lwd/c;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    goto :goto_3

    .line 95
    :catch_0
    move-exception v1

    .line 96
    goto :goto_4

    .line 97
    :cond_5
    :goto_3
    iget-object v1, p0, Lce/t0;->n:Lce/c1;

    .line 98
    .line 99
    invoke-virtual {v1, v3, v3}, Lce/c1;->c(Lce/q;Lce/q;)V
    :try_end_0
    .catch Lce/s; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    goto :goto_5

    .line 103
    :goto_4
    iget-object v4, p0, Lce/t0;->b:Ljava/lang/String;

    .line 104
    .line 105
    if-nez v4, :cond_6

    .line 106
    .line 107
    sget-object v0, Lce/p;->m:Lce/p;

    .line 108
    .line 109
    invoke-virtual {v2, v0}, Lce/b1;->n(Lce/p;)Lce/y0;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0, v3, v3}, Lce/y0;->a(Ljava/lang/String;Ljava/lang/String;)Lce/c1;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iput-object v0, p0, Lce/t0;->n:Lce/c1;

    .line 118
    .line 119
    invoke-virtual {v0, v3, v3}, Lce/c1;->c(Lce/q;Lce/q;)V

    .line 120
    .line 121
    .line 122
    :goto_5
    return-void

    .line 123
    :cond_6
    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    sget v2, Lde/d;->b:I

    .line 129
    .line 130
    if-lt v2, v6, :cond_7

    .line 131
    .line 132
    iget v2, p0, Lce/t0;->w:I

    .line 133
    .line 134
    iget-object v3, p0, Lce/t0;->v:[Lwd/c;

    .line 135
    .line 136
    array-length v3, v3

    .line 137
    if-ge v2, v3, :cond_7

    .line 138
    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 140
    .line 141
    .line 142
    :cond_7
    throw v1
.end method

.method public final getContentLength()I
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lce/t0;->w()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0
    :try_end_0
    .catch Lce/r0; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    const-wide v2, 0xffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    and-long/2addr v0, v2

    .line 11
    long-to-int v1, v0

    .line 12
    return v1

    .line 13
    :catch_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public final getDate()J
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lce/t0;->t()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    if-le v2, v3, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lce/t0;->m()Z

    .line 15
    .line 16
    .line 17
    iget-wide v0, p0, Lce/t0;->d:J
    :try_end_0
    .catch Lce/r0; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    :catch_0
    :cond_0
    return-wide v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 2

    .line 1
    new-instance v0, Lce/u0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Lce/u0;-><init>(Lce/t0;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final getLastModified()J
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lce/t0;->t()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    if-le v2, v3, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lce/t0;->m()Z

    .line 15
    .line 16
    .line 17
    iget-wide v0, p0, Lce/t0;->d:J
    :try_end_0
    .catch Lce/r0; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    :catch_0
    :cond_0
    return-wide v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .line 1
    new-instance v0, Lce/v0;

    .line 2
    .line 3
    const/16 v1, 0x52

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lce/v0;-><init>(Lce/t0;I)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final h()[Lce/g;
    .locals 9

    .line 1
    sget-object v0, Lce/t0;->x:Lde/d;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "ncacn_np:"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lce/t0;->n()Lwd/c;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v3}, Lwd/c;->c()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v3, "[\\PIPE\\netdfs]"

    .line 22
    .line 23
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v3, p0, Lce/t0;->m:Lce/p;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_4

    .line 37
    .line 38
    new-instance v2, Ld2/f;

    .line 39
    .line 40
    invoke-direct {v2, v1, v3}, Ld2/f;-><init>(Ljava/lang/String;Lce/p;)V

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    const/4 v3, 0x4

    .line 45
    :try_start_0
    new-instance v4, Lyd/a;

    .line 46
    .line 47
    invoke-virtual {p0}, Lce/t0;->r()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-direct {v4, v5}, Lyd/a;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v4}, Ld2/f;->q(Lxd/e;)V

    .line 55
    .line 56
    .line 57
    iget v5, v4, Lyd/a;->h:I

    .line 58
    .line 59
    if-nez v5, :cond_2

    .line 60
    .line 61
    iget-object v4, v4, Lyd/a;->j:Lyd/d;

    .line 62
    .line 63
    iget-object v4, v4, Lyd/d;->d:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v4, Lnh/b;

    .line 66
    .line 67
    check-cast v4, Lyd/e;

    .line 68
    .line 69
    iget v5, v4, Lyd/e;->b:I

    .line 70
    .line 71
    new-array v5, v5, [Lce/z0;

    .line 72
    .line 73
    const/4 v6, 0x0

    .line 74
    :goto_0
    iget v7, v4, Lyd/e;->b:I

    .line 75
    .line 76
    if-ge v6, v7, :cond_0

    .line 77
    .line 78
    new-instance v7, Lce/z0;

    .line 79
    .line 80
    iget-object v8, v4, Lyd/e;->c:[Lyd/f;

    .line 81
    .line 82
    aget-object v8, v8, v6

    .line 83
    .line 84
    iget-object v8, v8, Lyd/f;->c:Ljava/lang/String;

    .line 85
    .line 86
    invoke-direct {v7, v8}, Lce/z0;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    aput-object v7, v5, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    add-int/lit8 v6, v6, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    :try_start_1
    iput v1, v2, Ld2/f;->b:I

    .line 95
    .line 96
    iget-object v1, v2, Ld2/f;->g:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v1, Lce/v0;

    .line 99
    .line 100
    if-eqz v1, :cond_1

    .line 101
    .line 102
    invoke-virtual {v1}, Lce/v0;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :catch_0
    move-exception v1

    .line 107
    sget v2, Lde/d;->b:I

    .line 108
    .line 109
    if-lt v2, v3, :cond_1

    .line 110
    .line 111
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 112
    .line 113
    .line 114
    :cond_1
    :goto_1
    return-object v5

    .line 115
    :cond_2
    :try_start_2
    new-instance v5, Lce/r0;

    .line 116
    .line 117
    iget v4, v4, Lyd/a;->h:I

    .line 118
    .line 119
    const/4 v6, 0x1

    .line 120
    invoke-direct {v5, v4, v6}, Lce/r0;-><init>(IZ)V

    .line 121
    .line 122
    .line 123
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    :catchall_0
    move-exception v4

    .line 125
    :try_start_3
    iput v1, v2, Ld2/f;->b:I

    .line 126
    .line 127
    iget-object v1, v2, Ld2/f;->g:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v1, Lce/v0;

    .line 130
    .line 131
    if-eqz v1, :cond_3

    .line 132
    .line 133
    invoke-virtual {v1}, Lce/v0;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :catch_1
    move-exception v1

    .line 138
    sget v2, Lde/d;->b:I

    .line 139
    .line 140
    if-lt v2, v3, :cond_3

    .line 141
    .line 142
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 143
    .line 144
    .line 145
    :cond_3
    :goto_2
    throw v4

    .line 146
    :cond_4
    new-instance v0, Lch/a;

    .line 147
    .line 148
    const-string v2, "DCERPC transport not supported: "

    .line 149
    .line 150
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-direct {v0, v1}, Lch/a;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    goto :goto_4

    .line 158
    :goto_3
    throw v0

    .line 159
    :goto_4
    goto :goto_3
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lce/t0;->n()Lwd/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lwd/c;->a:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    invoke-virtual {p0}, Lce/t0;->r()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    :goto_0
    invoke-virtual {p0}, Lce/t0;->t()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lce/t0;->a:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    add-int/2addr v1, v0

    .line 38
    return v1
.end method

.method public final i(Ljava/util/ArrayList;)V
    .locals 21

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lce/t0;->t()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, v12, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/16 v2, 0x2f

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    add-int/lit8 v1, v1, -0x1

    .line 24
    .line 25
    if-ne v2, v1, :cond_8

    .line 26
    .line 27
    new-instance v1, Lce/d1;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Lce/d1;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lce/f1;

    .line 33
    .line 34
    invoke-direct {v0}, Lce/f1;-><init>()V

    .line 35
    .line 36
    .line 37
    sget v2, Lde/d;->b:I

    .line 38
    .line 39
    sget-object v13, Lce/t0;->x:Lde/d;

    .line 40
    .line 41
    const/4 v14, 0x3

    .line 42
    if-lt v2, v14, :cond_0

    .line 43
    .line 44
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {v12, v1, v0}, Lce/t0;->F(Lce/q;Lce/q;)V

    .line 48
    .line 49
    .line 50
    iget v15, v0, Lce/f1;->t0:I

    .line 51
    .line 52
    new-instance v10, Lce/g1;

    .line 53
    .line 54
    iget v1, v0, Lce/f1;->R0:I

    .line 55
    .line 56
    iget-object v2, v0, Lce/f1;->Q0:Ljava/lang/String;

    .line 57
    .line 58
    invoke-direct {v10, v15, v1, v2}, Lce/g1;-><init>(IILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const/4 v1, 0x2

    .line 62
    iput-byte v1, v0, Lce/j0;->S:B

    .line 63
    .line 64
    :goto_0
    const/4 v11, 0x0

    .line 65
    const/4 v8, 0x0

    .line 66
    :goto_1
    iget v1, v0, Lce/j0;->Z:I

    .line 67
    .line 68
    if-ge v8, v1, :cond_4

    .line 69
    .line 70
    iget-object v1, v0, Lce/j0;->h0:[Lce/g;

    .line 71
    .line 72
    aget-object v1, v1, v8

    .line 73
    .line 74
    invoke-interface {v1}, Lce/g;->getName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-ge v2, v14, :cond_3

    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    const/16 v4, 0x2e

    .line 89
    .line 90
    if-eq v2, v4, :cond_1

    .line 91
    .line 92
    const/16 v4, 0x5c0

    .line 93
    .line 94
    if-ne v2, v4, :cond_3

    .line 95
    .line 96
    :cond_1
    const-string v2, "."

    .line 97
    .line 98
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-nez v2, :cond_2

    .line 103
    .line 104
    const-string v2, ".."

    .line 105
    .line 106
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_3

    .line 111
    .line 112
    :cond_2
    move-object/from16 v2, p1

    .line 113
    .line 114
    move/from16 v20, v8

    .line 115
    .line 116
    move-object/from16 v16, v10

    .line 117
    .line 118
    move-object/from16 v17, v13

    .line 119
    .line 120
    const/4 v13, 0x0

    .line 121
    goto :goto_2

    .line 122
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-lez v2, :cond_2

    .line 127
    .line 128
    new-instance v9, Lce/t0;

    .line 129
    .line 130
    invoke-interface {v1}, Lce/g;->getAttributes()I

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    invoke-interface {v1}, Lce/g;->a()J

    .line 135
    .line 136
    .line 137
    move-result-wide v6

    .line 138
    invoke-interface {v1}, Lce/g;->b()J

    .line 139
    .line 140
    .line 141
    move-result-wide v16

    .line 142
    invoke-interface {v1}, Lce/g;->length()J

    .line 143
    .line 144
    .line 145
    move-result-wide v18

    .line 146
    const/4 v4, 0x1

    .line 147
    move-object v1, v9

    .line 148
    move-object/from16 v2, p0

    .line 149
    .line 150
    move/from16 v20, v8

    .line 151
    .line 152
    move-object v14, v9

    .line 153
    move-wide/from16 v8, v16

    .line 154
    .line 155
    move-object/from16 v16, v10

    .line 156
    .line 157
    move-object/from16 v17, v13

    .line 158
    .line 159
    const/4 v13, 0x0

    .line 160
    move-wide/from16 v10, v18

    .line 161
    .line 162
    invoke-direct/range {v1 .. v11}, Lce/t0;-><init>(Lce/t0;Ljava/lang/String;IIJJJ)V

    .line 163
    .line 164
    .line 165
    move-object/from16 v2, p1

    .line 166
    .line 167
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    :goto_2
    add-int/lit8 v8, v20, 0x1

    .line 171
    .line 172
    move-object/from16 v10, v16

    .line 173
    .line 174
    move-object/from16 v13, v17

    .line 175
    .line 176
    const/4 v11, 0x0

    .line 177
    const/4 v14, 0x3

    .line 178
    goto :goto_1

    .line 179
    :cond_4
    move-object/from16 v2, p1

    .line 180
    .line 181
    move-object/from16 v16, v10

    .line 182
    .line 183
    move-object/from16 v17, v13

    .line 184
    .line 185
    const/4 v13, 0x0

    .line 186
    iget-boolean v3, v0, Lce/f1;->M0:Z

    .line 187
    .line 188
    if-nez v3, :cond_6

    .line 189
    .line 190
    if-nez v1, :cond_5

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_5
    iget v1, v0, Lce/f1;->R0:I

    .line 194
    .line 195
    iget-object v3, v0, Lce/f1;->Q0:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual/range {v16 .. v16}, Lce/i0;->m()V

    .line 198
    .line 199
    .line 200
    move-object/from16 v4, v16

    .line 201
    .line 202
    iput v1, v4, Lce/g1;->N0:I

    .line 203
    .line 204
    iput-object v3, v4, Lce/g1;->O0:Ljava/lang/String;

    .line 205
    .line 206
    iput v13, v4, Lce/q;->i:I

    .line 207
    .line 208
    invoke-virtual {v0}, Lce/j0;->m()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v12, v4, v0}, Lce/t0;->F(Lce/q;Lce/q;)V

    .line 212
    .line 213
    .line 214
    move-object v10, v4

    .line 215
    move-object/from16 v13, v17

    .line 216
    .line 217
    const/4 v14, 0x3

    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    :cond_6
    :goto_3
    :try_start_0
    new-instance v0, Lce/v;

    .line 221
    .line 222
    invoke-direct {v0, v15}, Lce/v;-><init>(I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual/range {p0 .. p0}, Lce/t0;->a()Lce/t;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {v12, v0, v1}, Lce/t0;->F(Lce/q;Lce/q;)V
    :try_end_0
    .catch Lce/r0; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .line 231
    .line 232
    goto :goto_4

    .line 233
    :catch_0
    move-exception v0

    .line 234
    sget v1, Lde/d;->b:I

    .line 235
    .line 236
    const/4 v2, 0x4

    .line 237
    if-lt v1, v2, :cond_7

    .line 238
    .line 239
    move-object/from16 v1, v17

    .line 240
    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 242
    .line 243
    .line 244
    :cond_7
    :goto_4
    return-void

    .line 245
    :cond_8
    new-instance v0, Lce/r0;

    .line 246
    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .line 251
    .line 252
    iget-object v2, v12, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 253
    .line 254
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const-string v2, " directory must end with \'/\'"

    .line 262
    .line 263
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-direct {v0, v1}, Lce/r0;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    goto :goto_6

    .line 274
    :goto_5
    throw v0

    .line 275
    :goto_6
    goto :goto_5
.end method

.method public final j()[Lce/g;
    .locals 9

    .line 1
    sget-object v0, Lce/t0;->x:Lde/d;

    .line 2
    .line 3
    new-instance v1, Lyd/c;

    .line 4
    .line 5
    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v1, v2}, Lyd/c;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v3, "ncacn_np:"

    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lce/t0;->n()Lwd/c;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v4}, Lwd/c;->c()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v4, "[\\PIPE\\srvsvc]"

    .line 33
    .line 34
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget-object v4, p0, Lce/t0;->m:Lce/p;

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_4

    .line 48
    .line 49
    new-instance v3, Ld2/f;

    .line 50
    .line 51
    invoke-direct {v3, v2, v4}, Ld2/f;-><init>(Ljava/lang/String;Lce/p;)V

    .line 52
    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    const/4 v4, 0x4

    .line 56
    :try_start_0
    invoke-virtual {v3, v1}, Ld2/f;->q(Lxd/e;)V

    .line 57
    .line 58
    .line 59
    iget v5, v1, Lyd/c;->h:I

    .line 60
    .line 61
    if-nez v5, :cond_2

    .line 62
    .line 63
    iget-object v1, v1, Lyd/c;->k:Lnh/b;

    .line 64
    .line 65
    check-cast v1, Lyd/h;

    .line 66
    .line 67
    iget v5, v1, Lyd/h;->b:I

    .line 68
    .line 69
    new-array v5, v5, [Lyd/b;

    .line 70
    .line 71
    const/4 v6, 0x0

    .line 72
    :goto_0
    iget v7, v1, Lyd/h;->b:I

    .line 73
    .line 74
    if-ge v6, v7, :cond_0

    .line 75
    .line 76
    new-instance v7, Lyd/b;

    .line 77
    .line 78
    iget-object v8, v1, Lyd/h;->c:[Lyd/g;

    .line 79
    .line 80
    aget-object v8, v8, v6

    .line 81
    .line 82
    invoke-direct {v7, v8}, Lyd/b;-><init>(Lyd/g;)V

    .line 83
    .line 84
    .line 85
    aput-object v7, v5, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    add-int/lit8 v6, v6, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    :try_start_1
    iput v2, v3, Ld2/f;->b:I

    .line 91
    .line 92
    iget-object v1, v3, Ld2/f;->g:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v1, Lce/v0;

    .line 95
    .line 96
    if-eqz v1, :cond_1

    .line 97
    .line 98
    invoke-virtual {v1}, Lce/v0;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :catch_0
    move-exception v1

    .line 103
    sget v2, Lde/d;->b:I

    .line 104
    .line 105
    if-lt v2, v4, :cond_1

    .line 106
    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 108
    .line 109
    .line 110
    :cond_1
    :goto_1
    return-object v5

    .line 111
    :cond_2
    :try_start_2
    new-instance v5, Lce/r0;

    .line 112
    .line 113
    iget v1, v1, Lyd/c;->h:I

    .line 114
    .line 115
    const/4 v6, 0x1

    .line 116
    invoke-direct {v5, v1, v6}, Lce/r0;-><init>(IZ)V

    .line 117
    .line 118
    .line 119
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    :catchall_0
    move-exception v1

    .line 121
    :try_start_3
    iput v2, v3, Ld2/f;->b:I

    .line 122
    .line 123
    iget-object v2, v3, Ld2/f;->g:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v2, Lce/v0;

    .line 126
    .line 127
    if-eqz v2, :cond_3

    .line 128
    .line 129
    invoke-virtual {v2}, Lce/v0;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :catch_1
    move-exception v2

    .line 134
    sget v3, Lde/d;->b:I

    .line 135
    .line 136
    if-lt v3, v4, :cond_3

    .line 137
    .line 138
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 139
    .line 140
    .line 141
    :cond_3
    :goto_2
    throw v1

    .line 142
    :cond_4
    new-instance v0, Lch/a;

    .line 143
    .line 144
    const-string v1, "DCERPC transport not supported: "

    .line 145
    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-direct {v0, v1}, Lch/a;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    goto :goto_4

    .line 154
    :goto_3
    throw v0

    .line 155
    :goto_4
    goto :goto_3
.end method

.method public final k(Ljava/util/ArrayList;)V
    .locals 21

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    iget-object v0, v11, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lce/t0;->s()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    :goto_0
    const/4 v13, 0x2

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-virtual/range {p0 .. p0}, Lce/t0;->c()V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lce/j;

    .line 28
    .line 29
    iget-object v1, v11, Lce/t0;->n:Lce/c1;

    .line 30
    .line 31
    iget-object v1, v1, Lce/c1;->f:Lce/y0;

    .line 32
    .line 33
    iget-object v1, v1, Lce/y0;->h:Lce/b1;

    .line 34
    .line 35
    iget-object v1, v1, Lce/b1;->w:Lce/a1;

    .line 36
    .line 37
    iget-object v1, v1, Lce/a1;->e:Ljava/lang/String;

    .line 38
    .line 39
    const/high16 v2, -0x80000000

    .line 40
    .line 41
    invoke-direct {v0, v1, v2}, Lce/j;-><init>(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lce/l;

    .line 45
    .line 46
    invoke-direct {v1}, Lce/l;-><init>()V

    .line 47
    .line 48
    .line 49
    :goto_1
    move-object v14, v0

    .line 50
    move-object v15, v1

    .line 51
    goto :goto_2

    .line 52
    :cond_1
    if-ne v0, v13, :cond_a

    .line 53
    .line 54
    new-instance v0, Lce/j;

    .line 55
    .line 56
    iget-object v1, v11, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const/4 v2, -0x1

    .line 63
    invoke-direct {v0, v1, v2}, Lce/j;-><init>(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    new-instance v1, Lce/l;

    .line 67
    .line 68
    invoke-direct {v1}, Lce/l;-><init>()V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    :goto_2
    invoke-virtual {v11, v14, v15}, Lce/t0;->F(Lce/q;Lce/q;)V

    .line 73
    .line 74
    .line 75
    iget v0, v15, Lce/j0;->Y:I

    .line 76
    .line 77
    const/4 v1, 0x1

    .line 78
    const/16 v2, 0xea

    .line 79
    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    if-ne v0, v2, :cond_3

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_3
    new-instance v0, Lce/r0;

    .line 86
    .line 87
    iget v2, v15, Lce/j0;->Y:I

    .line 88
    .line 89
    invoke-direct {v0, v2, v1}, Lce/r0;-><init>(IZ)V

    .line 90
    .line 91
    .line 92
    throw v0

    .line 93
    :cond_4
    :goto_3
    if-ne v0, v2, :cond_5

    .line 94
    .line 95
    const/16 v16, 0x1

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_5
    const/16 v16, 0x0

    .line 99
    .line 100
    :goto_4
    iget v0, v15, Lce/j0;->Z:I

    .line 101
    .line 102
    if-eqz v16, :cond_6

    .line 103
    .line 104
    sub-int/2addr v0, v1

    .line 105
    :cond_6
    move v9, v0

    .line 106
    const/4 v10, 0x0

    .line 107
    :goto_5
    if-ge v10, v9, :cond_8

    .line 108
    .line 109
    iget-object v0, v15, Lce/j0;->h0:[Lce/g;

    .line 110
    .line 111
    aget-object v0, v0, v10

    .line 112
    .line 113
    invoke-interface {v0}, Lce/g;->getName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-lez v1, :cond_7

    .line 122
    .line 123
    new-instance v7, Lce/t0;

    .line 124
    .line 125
    invoke-interface {v0}, Lce/g;->getType()I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    const/16 v4, 0x11

    .line 130
    .line 131
    const-wide/16 v5, 0x0

    .line 132
    .line 133
    const-wide/16 v17, 0x0

    .line 134
    .line 135
    const-wide/16 v19, 0x0

    .line 136
    .line 137
    move-object v0, v7

    .line 138
    move-object/from16 v1, p0

    .line 139
    .line 140
    move-object v12, v7

    .line 141
    move-wide/from16 v7, v17

    .line 142
    .line 143
    move/from16 v17, v9

    .line 144
    .line 145
    move/from16 v18, v10

    .line 146
    .line 147
    move-wide/from16 v9, v19

    .line 148
    .line 149
    invoke-direct/range {v0 .. v10}, Lce/t0;-><init>(Lce/t0;Ljava/lang/String;IIJJJ)V

    .line 150
    .line 151
    .line 152
    move-object/from16 v0, p1

    .line 153
    .line 154
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    goto :goto_6

    .line 158
    :cond_7
    move-object/from16 v0, p1

    .line 159
    .line 160
    move/from16 v17, v9

    .line 161
    .line 162
    move/from16 v18, v10

    .line 163
    .line 164
    :goto_6
    add-int/lit8 v10, v18, 0x1

    .line 165
    .line 166
    move/from16 v9, v17

    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_8
    move-object/from16 v0, p1

    .line 170
    .line 171
    invoke-virtual/range {p0 .. p0}, Lce/t0;->s()I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-eq v1, v13, :cond_9

    .line 176
    .line 177
    goto :goto_7

    .line 178
    :cond_9
    const/16 v1, -0x29

    .line 179
    .line 180
    iput-byte v1, v14, Lce/i0;->X:B

    .line 181
    .line 182
    iget-object v1, v15, Lce/l;->N0:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v14}, Lce/i0;->m()V

    .line 185
    .line 186
    .line 187
    iput-object v1, v14, Lce/j;->N0:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v15}, Lce/j0;->m()V

    .line 190
    .line 191
    .line 192
    if-nez v16, :cond_2

    .line 193
    .line 194
    :goto_7
    return-void

    .line 195
    :cond_a
    new-instance v0, Lce/r0;

    .line 196
    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    const-string v2, "The requested list operations is invalid: "

    .line 200
    .line 201
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    iget-object v2, v11, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 205
    .line 206
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-direct {v0, v1}, Lce/r0;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    goto :goto_9

    .line 221
    :goto_8
    throw v0

    .line 222
    :goto_9
    goto :goto_8
.end method

.method public final l(Ljava/util/ArrayList;)V
    .locals 14

    .line 1
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0x2f

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x1

    .line 18
    sub-int/2addr v0, v2

    .line 19
    if-ne v1, v0, :cond_d

    .line 20
    .line 21
    invoke-virtual {p0}, Lce/t0;->s()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x4

    .line 26
    if-ne v0, v1, :cond_c

    .line 27
    .line 28
    new-instance v0, Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lce/t0;->r()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget-object v4, p0, Lce/t0;->m:Lce/p;

    .line 38
    .line 39
    sget-object v5, Lce/t0;->A:Lce/d;

    .line 40
    .line 41
    invoke-virtual {v5, v4}, Lce/d;->c(Lce/p;)Ljava/util/HashMap;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const/4 v5, 0x0

    .line 46
    sget-object v6, Lce/t0;->x:Lde/d;

    .line 47
    .line 48
    if-nez v4, :cond_0

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    :try_start_0
    invoke-virtual {p0}, Lce/t0;->h()[Lce/g;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    const/4 v4, 0x0

    .line 66
    :goto_0
    array-length v7, v3

    .line 67
    if-ge v4, v7, :cond_2

    .line 68
    .line 69
    aget-object v7, v3, v4

    .line 70
    .line 71
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    if-nez v8, :cond_1

    .line 76
    .line 77
    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catch_0
    move-exception v3

    .line 82
    goto :goto_2

    .line 83
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :goto_2
    sget v4, Lde/d;->b:I

    .line 87
    .line 88
    if-lt v4, v1, :cond_2

    .line 89
    .line 90
    invoke-virtual {v3, v6}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lce/t0;->o()Lwd/c;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const/4 v3, 0x0

    .line 98
    :goto_4
    if-eqz v1, :cond_7

    .line 99
    .line 100
    const/4 v1, 0x3

    .line 101
    :try_start_1
    invoke-virtual {p0}, Lce/t0;->g()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 102
    .line 103
    .line 104
    :try_start_2
    invoke-virtual {p0}, Lce/t0;->j()[Lce/g;

    .line 105
    .line 106
    .line 107
    move-result-object v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 108
    goto :goto_6

    .line 109
    :catch_1
    move-exception v4

    .line 110
    :try_start_3
    sget v7, Lde/d;->b:I

    .line 111
    .line 112
    if-lt v7, v1, :cond_3

    .line 113
    .line 114
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 115
    .line 116
    .line 117
    goto :goto_5

    .line 118
    :catch_2
    move-exception v3

    .line 119
    goto :goto_8

    .line 120
    :cond_3
    :goto_5
    new-instance v4, Lce/m;

    .line 121
    .line 122
    invoke-direct {v4}, Lce/m;-><init>()V

    .line 123
    .line 124
    .line 125
    new-instance v7, Lce/n;

    .line 126
    .line 127
    const/4 v8, 0x0

    .line 128
    invoke-direct {v7, v8}, Lce/n;-><init>(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v4, v7}, Lce/t0;->F(Lce/q;Lce/q;)V

    .line 132
    .line 133
    .line 134
    iget v4, v7, Lce/j0;->Y:I

    .line 135
    .line 136
    if-nez v4, :cond_5

    .line 137
    .line 138
    iget-object v4, v7, Lce/j0;->h0:[Lce/g;

    .line 139
    .line 140
    :goto_6
    const/4 v7, 0x0

    .line 141
    :goto_7
    array-length v8, v4

    .line 142
    if-ge v7, v8, :cond_7

    .line 143
    .line 144
    aget-object v8, v4, v7

    .line 145
    .line 146
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    if-nez v9, :cond_4

    .line 151
    .line 152
    invoke-virtual {v0, v8, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 156
    .line 157
    goto :goto_7

    .line 158
    :cond_5
    new-instance v3, Lce/r0;

    .line 159
    .line 160
    iget v4, v7, Lce/j0;->Y:I

    .line 161
    .line 162
    invoke-direct {v3, v4, v2}, Lce/r0;-><init>(IZ)V

    .line 163
    .line 164
    .line 165
    throw v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 166
    :goto_8
    sget v4, Lde/d;->b:I

    .line 167
    .line 168
    if-lt v4, v1, :cond_6

    .line 169
    .line 170
    invoke-virtual {v3, v6}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 171
    .line 172
    .line 173
    :cond_6
    invoke-virtual {p0}, Lce/t0;->q()Lwd/c;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    goto :goto_4

    .line 178
    :cond_7
    if-eqz v3, :cond_9

    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-eqz v1, :cond_9

    .line 185
    .line 186
    instance-of p1, v3, Lce/r0;

    .line 187
    .line 188
    if-nez p1, :cond_8

    .line 189
    .line 190
    new-instance p1, Lce/r0;

    .line 191
    .line 192
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-direct {p1, v0, v3}, Lce/r0;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 199
    .line 200
    .line 201
    throw p1

    .line 202
    :cond_8
    check-cast v3, Lce/r0;

    .line 203
    .line 204
    throw v3

    .line 205
    :cond_9
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    :cond_a
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    if-eqz v1, :cond_b

    .line 218
    .line 219
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    check-cast v1, Lce/g;

    .line 224
    .line 225
    invoke-interface {v1}, Lce/g;->getName()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-lez v2, :cond_a

    .line 234
    .line 235
    new-instance v13, Lce/t0;

    .line 236
    .line 237
    invoke-interface {v1}, Lce/g;->getType()I

    .line 238
    .line 239
    .line 240
    move-result v5

    .line 241
    const/16 v6, 0x11

    .line 242
    .line 243
    const-wide/16 v7, 0x0

    .line 244
    .line 245
    const-wide/16 v9, 0x0

    .line 246
    .line 247
    const-wide/16 v11, 0x0

    .line 248
    .line 249
    move-object v2, v13

    .line 250
    move-object v3, p0

    .line 251
    invoke-direct/range {v2 .. v12}, Lce/t0;-><init>(Lce/t0;Ljava/lang/String;IIJJJ)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    goto :goto_9

    .line 258
    :cond_b
    return-void

    .line 259
    :cond_c
    new-instance p1, Lce/r0;

    .line 260
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    const-string v1, "The requested list operations is invalid: "

    .line 264
    .line 265
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 269
    .line 270
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-direct {p1, v0}, Lce/r0;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    throw p1

    .line 285
    :cond_d
    new-instance p1, Lce/r0;

    .line 286
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .line 291
    .line 292
    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 293
    .line 294
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    const-string v1, " directory must end with \'/\'"

    .line 302
    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-direct {p1, v0}, Lce/r0;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    goto :goto_b

    .line 314
    :goto_a
    throw p1

    .line 315
    :goto_b
    goto :goto_a
.end method

.method public final m()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lce/t0;->f:J

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    cmp-long v4, v0, v2

    .line 8
    .line 9
    if-lez v4, :cond_0

    .line 10
    .line 11
    iget-boolean v0, p0, Lce/t0;->i:Z

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    const/16 v0, 0x11

    .line 15
    .line 16
    iput v0, p0, Lce/t0;->e:I

    .line 17
    .line 18
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    iput-wide v0, p0, Lce/t0;->c:J

    .line 21
    .line 22
    iput-wide v0, p0, Lce/t0;->d:J

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lce/t0;->i:Z

    .line 26
    .line 27
    :try_start_0
    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v2, 0x1

    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    iget-object v1, p0, Lce/t0;->b:Ljava/lang/String;

    .line 42
    .line 43
    if-nez v1, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0}, Lce/t0;->s()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    const/4 v3, 0x2

    .line 50
    if-ne v1, v3, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0, v2}, Lwd/c;->b(Ljava/lang/String;Z)Lwd/c;

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v1, v0}, Lwd/c;->b(Ljava/lang/String;Z)Lwd/c;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lwd/c;->d()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    invoke-virtual {p0}, Lce/t0;->t()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eq v0, v2, :cond_5

    .line 87
    .line 88
    iget-object v0, p0, Lce/t0;->b:Ljava/lang/String;

    .line 89
    .line 90
    const-string v1, "IPC$"

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_4
    invoke-virtual {p0}, Lce/t0;->t()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    const/16 v1, 0x101

    .line 104
    .line 105
    invoke-virtual {p0, v1, v0}, Lce/t0;->C(ILjava/lang/String;)Lce/i;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-interface {v0}, Lce/i;->getAttributes()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    iput v1, p0, Lce/t0;->e:I

    .line 114
    .line 115
    invoke-interface {v0}, Lce/i;->a()J

    .line 116
    .line 117
    .line 118
    move-result-wide v3

    .line 119
    iput-wide v3, p0, Lce/t0;->c:J

    .line 120
    .line 121
    invoke-interface {v0}, Lce/i;->getLastWriteTime()J

    .line 122
    .line 123
    .line 124
    move-result-wide v0

    .line 125
    iput-wide v0, p0, Lce/t0;->d:J

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lce/t0;->c()V

    .line 129
    .line 130
    .line 131
    :goto_1
    iput-boolean v2, p0, Lce/t0;->i:Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lce/r0; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :goto_2
    iget v1, v0, Lce/r0;->a:I

    .line 135
    .line 136
    sparse-switch v1, :sswitch_data_0

    .line 137
    .line 138
    .line 139
    throw v0

    .line 140
    :catch_1
    :goto_3
    :sswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 141
    .line 142
    .line 143
    move-result-wide v0

    .line 144
    sget-wide v2, Lce/t0;->y:J

    .line 145
    .line 146
    add-long/2addr v0, v2

    .line 147
    iput-wide v0, p0, Lce/t0;->f:J

    .line 148
    .line 149
    iget-boolean v0, p0, Lce/t0;->i:Z

    .line 150
    .line 151
    return v0

    .line 152
    nop

    .line 153
    :sswitch_data_0
    .sparse-switch
        -0x3ffffff1 -> :sswitch_0
        -0x3fffffcd -> :sswitch_0
        -0x3fffffcc -> :sswitch_0
        -0x3fffffc6 -> :sswitch_0
    .end sparse-switch
.end method

.method public final n()Lwd/c;
    .locals 2

    .line 1
    iget v0, p0, Lce/t0;->w:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lce/t0;->o()Lwd/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v1, p0, Lce/t0;->v:[Lwd/c;

    .line 11
    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 13
    .line 14
    aget-object v0, v1, v0

    .line 15
    .line 16
    return-object v0
.end method

.method public final o()Lwd/c;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lce/t0;->w:I

    .line 3
    .line 4
    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const/4 v4, 0x1

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    const-string v5, "server"

    .line 26
    .line 27
    invoke-static {v3, v5}, Lce/t0;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-lez v6, :cond_0

    .line 38
    .line 39
    new-array v1, v4, [Lwd/c;

    .line 40
    .line 41
    iput-object v1, p0, Lce/t0;->v:[Lwd/c;

    .line 42
    .line 43
    invoke-static {v5, v0}, Lwd/c;->b(Ljava/lang/String;Z)Lwd/c;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    aput-object v2, v1, v0

    .line 48
    .line 49
    invoke-virtual {p0}, Lce/t0;->q()Lwd/c;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0

    .line 54
    :cond_0
    const-string v5, "address"

    .line 55
    .line 56
    invoke-static {v3, v5}, Lce/t0;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-lez v5, :cond_1

    .line 67
    .line 68
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    new-array v3, v4, [Lwd/c;

    .line 77
    .line 78
    iput-object v3, p0, Lce/t0;->v:[Lwd/c;

    .line 79
    .line 80
    new-instance v4, Lwd/c;

    .line 81
    .line 82
    invoke-static {v1, v2}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-direct {v4, v1}, Lwd/c;-><init>(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    aput-object v4, v3, v0

    .line 90
    .line 91
    invoke-virtual {p0}, Lce/t0;->q()Lwd/c;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    return-object v0

    .line 96
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-nez v3, :cond_3

    .line 101
    .line 102
    :try_start_0
    const-string v1, "\u0001\u0002__MSBROWSE__\u0002"

    .line 103
    .line 104
    const/4 v2, 0x0

    .line 105
    invoke-static {v2, v4, v1}, Lae/g;->d(Ljava/net/InetAddress;ILjava/lang/String;)Lae/g;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    new-array v2, v4, [Lwd/c;

    .line 110
    .line 111
    iput-object v2, p0, Lce/t0;->v:[Lwd/c;

    .line 112
    .line 113
    invoke-virtual {v1}, Lae/g;->f()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-static {v1, v0}, Lwd/c;->b(Ljava/lang/String;Z)Lwd/c;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    aput-object v1, v2, v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    invoke-static {}, Lce/p;->i()V

    .line 126
    .line 127
    .line 128
    sget-object v1, Lce/p;->i:Ljava/lang/String;

    .line 129
    .line 130
    const-string v2, "?"

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-nez v1, :cond_2

    .line 137
    .line 138
    sget-object v0, Lce/p;->i:Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {v0, v4}, Lwd/c;->a(Ljava/lang/String;Z)[Lwd/c;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iput-object v0, p0, Lce/t0;->v:[Lwd/c;

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_2
    throw v0

    .line 148
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-eqz v3, :cond_5

    .line 153
    .line 154
    const-string v3, "/"

    .line 155
    .line 156
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_4

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_4
    invoke-static {v1, v0}, Lwd/c;->a(Ljava/lang/String;Z)[Lwd/c;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    iput-object v0, p0, Lce/t0;->v:[Lwd/c;

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_5
    :goto_0
    invoke-static {v1, v4}, Lwd/c;->a(Ljava/lang/String;Z)[Lwd/c;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    iput-object v0, p0, Lce/t0;->v:[Lwd/c;

    .line 175
    .line 176
    :goto_1
    invoke-virtual {p0}, Lce/t0;->q()Lwd/c;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lce/t0;->t()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lce/t0;->a:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x2f

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-le v0, v2, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lce/t0;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/lit8 v0, v0, -0x2

    .line 22
    .line 23
    :goto_0
    iget-object v3, p0, Lce/t0;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eq v3, v1, :cond_0

    .line 30
    .line 31
    add-int/lit8 v0, v0, -0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v1, p0, Lce/t0;->a:Ljava/lang/String;

    .line 35
    .line 36
    add-int/2addr v0, v2

    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0

    .line 42
    :cond_1
    iget-object v0, p0, Lce/t0;->b:Ljava/lang/String;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lce/t0;->b:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0

    .line 64
    :cond_2
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-lez v0, :cond_3

    .line 75
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    return-object v0

    .line 98
    :cond_3
    const-string v0, "smb1://"

    .line 99
    .line 100
    return-object v0
.end method

.method public final q()Lwd/c;
    .locals 3

    .line 1
    iget v0, p0, Lce/t0;->w:I

    .line 2
    .line 3
    iget-object v1, p0, Lce/t0;->v:[Lwd/c;

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    if-ge v0, v2, :cond_0

    .line 7
    .line 8
    add-int/lit8 v2, v0, 0x1

    .line 9
    .line 10
    iput v2, p0, Lce/t0;->w:I

    .line 11
    .line 12
    aget-object v0, v1, v0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :cond_0
    return-object v0
.end method

.method public final s()I
    .locals 3

    .line 1
    iget v0, p0, Lce/t0;->r:I

    .line 2
    .line 3
    if-nez v0, :cond_9

    .line 4
    .line 5
    invoke-virtual {p0}, Lce/t0;->t()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-le v0, v1, :cond_0

    .line 15
    .line 16
    iput v1, p0, Lce/t0;->r:I

    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lce/t0;->b:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v0, :cond_4

    .line 23
    .line 24
    invoke-virtual {p0}, Lce/t0;->c()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lce/t0;->b:Ljava/lang/String;

    .line 28
    .line 29
    const-string v1, "IPC$"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    const/16 v0, 0x10

    .line 38
    .line 39
    iput v0, p0, Lce/t0;->r:I

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    iget-object v0, p0, Lce/t0;->n:Lce/c1;

    .line 43
    .line 44
    iget-object v0, v0, Lce/c1;->d:Ljava/lang/String;

    .line 45
    .line 46
    const-string v1, "LPT1:"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    const/16 v0, 0x20

    .line 55
    .line 56
    iput v0, p0, Lce/t0;->r:I

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    iget-object v0, p0, Lce/t0;->n:Lce/c1;

    .line 60
    .line 61
    iget-object v0, v0, Lce/c1;->d:Ljava/lang/String;

    .line 62
    .line 63
    const-string v1, "COMM"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    const/16 v0, 0x40

    .line 72
    .line 73
    iput v0, p0, Lce/t0;->r:I

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    const/16 v0, 0x8

    .line 77
    .line 78
    iput v0, p0, Lce/t0;->r:I

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_4
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const/4 v1, 0x2

    .line 88
    if-eqz v0, :cond_8

    .line 89
    .line 90
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_5

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lce/t0;->n()Lwd/c;

    .line 104
    .line 105
    .line 106
    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    iget-object v0, v0, Lwd/c;->a:Ljava/lang/Object;

    .line 108
    .line 109
    instance-of v2, v0, Lae/g;

    .line 110
    .line 111
    if-eqz v2, :cond_7

    .line 112
    .line 113
    check-cast v0, Lae/g;

    .line 114
    .line 115
    iget-object v0, v0, Lae/g;->a:Lae/b;

    .line 116
    .line 117
    iget v0, v0, Lae/b;->c:I

    .line 118
    .line 119
    const/16 v2, 0x1d

    .line 120
    .line 121
    if-eq v0, v2, :cond_6

    .line 122
    .line 123
    const/16 v2, 0x1b

    .line 124
    .line 125
    if-ne v0, v2, :cond_7

    .line 126
    .line 127
    :cond_6
    iput v1, p0, Lce/t0;->r:I

    .line 128
    .line 129
    return v1

    .line 130
    :cond_7
    const/4 v0, 0x4

    .line 131
    iput v0, p0, Lce/t0;->r:I

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    new-instance v1, Lce/r0;

    .line 136
    .line 137
    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-direct {v1, v2, v0}, Lce/r0;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 144
    .line 145
    .line 146
    throw v1

    .line 147
    :cond_8
    :goto_0
    iput v1, p0, Lce/t0;->r:I

    .line 148
    .line 149
    :cond_9
    :goto_1
    iget v0, p0, Lce/t0;->r:I

    .line 150
    .line 151
    return v0
.end method

.method public final t()Ljava/lang/String;
    .locals 14

    .line 1
    iget-object v0, p0, Lce/t0;->p:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_12

    .line 4
    .line 5
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    array-length v1, v0

    .line 16
    new-array v1, v1, [C

    .line 17
    .line 18
    array-length v2, v0

    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    const/4 v6, 0x0

    .line 23
    :goto_0
    const/4 v7, 0x0

    .line 24
    const/16 v8, 0x2f

    .line 25
    .line 26
    const/4 v9, 0x1

    .line 27
    if-ge v4, v2, :cond_d

    .line 28
    .line 29
    if-eqz v6, :cond_b

    .line 30
    .line 31
    const/4 v7, 0x2

    .line 32
    if-eq v6, v9, :cond_0

    .line 33
    .line 34
    if-eq v6, v7, :cond_9

    .line 35
    .line 36
    goto :goto_4

    .line 37
    :cond_0
    aget-char v10, v0, v4

    .line 38
    .line 39
    if-ne v10, v8, :cond_1

    .line 40
    .line 41
    goto :goto_4

    .line 42
    :cond_1
    const/16 v11, 0x2e

    .line 43
    .line 44
    if-ne v10, v11, :cond_3

    .line 45
    .line 46
    add-int/lit8 v12, v4, 0x1

    .line 47
    .line 48
    if-ge v12, v2, :cond_2

    .line 49
    .line 50
    aget-char v13, v0, v12

    .line 51
    .line 52
    if-ne v13, v8, :cond_3

    .line 53
    .line 54
    :cond_2
    move v4, v12

    .line 55
    goto :goto_4

    .line 56
    :cond_3
    add-int/lit8 v12, v4, 0x1

    .line 57
    .line 58
    if-ge v12, v2, :cond_8

    .line 59
    .line 60
    if-ne v10, v11, :cond_8

    .line 61
    .line 62
    aget-char v10, v0, v12

    .line 63
    .line 64
    if-ne v10, v11, :cond_8

    .line 65
    .line 66
    add-int/lit8 v10, v4, 0x2

    .line 67
    .line 68
    if-ge v10, v2, :cond_4

    .line 69
    .line 70
    aget-char v11, v0, v10

    .line 71
    .line 72
    if-ne v11, v8, :cond_8

    .line 73
    .line 74
    :cond_4
    if-ne v5, v9, :cond_5

    .line 75
    .line 76
    :goto_1
    move v4, v10

    .line 77
    goto :goto_4

    .line 78
    :cond_5
    :goto_2
    add-int/lit8 v4, v5, -0x1

    .line 79
    .line 80
    if-le v4, v9, :cond_7

    .line 81
    .line 82
    add-int/lit8 v5, v5, -0x2

    .line 83
    .line 84
    aget-char v5, v1, v5

    .line 85
    .line 86
    if-ne v5, v8, :cond_6

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_6
    move v5, v4

    .line 90
    goto :goto_2

    .line 91
    :cond_7
    :goto_3
    move v5, v4

    .line 92
    goto :goto_1

    .line 93
    :cond_8
    const/4 v6, 0x2

    .line 94
    :cond_9
    aget-char v7, v0, v4

    .line 95
    .line 96
    if-ne v7, v8, :cond_a

    .line 97
    .line 98
    const/4 v6, 0x1

    .line 99
    :cond_a
    add-int/lit8 v8, v5, 0x1

    .line 100
    .line 101
    aput-char v7, v1, v5

    .line 102
    .line 103
    move v5, v8

    .line 104
    goto :goto_4

    .line 105
    :cond_b
    aget-char v6, v0, v4

    .line 106
    .line 107
    if-eq v6, v8, :cond_c

    .line 108
    .line 109
    return-object v7

    .line 110
    :cond_c
    add-int/lit8 v7, v5, 0x1

    .line 111
    .line 112
    aput-char v6, v1, v5

    .line 113
    .line 114
    move v5, v7

    .line 115
    const/4 v6, 0x1

    .line 116
    :goto_4
    add-int/2addr v4, v9

    .line 117
    goto :goto_0

    .line 118
    :cond_d
    new-instance v0, Ljava/lang/String;

    .line 119
    .line 120
    invoke-direct {v0, v1, v3, v5}, Ljava/lang/String;-><init>([CII)V

    .line 121
    .line 122
    .line 123
    iput-object v0, p0, Lce/t0;->a:Ljava/lang/String;

    .line 124
    .line 125
    const-string v2, "\\"

    .line 126
    .line 127
    if-le v5, v9, :cond_11

    .line 128
    .line 129
    add-int/lit8 v3, v5, -0x1

    .line 130
    .line 131
    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->indexOf(II)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-gez v0, :cond_e

    .line 136
    .line 137
    iget-object v0, p0, Lce/t0;->a:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    iput-object v0, p0, Lce/t0;->b:Ljava/lang/String;

    .line 144
    .line 145
    iput-object v2, p0, Lce/t0;->p:Ljava/lang/String;

    .line 146
    .line 147
    goto :goto_5

    .line 148
    :cond_e
    if-ne v0, v3, :cond_f

    .line 149
    .line 150
    iget-object v1, p0, Lce/t0;->a:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v1, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iput-object v0, p0, Lce/t0;->b:Ljava/lang/String;

    .line 157
    .line 158
    iput-object v2, p0, Lce/t0;->p:Ljava/lang/String;

    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_f
    iget-object v2, p0, Lce/t0;->a:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v2, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    iput-object v2, p0, Lce/t0;->b:Ljava/lang/String;

    .line 168
    .line 169
    iget-object v2, p0, Lce/t0;->a:Ljava/lang/String;

    .line 170
    .line 171
    aget-char v1, v1, v3

    .line 172
    .line 173
    if-ne v1, v8, :cond_10

    .line 174
    .line 175
    move v5, v3

    .line 176
    :cond_10
    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    iput-object v0, p0, Lce/t0;->p:Ljava/lang/String;

    .line 181
    .line 182
    const/16 v1, 0x5c

    .line 183
    .line 184
    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    iput-object v0, p0, Lce/t0;->p:Ljava/lang/String;

    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_11
    iput-object v7, p0, Lce/t0;->b:Ljava/lang/String;

    .line 192
    .line 193
    iput-object v2, p0, Lce/t0;->p:Ljava/lang/String;

    .line 194
    .line 195
    :cond_12
    :goto_5
    iget-object v0, p0, Lce/t0;->p:Ljava/lang/String;

    .line 196
    .line 197
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-boolean v1, Lge/b;->d:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v1, "^(smb.*:).*(@.*)$"

    .line 14
    .line 15
    const-string v2, "$1******$2"

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    return-object v0
.end method

.method public final u()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lce/t0;->t()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-virtual {p0}, Lce/t0;->m()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    return v2

    .line 21
    :cond_1
    iget v0, p0, Lce/t0;->e:I

    .line 22
    .line 23
    const/16 v3, 0x10

    .line 24
    .line 25
    and-int/2addr v0, v3

    .line 26
    if-ne v0, v3, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/4 v1, 0x0

    .line 30
    :goto_0
    return v1
.end method

.method public final v()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lce/t0;->s:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lce/t0;->n:Lce/c1;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v1, v0, Lce/c1;->a:I

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    iget v1, p0, Lce/t0;->t:I

    .line 15
    .line 16
    iget v0, v0, Lce/c1;->i:I

    .line 17
    .line 18
    if-ne v1, v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
.end method

.method public final w()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lce/t0;->h:J

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    cmp-long v4, v0, v2

    .line 8
    .line 9
    if-lez v4, :cond_0

    .line 10
    .line 11
    iget-wide v0, p0, Lce/t0;->g:J

    .line 12
    .line 13
    return-wide v0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lce/t0;->s()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v1, 0x8

    .line 19
    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    new-instance v0, Lce/m1;

    .line 23
    .line 24
    invoke-direct {v0}, Lce/m1;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lce/k1;

    .line 28
    .line 29
    invoke-direct {v1}, Lce/k1;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1, v0}, Lce/t0;->F(Lce/q;Lce/q;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, v0, Lce/m1;->M0:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Lce/l1;

    .line 38
    .line 39
    iget-wide v1, v0, Lce/l1;->a:J

    .line 40
    .line 41
    iget v3, v0, Lce/l1;->c:I

    .line 42
    .line 43
    int-to-long v3, v3

    .line 44
    mul-long v1, v1, v3

    .line 45
    .line 46
    iget v0, v0, Lce/l1;->d:I

    .line 47
    .line 48
    int-to-long v3, v0

    .line 49
    mul-long v1, v1, v3

    .line 50
    .line 51
    iput-wide v1, p0, Lce/t0;->g:J

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p0}, Lce/t0;->t()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const/4 v1, 0x1

    .line 63
    if-le v0, v1, :cond_2

    .line 64
    .line 65
    iget v0, p0, Lce/t0;->r:I

    .line 66
    .line 67
    const/16 v1, 0x10

    .line 68
    .line 69
    if-eq v0, v1, :cond_2

    .line 70
    .line 71
    invoke-virtual {p0}, Lce/t0;->t()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const/16 v1, 0x102

    .line 76
    .line 77
    invoke-virtual {p0, v1, v0}, Lce/t0;->C(ILjava/lang/String;)Lce/i;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-interface {v0}, Lce/i;->getSize()J

    .line 82
    .line 83
    .line 84
    move-result-wide v0

    .line 85
    iput-wide v0, p0, Lce/t0;->g:J

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    const-wide/16 v0, 0x0

    .line 89
    .line 90
    iput-wide v0, p0, Lce/t0;->g:J

    .line 91
    .line 92
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 93
    .line 94
    .line 95
    move-result-wide v0

    .line 96
    sget-wide v2, Lce/t0;->y:J

    .line 97
    .line 98
    add-long/2addr v0, v2

    .line 99
    iput-wide v0, p0, Lce/t0;->h:J

    .line 100
    .line 101
    iget-wide v0, p0, Lce/t0;->g:J

    .line 102
    .line 103
    return-wide v0
.end method

.method public final x()[Lce/t0;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Lce/t0;->s()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x2

    .line 23
    if-ne v1, v2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v1, p0, Lce/t0;->b:Ljava/lang/String;

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lce/t0;->l(Ljava/util/ArrayList;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    goto :goto_2

    .line 36
    :catch_1
    move-exception v0

    .line 37
    goto :goto_3

    .line 38
    :cond_1
    invoke-virtual {p0, v0}, Lce/t0;->i(Ljava/util/ArrayList;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lce/t0;->k(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    new-array v1, v1, [Lce/t0;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, [Lce/t0;

    .line 56
    .line 57
    return-object v0

    .line 58
    :goto_2
    new-instance v1, Lce/r0;

    .line 59
    .line 60
    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-direct {v1, v2, v0}, Lce/r0;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 67
    .line 68
    .line 69
    throw v1

    .line 70
    :goto_3
    new-instance v1, Lce/r0;

    .line 71
    .line 72
    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-direct {v1, v2, v0}, Lce/r0;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 79
    .line 80
    .line 81
    throw v1
.end method

.method public final y()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lce/t0;->t()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v1, v2, :cond_1

    .line 11
    .line 12
    sget v1, Lde/d;->b:I

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    if-lt v1, v2, :cond_0

    .line 16
    .line 17
    sget-object v1, Lce/t0;->x:Lde/d;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    :cond_0
    new-instance v1, Lce/t;

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-direct {v1, v0, v2}, Lce/t;-><init>(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lce/t0;->a()Lce/t;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p0, v1, v0}, Lce/t0;->F(Lce/q;Lce/q;)V

    .line 33
    .line 34
    .line 35
    const-wide/16 v0, 0x0

    .line 36
    .line 37
    iput-wide v0, p0, Lce/t0;->h:J

    .line 38
    .line 39
    iput-wide v0, p0, Lce/t0;->f:J

    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    new-instance v0, Lce/r0;

    .line 43
    .line 44
    const-string v1, "Invalid operation for workgroups, servers, or shares"

    .line 45
    .line 46
    invoke-direct {v0, v1}, Lce/r0;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0
.end method

.method public final z(IIII)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lce/t0;->v()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lce/t0;->A(IIII)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lce/t0;->q:I

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lce/t0;->s:Z

    .line 16
    .line 17
    iget-object p1, p0, Lce/t0;->n:Lce/c1;

    .line 18
    .line 19
    iget p1, p1, Lce/c1;->i:I

    .line 20
    .line 21
    iput p1, p0, Lce/t0;->t:I

    .line 22
    .line 23
    return-void
.end method
