.class public final Lo2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/o;


# instance fields
.field public final synthetic a:I

.field public final b:Lu1/q;

.field public final c:Ll2/e0;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    iput p1, p0, Lo2/a;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lu1/q;

    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    invoke-direct {p1, v0}, Lu1/q;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lo2/a;->b:Lu1/q;

    .line 16
    .line 17
    new-instance p1, Ll2/e0;

    .line 18
    .line 19
    const/4 v0, -0x1

    .line 20
    const-string v1, "image/avif"

    .line 21
    .line 22
    invoke-direct {p1, v0, v0, v1}, Ll2/e0;-><init>(IILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lo2/a;->c:Ll2/e0;

    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance p1, Lu1/q;

    .line 32
    .line 33
    const/4 v0, 0x4

    .line 34
    invoke-direct {p1, v0}, Lu1/q;-><init>(I)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lo2/a;->b:Lu1/q;

    .line 38
    .line 39
    new-instance p1, Ll2/e0;

    .line 40
    .line 41
    const/4 v0, -0x1

    .line 42
    const-string v1, "image/webp"

    .line 43
    .line 44
    invoke-direct {p1, v0, v0, v1}, Ll2/e0;-><init>(IILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lo2/a;->c:Ll2/e0;

    .line 48
    .line 49
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private final h()V
    .locals 0

    .line 1
    return-void
.end method

.method private final i()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget v0, p0, Lo2/a;->a:I

    return-void
.end method

.method public final b()Ll2/o;
    .locals 1

    .line 1
    iget v0, p0, Lo2/a;->a:I

    return-object p0
.end method

.method public final c(Ll2/q;)V
    .locals 1

    .line 1
    iget v0, p0, Lo2/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo2/a;->c:Ll2/e0;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ll2/e0;->c(Ll2/q;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object v0, p0, Lo2/a;->c:Ll2/e0;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ll2/e0;->c(Ll2/q;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Ll2/p;Ldd/c;)I
    .locals 1

    .line 1
    iget v0, p0, Lo2/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo2/a;->c:Ll2/e0;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Ll2/e0;->d(Ll2/p;Ldd/c;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    :pswitch_0
    iget-object v0, p0, Lo2/a;->c:Ll2/e0;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Ll2/e0;->d(Ll2/p;Ldd/c;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(JJ)V
    .locals 1

    .line 1
    iget v0, p0, Lo2/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo2/a;->c:Ll2/e0;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3, p4}, Ll2/e0;->e(JJ)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object v0, p0, Lo2/a;->c:Ll2/e0;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2, p3, p4}, Ll2/e0;->e(JJ)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f()Ljava/util/List;
    .locals 1

    .line 1
    iget v0, p0, Lo2/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object v0, Lu7/g0;->b:Lu7/e0;

    .line 7
    .line 8
    sget-object v0, Lu7/y0;->e:Lu7/y0;

    .line 9
    .line 10
    return-object v0

    .line 11
    :pswitch_0
    sget-object v0, Lu7/g0;->b:Lu7/e0;

    .line 12
    .line 13
    sget-object v0, Lu7/y0;->e:Lu7/y0;

    .line 14
    .line 15
    return-object v0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Ll2/p;)Z
    .locals 8

    .line 1
    iget v0, p0, Lo2/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo2/a;->b:Lu1/q;

    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    invoke-virtual {v0, v1}, Lu1/q;->L(I)V

    .line 10
    .line 11
    .line 12
    iget-object v2, v0, Lu1/q;->a:[B

    .line 13
    .line 14
    check-cast p1, Ll2/l;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {p1, v2, v3, v1, v3}, Ll2/l;->c([BIIZ)Z

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lu1/q;->D()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    const-wide/32 v6, 0x52494646

    .line 25
    .line 26
    .line 27
    cmp-long v2, v4, v6

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p1, v1, v3}, Ll2/l;->k(IZ)Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lu1/q;->L(I)V

    .line 36
    .line 37
    .line 38
    iget-object v2, v0, Lu1/q;->a:[B

    .line 39
    .line 40
    invoke-virtual {p1, v2, v3, v1, v3}, Ll2/l;->c([BIIZ)Z

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lu1/q;->D()J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    const-wide/32 v4, 0x57454250

    .line 48
    .line 49
    .line 50
    cmp-long p1, v0, v4

    .line 51
    .line 52
    if-nez p1, :cond_1

    .line 53
    .line 54
    const/4 v3, 0x1

    .line 55
    :cond_1
    :goto_0
    return v3

    .line 56
    :pswitch_0
    check-cast p1, Ll2/l;

    .line 57
    .line 58
    const/4 v0, 0x4

    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-virtual {p1, v0, v1}, Ll2/l;->k(IZ)Z

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lo2/a;->b:Lu1/q;

    .line 64
    .line 65
    invoke-virtual {v2, v0}, Lu1/q;->L(I)V

    .line 66
    .line 67
    .line 68
    iget-object v3, v2, Lu1/q;->a:[B

    .line 69
    .line 70
    invoke-virtual {p1, v3, v1, v0, v1}, Ll2/l;->c([BIIZ)Z

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Lu1/q;->D()J

    .line 74
    .line 75
    .line 76
    move-result-wide v3

    .line 77
    const v5, 0x66747970

    .line 78
    .line 79
    .line 80
    int-to-long v5, v5

    .line 81
    cmp-long v7, v3, v5

    .line 82
    .line 83
    if-nez v7, :cond_2

    .line 84
    .line 85
    invoke-virtual {v2, v0}, Lu1/q;->L(I)V

    .line 86
    .line 87
    .line 88
    iget-object v3, v2, Lu1/q;->a:[B

    .line 89
    .line 90
    invoke-virtual {p1, v3, v1, v0, v1}, Ll2/l;->c([BIIZ)Z

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Lu1/q;->D()J

    .line 94
    .line 95
    .line 96
    move-result-wide v2

    .line 97
    const p1, 0x61766966

    .line 98
    .line 99
    .line 100
    int-to-long v4, p1

    .line 101
    cmp-long p1, v2, v4

    .line 102
    .line 103
    if-nez p1, :cond_2

    .line 104
    .line 105
    const/4 v1, 0x1

    .line 106
    :cond_2
    return v1

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
