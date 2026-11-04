.class public final Leb/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwh/l;


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Leb/j;->a:I

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Leb/j;->b:I

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p1, p0, Leb/j;->a:I

    iput p2, p0, Leb/j;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILwb/i;Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Leb/j;->a:I

    .line 5
    iput p2, p0, Leb/j;->b:I

    return-void
.end method

.method public constructor <init>(ILsh/b;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, "dayOfWeek"

    invoke-static {p2, v0}, Lif/a;->t0(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput p1, p0, Leb/j;->a:I

    .line 9
    invoke-virtual {p2}, Lsh/b;->m()I

    move-result p1

    iput p1, p0, Leb/j;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    iget v1, p0, Leb/j;->b:I

    .line 3
    .line 4
    if-eq v1, v0, :cond_5

    .line 5
    .line 6
    const/4 v0, 0x5

    .line 7
    if-eq v1, v0, :cond_4

    .line 8
    .line 9
    const/16 v0, 0x1d

    .line 10
    .line 11
    if-eq v1, v0, :cond_3

    .line 12
    .line 13
    const/16 v0, 0x2a

    .line 14
    .line 15
    if-eq v1, v0, :cond_2

    .line 16
    .line 17
    const/16 v0, 0x16

    .line 18
    .line 19
    if-eq v1, v0, :cond_1

    .line 20
    .line 21
    const/16 v0, 0x17

    .line 22
    .line 23
    if-eq v1, v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    return v0

    .line 27
    :cond_0
    const/16 v0, 0xf

    .line 28
    .line 29
    return v0

    .line 30
    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    .line 31
    .line 32
    return v0

    .line 33
    :cond_2
    const/16 v0, 0x10

    .line 34
    .line 35
    return v0

    .line 36
    :cond_3
    const/16 v0, 0xc

    .line 37
    .line 38
    return v0

    .line 39
    :cond_4
    const/16 v0, 0xb

    .line 40
    .line 41
    return v0

    .line 42
    :cond_5
    const/16 v0, 0xa

    .line 43
    .line 44
    return v0
.end method

.method public g(Lwh/j;)Lwh/j;
    .locals 4

    .line 1
    sget-object v0, Lwh/a;->r:Lwh/a;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lwh/k;->i(Lwh/m;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    iget v2, p0, Leb/j;->b:I

    .line 9
    .line 10
    iget v3, p0, Leb/j;->a:I

    .line 11
    .line 12
    if-ge v3, v1, :cond_0

    .line 13
    .line 14
    if-ne v0, v2, :cond_0

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    and-int/lit8 v1, v3, 0x1

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    sub-int/2addr v0, v2

    .line 22
    if-ltz v0, :cond_1

    .line 23
    .line 24
    rsub-int/lit8 v0, v0, 0x7

    .line 25
    .line 26
    :goto_0
    int-to-long v0, v0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    neg-int v0, v0

    .line 29
    goto :goto_0

    .line 30
    :goto_1
    sget-object v2, Lwh/b;->c:Lwh/b;

    .line 31
    .line 32
    invoke-interface {p1, v0, v1, v2}, Lwh/j;->j(JLwh/b;)Lwh/j;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :cond_2
    sub-int/2addr v2, v0

    .line 38
    if-ltz v2, :cond_3

    .line 39
    .line 40
    rsub-int/lit8 v0, v2, 0x7

    .line 41
    .line 42
    :goto_2
    int-to-long v0, v0

    .line 43
    goto :goto_3

    .line 44
    :cond_3
    neg-int v0, v2

    .line 45
    goto :goto_2

    .line 46
    :goto_3
    sget-object v2, Lwh/b;->c:Lwh/b;

    .line 47
    .line 48
    invoke-interface {p1, v0, v1, v2}, Lwh/j;->l(JLwh/b;)Lwh/j;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1
.end method
