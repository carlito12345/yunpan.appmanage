.class public final Lai/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyh/n;
.implements Lyh/m;


# instance fields
.field public a:I

.field public b:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lai/a;->a:I

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lai/a;->b:J

    return-void

    .line 5
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 6
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string p1, "#00C8FF"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    const-wide/16 v0, 0x78

    .line 8
    iput-wide v0, p0, Lai/a;->b:J

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(IJ)V
    .locals 0

    .line 1
    iput p1, p0, Lai/a;->a:I

    iput-wide p2, p0, Lai/a;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lai/a;->b:J

    .line 11
    iput p3, p0, Lai/a;->a:I

    return-void
.end method

.method public static a(Ll2/l;Lu1/q;)Lai/a;
    .locals 3

    .line 1
    iget-object v0, p1, Lu1/q;->a:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1, v2, v1}, Ll2/l;->c([BIIZ)Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v1}, Lu1/q;->O(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lu1/q;->o()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    invoke-virtual {p1}, Lu1/q;->s()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    new-instance p1, Lai/a;

    .line 21
    .line 22
    invoke-direct {p1, p0, v0, v1}, Lai/a;-><init>(IJ)V

    .line 23
    .line 24
    .line 25
    return-object p1
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public c(Ljava/io/InputStream;Lyh/b;)Ljava/io/InputStream;
    .locals 6

    .line 1
    const-wide/16 v0, 0x4

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    iget v2, p0, Lai/a;->a:I

    .line 5
    .line 6
    iget-wide v3, p0, Lai/a;->b:J

    .line 7
    .line 8
    cmp-long v5, v3, v0

    .line 9
    .line 10
    if-nez v5, :cond_0

    .line 11
    .line 12
    new-instance v0, Lgi/c;

    .line 13
    .line 14
    invoke-direct {v0, v2, p2}, Lgi/c;-><init>(IZ)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-wide/16 v0, 0x5

    .line 19
    .line 20
    cmp-long v5, v3, v0

    .line 21
    .line 22
    if-nez v5, :cond_1

    .line 23
    .line 24
    new-instance v0, Lgi/a;

    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-direct {v0, v2, v1, p2, v3}, Lgi/a;-><init>(IIZZ)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-wide/16 v0, 0x6

    .line 33
    .line 34
    cmp-long v5, v3, v0

    .line 35
    .line 36
    if-nez v5, :cond_2

    .line 37
    .line 38
    new-instance v0, Lgi/a;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-direct {v0, v2, v1, p2, v3}, Lgi/a;-><init>(IIZZ)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const-wide/16 v0, 0x7

    .line 47
    .line 48
    cmp-long v5, v3, v0

    .line 49
    .line 50
    if-nez v5, :cond_3

    .line 51
    .line 52
    new-instance v0, Lgi/a;

    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    invoke-direct {v0, v2, v1, p2}, Lgi/a;-><init>(IIZ)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const-wide/16 v0, 0x8

    .line 60
    .line 61
    cmp-long v5, v3, v0

    .line 62
    .line 63
    if-nez v5, :cond_4

    .line 64
    .line 65
    new-instance v0, Lgi/a;

    .line 66
    .line 67
    const/4 v1, 0x2

    .line 68
    invoke-direct {v0, v2, v1, p2}, Lgi/a;-><init>(IIZ)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    const-wide/16 v0, 0x9

    .line 73
    .line 74
    cmp-long v5, v3, v0

    .line 75
    .line 76
    if-nez v5, :cond_5

    .line 77
    .line 78
    new-instance v0, Lgi/a;

    .line 79
    .line 80
    const/4 v1, 0x4

    .line 81
    const/4 v3, 0x0

    .line 82
    invoke-direct {v0, v2, v1, p2, v3}, Lgi/a;-><init>(IIZZ)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    const-wide/16 v0, 0xa

    .line 87
    .line 88
    cmp-long p2, v3, v0

    .line 89
    .line 90
    if-nez p2, :cond_6

    .line 91
    .line 92
    new-instance v0, Landroidx/leanback/widget/i;

    .line 93
    .line 94
    const/4 p2, 0x2

    .line 95
    invoke-direct {v0, v2, p2}, Landroidx/leanback/widget/i;-><init>(II)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_6
    const-wide/16 v0, 0xb

    .line 100
    .line 101
    cmp-long p2, v3, v0

    .line 102
    .line 103
    if-nez p2, :cond_7

    .line 104
    .line 105
    new-instance v0, Landroidx/leanback/widget/i;

    .line 106
    .line 107
    const/4 p2, 0x3

    .line 108
    invoke-direct {v0, v2, p2}, Landroidx/leanback/widget/i;-><init>(II)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_7
    const/4 v0, 0x0

    .line 113
    :goto_0
    new-instance p2, Lyh/y;

    .line 114
    .line 115
    invoke-direct {p2, p1, v0}, Lyh/y;-><init>(Ljava/io/InputStream;Lgi/b;)V

    .line 116
    .line 117
    .line 118
    return-object p2
.end method

.method public e()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    sget v0, Lyh/y;->j:I

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
