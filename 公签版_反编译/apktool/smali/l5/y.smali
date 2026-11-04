.class public Ll5/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf5/c;
.implements Ll5/r;
.implements Lnb/c;
.implements Lo5/l;
.implements Landroidx/lifecycle/u0;
.implements Lrh/u;
.implements Lt7/m;
.implements Ltf/c;
.implements Ly0/a0;
.implements Lha/wd;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(BI)V
    .locals 0

    iput p2, p0, Ll5/y;->a:I

    sparse-switch p2, :sswitch_data_0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance p1, Lh5/m;

    const/16 p2, 0x1d

    invoke-direct {p1, p2}, Lh5/m;-><init>(I)V

    iput-object p1, p0, Ll5/y;->b:Ljava/lang/Object;

    return-void

    .line 30
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 31
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Ll5/y;->b:Ljava/lang/Object;

    return-void

    .line 33
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance p1, Lh5/d0;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lh5/d0;-><init>(I)V

    iput-object p1, p0, Ll5/y;->b:Ljava/lang/Object;

    return-void

    .line 35
    :sswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Ll5/y;->b:Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0xe -> :sswitch_2
        0x10 -> :sswitch_1
        0x16 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Ll5/y;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-array p1, p1, [Lkf/b;

    iput-object p1, p0, Ll5/y;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ll5/y;->a:I

    iput-object p2, p0, Ll5/y;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V
    .locals 2

    const/16 v0, 0x12

    iput v0, p0, Ll5/y;->a:I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ll5/y;->b:Ljava/lang/Object;

    .line 16
    new-instance v0, Ldb/m;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Ldb/m;-><init>(ILjava/lang/Object;)V

    const-class v1, Ldb/x;

    invoke-virtual {p1, v1, v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->l0(Ljava/lang/Class;Ldb/q;)V

    return-void
.end method

.method public constructor <init>(Lnb/b;)V
    .locals 13

    const/4 v0, 0x5

    iput v0, p0, Ll5/y;->a:I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iget-object v0, p1, Lnb/b;->a:[J

    .line 19
    array-length v0, v0

    .line 20
    new-array v1, v0, [Lai/a;

    iput-object v1, p0, Ll5/y;->b:Ljava/lang/Object;

    .line 21
    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 22
    iget-object v4, p1, Lnb/b;->a:[J

    aget-wide v5, v4, v3

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    long-to-int v4, v5

    int-to-byte v4, v4

    .line 23
    aput-byte v4, v1, v3

    .line 24
    iget-object v4, p0, Ll5/y;->b:Ljava/lang/Object;

    check-cast v4, [Lai/a;

    new-instance v5, Lai/a;

    invoke-virtual {p1, v3}, Lnb/b;->j(I)I

    move-result v6

    invoke-virtual {p1, v3}, Lnb/b;->o(I)I

    move-result v9

    invoke-static {v6, v9}, Lsb/h;->g(II)J

    move-result-wide v9

    .line 25
    iget-object v6, p1, Lnb/b;->a:[J

    aget-wide v11, v6, v3

    and-long/2addr v7, v11

    long-to-int v6, v7

    .line 26
    invoke-direct {v5, v9, v10, v6}, Lai/a;-><init>(JI)V

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Ll5/y;->b:Ljava/lang/Object;

    check-cast p1, [Lai/a;

    invoke-static {v1, v2, p1, v2, v0}, Ljava/text/Bidi;->reorderVisually([BI[Ljava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Lu7/q;)V
    .locals 1

    const/16 v0, 0x16

    iput v0, p0, Ll5/y;->a:I

    .line 39
    iput-object p1, p0, Ll5/y;->b:Ljava/lang/Object;

    const/16 p1, 0x16

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0, p1}, Ll5/y;-><init>(BI)V

    return-void
.end method

.method public constructor <init>([CJJ[BZ)V
    .locals 7

    const/16 v0, 0x13

    iput v0, p0, Ll5/y;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lvf/b;

    invoke-direct {v0}, Lvf/b;-><init>()V

    iput-object v0, p0, Ll5/y;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 6
    const-string v2, "Wrong password!"

    if-eqz p1, :cond_4

    array-length v3, p1

    if-lez v3, :cond_4

    .line 7
    invoke-virtual {v0, p1, p7}, Lvf/b;->b([CZ)V

    .line 8
    aget-byte p1, p6, v1

    const/4 p7, 0x0

    :cond_0
    :goto_0
    const/16 v3, 0xc

    if-ge p7, v3, :cond_3

    add-int/lit8 p7, p7, 0x1

    if-ne p7, v3, :cond_2

    .line 9
    invoke-virtual {v0}, Lvf/b;->a()B

    move-result v4

    xor-int/2addr v4, p1

    int-to-byte v4, v4

    const/16 v5, 0x18

    shr-long v5, p2, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    if-eq v4, v5, :cond_2

    const/16 v5, 0x8

    shr-long v5, p4, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    if-ne v4, v5, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    new-instance p1, Lwf/a;

    invoke-direct {p1, v2, v1}, Lwf/a;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 11
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lvf/b;->a()B

    move-result v4

    xor-int/2addr v4, p1

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Lvf/b;->c(B)V

    if-eq p7, v3, :cond_0

    .line 12
    aget-byte p1, p6, p7

    goto :goto_0

    :cond_3
    return-void

    .line 13
    :cond_4
    new-instance p1, Lwf/a;

    invoke-direct {p1, v2, v1}, Lwf/a;-><init>(Ljava/lang/String;I)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public constructor <init>([Lp1/d;)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Ll5/y;->a:I

    const-string v0, "initializers"

    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Ll5/y;->b:Ljava/lang/Object;

    return-void
.end method

.method public static G(Landroid/graphics/Typeface;)J
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-wide v0

    .line 6
    :cond_0
    :try_start_0
    const-class v2, Landroid/graphics/Typeface;

    .line 7
    .line 8
    const-string v3, "native_instance"

    .line 9
    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Ljava/lang/Number;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :catch_0
    return-wide v0
.end method

.method private final H(I)V
    .locals 0

    .line 1
    return-void
.end method

.method private final I()V
    .locals 0

    .line 1
    return-void
.end method

.method private final J()V
    .locals 0

    .line 1
    return-void
.end method

.method private final K()V
    .locals 0

    .line 1
    return-void
.end method

.method private final M(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public static y([Ljava/lang/Object;ILp0/m;)Ljava/lang/Object;
    .locals 10

    .line 1
    and-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x190

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x2bc

    .line 9
    .line 10
    :goto_0
    and-int/lit8 p1, p1, 0x2

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    const/4 p1, 0x0

    .line 19
    :goto_1
    array-length v3, p0

    .line 20
    const/4 v4, 0x0

    .line 21
    const v5, 0x7fffffff

    .line 22
    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    :goto_2
    if-ge v6, v3, :cond_5

    .line 26
    .line 27
    aget-object v7, p0, v6

    .line 28
    .line 29
    invoke-interface {p2, v7}, Lp0/m;->u(Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    sub-int/2addr v8, v0

    .line 34
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    mul-int/lit8 v8, v8, 0x2

    .line 39
    .line 40
    invoke-interface {p2, v7}, Lp0/m;->v(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v9

    .line 44
    if-ne v9, p1, :cond_2

    .line 45
    .line 46
    const/4 v9, 0x0

    .line 47
    goto :goto_3

    .line 48
    :cond_2
    const/4 v9, 0x1

    .line 49
    :goto_3
    add-int/2addr v8, v9

    .line 50
    if-eqz v4, :cond_3

    .line 51
    .line 52
    if-le v5, v8, :cond_4

    .line 53
    .line 54
    :cond_3
    move-object v4, v7

    .line 55
    move v5, v8

    .line 56
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_5
    return-object v4
.end method


# virtual methods
.method public A(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ll5/y;->F(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    :goto_0
    return p1
.end method

.method public B(Landroidx/room/s;)Ljava/util/List;
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Lu1/q;

    .line 3
    .line 4
    iget-object p1, p1, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p1, [B

    .line 7
    .line 8
    invoke-direct {v1, p1}, Lu1/q;-><init>([B)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Ll5/y;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lu7/g0;

    .line 14
    .line 15
    :goto_0
    invoke-virtual {v1}, Lu1/q;->a()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-lez v2, :cond_6

    .line 20
    .line 21
    invoke-virtual {v1}, Lu1/q;->B()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v1}, Lu1/q;->B()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    iget v4, v1, Lu1/q;->b:I

    .line 30
    .line 31
    add-int/2addr v4, v3

    .line 32
    const/16 v3, 0x86

    .line 33
    .line 34
    if-ne v2, v3, :cond_5

    .line 35
    .line 36
    new-instance p1, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lu1/q;->B()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    and-int/lit8 v2, v2, 0x1f

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    const/4 v5, 0x0

    .line 49
    :goto_1
    if-ge v5, v2, :cond_5

    .line 50
    .line 51
    sget-object v6, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 52
    .line 53
    const/4 v7, 0x3

    .line 54
    invoke-virtual {v1, v6, v7}, Lu1/q;->z(Ljava/nio/charset/Charset;I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-virtual {v1}, Lu1/q;->B()I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    and-int/lit16 v8, v7, 0x80

    .line 63
    .line 64
    if-eqz v8, :cond_0

    .line 65
    .line 66
    const/4 v8, 0x1

    .line 67
    goto :goto_2

    .line 68
    :cond_0
    const/4 v8, 0x0

    .line 69
    :goto_2
    if-eqz v8, :cond_1

    .line 70
    .line 71
    and-int/lit8 v7, v7, 0x3f

    .line 72
    .line 73
    const-string v9, "application/cea-708"

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_1
    const-string v9, "application/cea-608"

    .line 77
    .line 78
    const/4 v7, 0x1

    .line 79
    :goto_3
    invoke-virtual {v1}, Lu1/q;->B()I

    .line 80
    .line 81
    .line 82
    move-result v10

    .line 83
    int-to-byte v10, v10

    .line 84
    invoke-virtual {v1, v0}, Lu1/q;->P(I)V

    .line 85
    .line 86
    .line 87
    if-eqz v8, :cond_4

    .line 88
    .line 89
    and-int/lit8 v8, v10, 0x40

    .line 90
    .line 91
    if-eqz v8, :cond_2

    .line 92
    .line 93
    const/4 v8, 0x1

    .line 94
    goto :goto_4

    .line 95
    :cond_2
    const/4 v8, 0x0

    .line 96
    :goto_4
    sget-object v10, Lu1/c;->a:[B

    .line 97
    .line 98
    if-eqz v8, :cond_3

    .line 99
    .line 100
    new-array v8, v0, [B

    .line 101
    .line 102
    aput-byte v0, v8, v3

    .line 103
    .line 104
    goto :goto_5

    .line 105
    :cond_3
    new-array v8, v0, [B

    .line 106
    .line 107
    aput-byte v3, v8, v3

    .line 108
    .line 109
    :goto_5
    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    goto :goto_6

    .line 114
    :cond_4
    const/4 v8, 0x0

    .line 115
    :goto_6
    new-instance v10, Lr1/o;

    .line 116
    .line 117
    invoke-direct {v10}, Lr1/o;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-static {v9}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    iput-object v9, v10, Lr1/o;->n:Ljava/lang/String;

    .line 125
    .line 126
    iput-object v6, v10, Lr1/o;->d:Ljava/lang/String;

    .line 127
    .line 128
    iput v7, v10, Lr1/o;->K:I

    .line 129
    .line 130
    iput-object v8, v10, Lr1/o;->q:Ljava/util/List;

    .line 131
    .line 132
    new-instance v6, Lr1/p;

    .line 133
    .line 134
    invoke-direct {v6, v10}, Lr1/p;-><init>(Lr1/o;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    add-int/2addr v5, v0

    .line 141
    goto :goto_1

    .line 142
    :cond_5
    invoke-virtual {v1, v4}, Lu1/q;->O(I)V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_0

    .line 146
    .line 147
    :cond_6
    return-object p1
.end method

.method public C(Lx4/a;)I
    .locals 4

    .line 1
    iget-object v0, p0, Ll5/y;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lu4/f;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    instance-of v1, p1, Lx4/t;

    .line 9
    .line 10
    const-string v2, "not found"

    .line 11
    .line 12
    const-string v3, "cst == null"

    .line 13
    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    iget-object v0, v0, Lu4/f;->e:Lu4/z;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lu4/a0;->f()V

    .line 21
    .line 22
    .line 23
    iget-object v0, v0, Lu4/z;->g:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Ljava/util/TreeMap;

    .line 26
    .line 27
    check-cast p1, Lx4/t;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lu4/o;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    new-instance p1, Ljava/lang/NullPointerException;

    .line 49
    .line 50
    invoke-direct {p1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    instance-of v1, p1, Lx4/u;

    .line 55
    .line 56
    if-eqz v1, :cond_5

    .line 57
    .line 58
    iget-object v0, v0, Lu4/f;->f:Lu4/z;

    .line 59
    .line 60
    if-eqz p1, :cond_4

    .line 61
    .line 62
    invoke-virtual {v0}, Lu4/a0;->f()V

    .line 63
    .line 64
    .line 65
    move-object v1, p1

    .line 66
    check-cast v1, Lx4/u;

    .line 67
    .line 68
    iget-object v0, v0, Lu4/z;->g:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, Ljava/util/TreeMap;

    .line 71
    .line 72
    iget-object v1, v1, Lx4/u;->a:Ly4/c;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lu4/o;

    .line 79
    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    move-object p1, v0

    .line 83
    goto :goto_0

    .line 84
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 85
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v2, "not found: "

    .line 89
    .line 90
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v0

    .line 104
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    new-instance p1, Ljava/lang/NullPointerException;

    .line 108
    .line 109
    invoke-direct {p1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p1

    .line 113
    :cond_5
    instance-of v1, p1, Lx4/q;

    .line 114
    .line 115
    if-eqz v1, :cond_8

    .line 116
    .line 117
    iget-object v0, v0, Lu4/f;->i:Lu4/v;

    .line 118
    .line 119
    if-eqz p1, :cond_7

    .line 120
    .line 121
    invoke-virtual {v0}, Lu4/a0;->f()V

    .line 122
    .line 123
    .line 124
    iget-object v0, v0, Lu4/v;->f:Ljava/util/TreeMap;

    .line 125
    .line 126
    check-cast p1, Lx4/q;

    .line 127
    .line 128
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Lu4/o;

    .line 133
    .line 134
    if-eqz p1, :cond_6

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 138
    .line 139
    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p1

    .line 143
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    new-instance p1, Ljava/lang/NullPointerException;

    .line 147
    .line 148
    invoke-direct {p1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p1

    .line 152
    :cond_8
    instance-of v1, p1, Lx4/h;

    .line 153
    .line 154
    if-eqz v1, :cond_b

    .line 155
    .line 156
    iget-object v0, v0, Lu4/f;->h:Lu4/l;

    .line 157
    .line 158
    if-eqz p1, :cond_a

    .line 159
    .line 160
    invoke-virtual {v0}, Lu4/a0;->f()V

    .line 161
    .line 162
    .line 163
    iget-object v0, v0, Lu4/l;->f:Ljava/util/TreeMap;

    .line 164
    .line 165
    check-cast p1, Lx4/h;

    .line 166
    .line 167
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    check-cast p1, Lu4/o;

    .line 172
    .line 173
    if-eqz p1, :cond_9

    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 177
    .line 178
    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw p1

    .line 182
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    new-instance p1, Ljava/lang/NullPointerException;

    .line 186
    .line 187
    invoke-direct {p1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p1

    .line 191
    :cond_b
    const/4 p1, 0x0

    .line 192
    :goto_0
    if-nez p1, :cond_c

    .line 193
    .line 194
    const/4 p1, -0x1

    .line 195
    return p1

    .line 196
    :cond_c
    invoke-virtual {p1}, Lu4/o;->e()I

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    return p1
.end method

.method public D()V
    .locals 3

    .line 1
    iget v0, p0, Ll5/y;->a:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    sget v0, Lcom/yunpan/appmanage/ui/ActivityDesktop;->G:I

    .line 7
    .line 8
    iget-object v0, p0, Ll5/y;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityDesktop;

    .line 11
    .line 12
    iget-object v0, v0, Lda/g;->A:Lda/g;

    .line 13
    .line 14
    invoke-static {v0}, Lqf/c;->Z(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :sswitch_0
    iget-object v0, p0, Ll5/y;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lua/e1;

    .line 21
    .line 22
    iget-object v0, v0, Lua/e1;->c:Lcom/yunpan/appmanage/ui/ActivityCodeEditor;

    .line 23
    .line 24
    sget v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->c1:I

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->x(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :sswitch_1
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-static {}, La2/w0;->O()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 43
    .line 44
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->g0:Ljava/util/concurrent/ExecutorService;

    .line 47
    .line 48
    new-instance v1, Lha/db;

    .line 49
    .line 50
    const/16 v2, 0x19

    .line 51
    .line 52
    invoke-direct {v1, v2, p0}, Lha/db;-><init>(ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const-string v0, "\u6ca1\u8fde\u63a5adb\uff0c\u65e0\u6cd5\u5f3a\u5236\u505c\u6b62"

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-void

    .line 66
    :sswitch_2
    iget-object v0, p0, Ll5/y;->b:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v0, Lha/h3;

    .line 69
    .line 70
    iget-object v1, v0, Lha/h3;->d:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v1, Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 73
    .line 74
    iget-object v0, v0, Lha/h3;->c:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v0, Ljava/lang/String;

    .line 77
    .line 78
    const/4 v2, 0x1

    .line 79
    invoke-static {v1, v0, v2}, Lcom/yunpan/appmanage/ui/ActivityAdb;->A(Lcom/yunpan/appmanage/ui/ActivityAdb;Ljava/lang/String;Z)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_2
        0x1a -> :sswitch_1
        0x1c -> :sswitch_0
    .end sparse-switch
.end method

.method public E(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ll5/y;->F(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    const-string v0, "0x"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/16 v0, 0x10

    .line 23
    .line 24
    invoke-static {p1, v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :cond_1
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method public F(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Ll5/y;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [Lkf/b;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    const/4 v3, 0x0

    .line 8
    if-ge v2, v1, :cond_1

    .line 9
    .line 10
    aget-object v4, v0, v2

    .line 11
    .line 12
    iget-object v5, v4, Lkf/b;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v5, Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object v4, v3

    .line 27
    :goto_1
    if-nez v4, :cond_2

    .line 28
    .line 29
    return-object v3

    .line 30
    :cond_2
    iget-object p1, v4, Lkf/b;->f:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p1, Ljava/lang/String;

    .line 33
    .line 34
    return-object p1
.end method

.method public L(I)V
    .locals 4

    .line 1
    iget v0, p0, Ll5/y;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Ll5/y;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->D:Lx9/x;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lx9/y;

    .line 18
    .line 19
    new-instance v1, Lma/b;

    .line 20
    .line 21
    const/4 v2, 0x7

    .line 22
    invoke-direct {v1, p0, v2, v0}, Lma/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    new-instance v2, Lmc/c;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-direct {v2, v3, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    new-instance v2, Lha/l4;

    .line 46
    .line 47
    const/4 v3, 0x2

    .line 48
    invoke-direct {v2, p0, p1, v0, v3}, Lha/l4;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Lec/b;->b(Lec/e;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
    .end packed-switch
.end method

.method public N()V
    .locals 4

    .line 1
    new-instance v0, Lha/db;

    .line 2
    .line 3
    const/16 v1, 0x16

    .line 4
    .line 5
    invoke-direct {v0, v1, p0}, Lha/db;-><init>(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ll5/y;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    if-ne v2, v3, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Lha/db;->run()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v1, v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->Z(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Ll5/y;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [Lai/a;

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    return v0
.end method

.method public b(Ljava/lang/Class;)Landroidx/lifecycle/r0;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Factory.create(String) is unsupported.  This Factory requires `CreationExtras` to be passed into `create` method."

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public c()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ll5/y;->h()S

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    shl-int/lit8 v0, v0, 0x8

    .line 6
    .line 7
    invoke-virtual {p0}, Ll5/y;->h()S

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    or-int/2addr v0, v1

    .line 12
    return v0
.end method

.method public d(Landroid/view/View;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Ll5/y;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->r(Landroid/view/View;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_4

    .line 11
    .line 12
    sget-object v1, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 13
    .line 14
    invoke-static {p1}, Lx0/k0;->d(Landroid/view/View;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v3, 0x1

    .line 19
    if-ne v1, v3, :cond_0

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    :cond_0
    iget v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->d:I

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    :cond_1
    if-ne v0, v3, :cond_3

    .line 29
    .line 30
    if-nez v2, :cond_3

    .line 31
    .line 32
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    neg-int v0, v0

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    :goto_0
    invoke-static {v0, p1}, Lx0/b1;->o(ILandroid/view/View;)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 47
    .line 48
    .line 49
    return v3

    .line 50
    :cond_4
    return v2
.end method

.method public e(Ljava/lang/Class;Lp1/c;)Landroidx/lifecycle/r0;
    .locals 5

    .line 1
    iget-object v0, p0, Ll5/y;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [Lp1/d;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    :goto_0
    if-ge v3, v1, :cond_1

    .line 9
    .line 10
    aget-object v4, v0, v3

    .line 11
    .line 12
    iget-object v4, v4, Lp1/d;->a:Ljava/lang/Class;

    .line 13
    .line 14
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    sget-object v2, Landroidx/lifecycle/k0;->a:Landroidx/lifecycle/k0;

    .line 21
    .line 22
    invoke-virtual {v2, p2}, Landroidx/lifecycle/k0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroidx/lifecycle/r0;

    .line 27
    .line 28
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    if-eqz v2, :cond_2

    .line 32
    .line 33
    return-object v2

    .line 34
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v0, "No initializer set for given class "

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :goto_1
    throw p2

    .line 51
    :goto_2
    goto :goto_1
.end method

.method public g(Ljava/lang/Object;Ljava/io/File;Lf5/i;)Z
    .locals 4

    .line 1
    check-cast p1, Ljava/io/InputStream;

    .line 2
    .line 3
    const/high16 p3, 0x10000

    .line 4
    .line 5
    const-class v0, [B

    .line 6
    .line 7
    iget-object v1, p0, Ll5/y;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, La2/k1;

    .line 10
    .line 11
    invoke-virtual {v1, v0, p3}, La2/k1;->e(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    check-cast p3, [B

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    .line 20
    .line 21
    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    .line 23
    .line 24
    :goto_0
    :try_start_1
    invoke-virtual {p1, p3}, Ljava/io/InputStream;->read([B)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    const/4 v2, -0x1

    .line 29
    if-eq p2, v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v3, p3, v0, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    move-object v2, v3

    .line 37
    goto :goto_1

    .line 38
    :catch_0
    nop

    .line 39
    move-object v2, v3

    .line 40
    goto :goto_2

    .line 41
    :cond_0
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 45
    .line 46
    .line 47
    :catch_1
    invoke-virtual {v1, p3}, La2/k1;->i(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    goto :goto_3

    .line 52
    :catchall_1
    move-exception p1

    .line 53
    goto :goto_1

    .line 54
    :catch_2
    nop

    .line 55
    goto :goto_2

    .line 56
    :goto_1
    if-eqz v2, :cond_1

    .line 57
    .line 58
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 59
    .line 60
    .line 61
    :catch_3
    :cond_1
    invoke-virtual {v1, p3}, La2/k1;->i(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :goto_2
    if-eqz v2, :cond_2

    .line 66
    .line 67
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 68
    .line 69
    .line 70
    :catch_4
    :cond_2
    invoke-virtual {v1, p3}, La2/k1;->i(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :goto_3
    return v0
.end method

.method public h()S
    .locals 2

    .line 1
    iget-object v0, p0, Ll5/y;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/io/InputStream;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    int-to-short v0, v0

    .line 13
    return v0

    .line 14
    :cond_0
    new-instance v0, Lo5/k;

    .line 15
    .line 16
    invoke-direct {v0}, Lo5/k;-><init>()V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public i(Lph/q;I)V
    .locals 1

    .line 1
    instance-of p2, p1, Lph/x;

    .line 2
    .line 3
    iget-object v0, p0, Ll5/y;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    check-cast p1, Lph/x;

    .line 10
    .line 11
    invoke-static {v0, p1}, Lph/l;->C(Ljava/lang/StringBuilder;Lph/x;)V

    .line 12
    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    instance-of p2, p1, Lph/l;

    .line 16
    .line 17
    if-eqz p2, :cond_2

    .line 18
    .line 19
    check-cast p1, Lph/l;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-lez p2, :cond_2

    .line 26
    .line 27
    iget-object p2, p1, Lph/l;->d:Lqh/f0;

    .line 28
    .line 29
    iget p2, p2, Lqh/f0;->d:I

    .line 30
    .line 31
    and-int/lit8 p2, p2, 0x4

    .line 32
    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-string p2, "br"

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lph/q;->l(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    :goto_0
    invoke-static {v0}, Lph/x;->D(Ljava/lang/StringBuilder;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    const/16 p1, 0x20

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_1
    return-void
.end method

.method public j(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Ll5/y;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [Lai/a;

    .line 4
    .line 5
    aget-object p1, v0, p1

    .line 6
    .line 7
    iget-wide v0, p1, Lai/a;->b:J

    .line 8
    .line 9
    const/16 p1, 0x20

    .line 10
    .line 11
    shr-long/2addr v0, p1

    .line 12
    long-to-int p1, v0

    .line 13
    return p1
.end method

.method public k(Landroidx/room/s;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 2

    .line 1
    new-instance v0, Lt7/l;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, p2, v1}, Lt7/l;-><init>(Lt7/m;Landroidx/room/s;Ljava/lang/CharSequence;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public l(Ll5/w;)Ll5/q;
    .locals 1

    .line 1
    new-instance p1, Lm5/a;

    .line 2
    .line 3
    iget-object v0, p0, Ll5/y;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lh5/m;

    .line 6
    .line 7
    invoke-direct {p1, v0}, Lm5/a;-><init>(Lh5/m;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public m(II[B)I
    .locals 4

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    if-ltz p2, :cond_1

    .line 4
    .line 5
    move v0, p1

    .line 6
    :goto_0
    add-int v1, p1, p2

    .line 7
    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    aget-byte v1, p3, v0

    .line 11
    .line 12
    and-int/lit16 v1, v1, 0xff

    .line 13
    .line 14
    iget-object v2, p0, Ll5/y;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Lvf/b;

    .line 17
    .line 18
    invoke-virtual {v2}, Lvf/b;->a()B

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    xor-int/2addr v1, v3

    .line 23
    and-int/lit16 v1, v1, 0xff

    .line 24
    .line 25
    int-to-byte v1, v1

    .line 26
    invoke-virtual {v2, v1}, Lvf/b;->c(B)V

    .line 27
    .line 28
    .line 29
    aput-byte v1, p3, v0

    .line 30
    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return p2

    .line 35
    :cond_1
    new-instance p1, Lwf/a;

    .line 36
    .line 37
    const-string p2, "one of the input parameters were null in standard decrypt data"

    .line 38
    .line 39
    invoke-direct {p1, p2}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :goto_1
    throw p1

    .line 44
    :goto_2
    goto :goto_1
.end method

.method public n(I[B)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    const/4 v2, -0x1

    .line 4
    if-ge v0, p1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Ll5/y;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ljava/io/InputStream;

    .line 9
    .line 10
    sub-int v3, p1, v0

    .line 11
    .line 12
    invoke-virtual {v1, p2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    add-int/2addr v0, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    if-nez v0, :cond_2

    .line 21
    .line 22
    if-eq v1, v2, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    new-instance p1, Lo5/k;

    .line 26
    .line 27
    invoke-direct {p1}, Lo5/k;-><init>()V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_2
    :goto_1
    return v0
.end method

.method public o(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Ll5/y;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [Lai/a;

    .line 4
    .line 5
    aget-object p1, v0, p1

    .line 6
    .line 7
    iget-wide v0, p1, Lai/a;->b:J

    .line 8
    .line 9
    const-wide v2, 0xffffffffL

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    and-long/2addr v0, v2

    .line 15
    long-to-int p1, v0

    .line 16
    return p1
.end method

.method public p(Lph/q;I)V
    .locals 0

    .line 1
    instance-of p2, p1, Lph/l;

    .line 2
    .line 3
    if-eqz p2, :cond_2

    .line 4
    .line 5
    move-object p2, p1

    .line 6
    check-cast p2, Lph/l;

    .line 7
    .line 8
    invoke-virtual {p1}, Lph/q;->n()Lph/q;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p2, p2, Lph/l;->d:Lqh/f0;

    .line 13
    .line 14
    iget p2, p2, Lqh/f0;->d:I

    .line 15
    .line 16
    and-int/lit8 p2, p2, 0x4

    .line 17
    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    instance-of p2, p1, Lph/x;

    .line 22
    .line 23
    if-nez p2, :cond_1

    .line 24
    .line 25
    instance-of p2, p1, Lph/l;

    .line 26
    .line 27
    if-eqz p2, :cond_2

    .line 28
    .line 29
    check-cast p1, Lph/l;

    .line 30
    .line 31
    iget-object p1, p1, Lph/l;->d:Lqh/f0;

    .line 32
    .line 33
    iget p1, p1, Lqh/f0;->d:I

    .line 34
    .line 35
    and-int/lit8 p1, p1, 0x4

    .line 36
    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    :cond_1
    iget-object p1, p0, Ll5/y;->b:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-static {p1}, Lph/x;->D(Ljava/lang/StringBuilder;)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-nez p2, :cond_2

    .line 48
    .line 49
    const/16 p2, 0x20

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_0
    return-void
.end method

.method public q(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ll5/y;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [Lai/a;

    .line 4
    .line 5
    aget-object p1, v0, p1

    .line 6
    .line 7
    iget p1, p1, Lai/a;->a:I

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    and-int/2addr p1, v0

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public r(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll5/y;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lh5/d0;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lh5/d0;->a(I)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public s()Lu7/u0;
    .locals 3

    .line 1
    iget-object v0, p0, Ll5/y;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lu7/q;

    .line 4
    .line 5
    invoke-virtual {v0}, Lu7/q;->d()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lu7/t0;

    .line 10
    .line 11
    invoke-direct {v1}, Lu7/t0;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lu7/u0;

    .line 15
    .line 16
    invoke-direct {v2, v0, v1}, Lu7/u0;-><init>(Ljava/util/Map;Lu7/t0;)V

    .line 17
    .line 18
    .line 19
    return-object v2
.end method

.method public skip(J)J
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-gez v2, :cond_0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    move-wide v2, p1

    .line 9
    :goto_0
    cmp-long v4, v2, v0

    .line 10
    .line 11
    if-lez v4, :cond_3

    .line 12
    .line 13
    iget-object v4, p0, Ll5/y;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v4, Ljava/io/InputStream;

    .line 16
    .line 17
    invoke-virtual {v4, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 18
    .line 19
    .line 20
    move-result-wide v5

    .line 21
    cmp-long v7, v5, v0

    .line 22
    .line 23
    if-lez v7, :cond_1

    .line 24
    .line 25
    sub-long/2addr v2, v5

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const/4 v5, -0x1

    .line 32
    if-ne v4, v5, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const-wide/16 v4, 0x1

    .line 36
    .line 37
    sub-long/2addr v2, v4

    .line 38
    goto :goto_0

    .line 39
    :cond_3
    :goto_1
    sub-long/2addr p1, v2

    .line 40
    return-wide p1
.end method

.method public t()V
    .locals 3

    .line 1
    iget v0, p0, Ll5/y;->a:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    :sswitch_0
    return-void

    .line 7
    :sswitch_1
    iget-object v0, p0, Ll5/y;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lha/h3;

    .line 10
    .line 11
    iget-object v1, v0, Lha/h3;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 14
    .line 15
    iget-object v0, v0, Lha/h3;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ljava/lang/String;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {v1, v0, v2}, Lcom/yunpan/appmanage/ui/ActivityAdb;->A(Lcom/yunpan/appmanage/ui/ActivityAdb;Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x1a -> :sswitch_0
        0x1c -> :sswitch_0
    .end sparse-switch
.end method

.method public u(Landroid/content/Context;Lo0/f;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 8

    .line 1
    new-instance v0, Lha/j2;

    .line 2
    .line 3
    const/16 v1, 0x1b

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lha/j2;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p2, Lo0/f;->a:[Lo0/g;

    .line 9
    .line 10
    invoke-static {v1, p4, v0}, Ll5/y;->y([Ljava/lang/Object;ILp0/m;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lo0/g;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    return-object p1

    .line 20
    :cond_0
    sget-object v1, Lp0/g;->a:Ll5/y;

    .line 21
    .line 22
    iget v6, v0, Lo0/g;->f:I

    .line 23
    .line 24
    iget-object v7, v0, Lo0/g;->a:Ljava/lang/String;

    .line 25
    .line 26
    move-object v0, v1

    .line 27
    move-object v1, p1

    .line 28
    move-object v2, p3

    .line 29
    move v3, v6

    .line 30
    move-object v4, v7

    .line 31
    move v5, p4

    .line 32
    invoke-virtual/range {v0 .. v5}, Ll5/y;->x(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-static {p3, v6, v7, v0, p4}, Lp0/g;->b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    sget-object p4, Lp0/g;->b:La0/m;

    .line 44
    .line 45
    invoke-virtual {p4, p3, p1}, La0/m;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-static {p1}, Ll5/y;->G(Landroid/graphics/Typeface;)J

    .line 49
    .line 50
    .line 51
    move-result-wide p3

    .line 52
    const-wide/16 v0, 0x0

    .line 53
    .line 54
    cmp-long v2, p3, v0

    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    iget-object v0, p0, Ll5/y;->b:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 61
    .line 62
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    invoke-virtual {v0, p3, p2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    :cond_2
    return-object p1
.end method

.method public v(Landroid/content/Context;[Lu0/g;I)Landroid/graphics/Typeface;
    .locals 3

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    return-object v2

    .line 7
    :cond_0
    invoke-virtual {p0, p2, p3}, Ll5/y;->z([Lu0/g;I)Lu0/g;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    iget-object p2, p2, Lu0/g;->a:Landroid/net/Uri;

    .line 16
    .line 17
    invoke-virtual {p3, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 18
    .line 19
    .line 20
    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ll5/y;->w(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;

    .line 22
    .line 23
    .line 24
    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    invoke-static {p2}, Lnh/b;->l(Ljava/io/Closeable;)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    move-object v2, p2

    .line 31
    goto :goto_0

    .line 32
    :catchall_1
    move-exception p1

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-object p2, v2

    .line 35
    goto :goto_1

    .line 36
    :goto_0
    invoke-static {v2}, Lnh/b;->l(Ljava/io/Closeable;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :catch_1
    :goto_1
    invoke-static {p2}, Lnh/b;->l(Ljava/io/Closeable;)V

    .line 41
    .line 42
    .line 43
    return-object v2
.end method

.method public w(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    .locals 1

    .line 1
    invoke-static {p1}, Lnh/b;->L(Landroid/content/Context;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lnh/b;->o(Ljava/io/File;Ljava/io/InputStream;)Z

    .line 10
    .line 11
    .line 12
    move-result p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    if-nez p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 24
    .line 25
    .line 26
    move-result-object p2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 28
    .line 29
    .line 30
    return-object p2

    .line 31
    :catchall_0
    move-exception p2

    .line 32
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 33
    .line 34
    .line 35
    throw p2

    .line 36
    :catch_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method public x(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    invoke-static {p1}, Lnh/b;->L(Landroid/content/Context;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p4, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object p4

    .line 9
    :cond_0
    :try_start_0
    invoke-static {p1, p2, p3}, Lnh/b;->n(Ljava/io/File;Landroid/content/res/Resources;I)Z

    .line 10
    .line 11
    .line 12
    move-result p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    if-nez p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 16
    .line 17
    .line 18
    return-object p4

    .line 19
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 24
    .line 25
    .line 26
    move-result-object p2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 28
    .line 29
    .line 30
    return-object p2

    .line 31
    :catchall_0
    move-exception p2

    .line 32
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 33
    .line 34
    .line 35
    throw p2

    .line 36
    :catch_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 37
    .line 38
    .line 39
    return-object p4
.end method

.method public z([Lu0/g;I)Lu0/g;
    .locals 2

    .line 1
    new-instance v0, Lha/l2;

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lha/l2;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p2, v0}, Ll5/y;->y([Ljava/lang/Object;ILp0/m;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lu0/g;

    .line 13
    .line 14
    return-object p1
.end method
