.class public final La0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf3/c;
.implements Lw4/e;
.implements Lw1/g;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:I

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    iput p1, p0, La0/h;->a:I

    sparse-switch p1, :sswitch_data_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x8

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x7

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    shl-int/2addr p1, v1

    :cond_0
    add-int/lit8 v0, p1, -0x1

    .line 4
    iput v0, p0, La0/h;->c:I

    .line 5
    new-array p1, p1, [I

    iput-object p1, p0, La0/h;->d:Ljava/lang/Object;

    return-void

    .line 6
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance p1, Lua/i8;

    const/4 v0, 0x6

    invoke-direct {p1, v0}, Lua/i8;-><init>(I)V

    iput-object p1, p0, La0/h;->d:Ljava/lang/Object;

    const/16 p1, 0x1f40

    .line 8
    iput p1, p0, La0/h;->b:I

    .line 9
    iput p1, p0, La0/h;->c:I

    return-void

    .line 10
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 11
    iput p1, p0, La0/h;->b:I

    const/16 p1, 0x64

    .line 12
    iput p1, p0, La0/h;->c:I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(II)V
    .locals 2

    const/4 v0, 0x5

    iput v0, p0, La0/h;->a:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 14
    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x0

    aput p2, v0, v1

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, La0/h;->d:Ljava/lang/Object;

    .line 15
    iput p1, p0, La0/h;->b:I

    .line 16
    iput p2, p0, La0/h;->c:I

    return-void
.end method

.method public constructor <init>(IILandroid/util/SparseArray;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, La0/h;->a:I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, La0/h;->b:I

    .line 41
    iput p2, p0, La0/h;->c:I

    .line 42
    iput-object p3, p0, La0/h;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 6

    const/4 v0, 0x3

    iput v0, p0, La0/h;->a:I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La0/h;->d:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 19
    iput v0, p0, La0/h;->c:I

    .line 20
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    .line 21
    sget-object v0, Li0/q;->h:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 22
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 23
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 24
    iget v3, p0, La0/h;->b:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, La0/h;->b:I

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 25
    iget v3, p0, La0/h;->c:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, La0/h;->c:I

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 28
    const-string v4, "layout"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 29
    new-instance v3, Li0/n;

    invoke-direct {v3}, Li0/n;-><init>()V

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v2}, Li0/n;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Lv1/d;Lr1/p;)V
    .locals 3

    const/4 v0, 0x2

    iput v0, p0, La0/h;->a:I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iget-object p1, p1, Lv1/d;->c:Lu1/q;

    iput-object p1, p0, La0/h;->d:Ljava/lang/Object;

    const/16 v0, 0xc

    .line 45
    invoke-virtual {p1, v0}, Lu1/q;->O(I)V

    .line 46
    invoke-virtual {p1}, Lu1/q;->F()I

    move-result v0

    .line 47
    iget-object v1, p2, Lr1/p;->o:Ljava/lang/String;

    const-string v2, "audio/raw"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget v1, p2, Lr1/p;->I:I

    invoke-static {v1}, Lu1/f0;->o(I)I

    move-result v1

    iget p2, p2, Lr1/p;->G:I

    mul-int v1, v1, p2

    .line 49
    rem-int p2, v0, v1

    if-eqz p2, :cond_0

    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Audio sample size mismatch. stsd sample size: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", stsz sample size: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lu1/a;->p(Ljava/lang/String;)V

    move v0, v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 51
    :cond_1
    iput v0, p0, La0/h;->b:I

    .line 52
    invoke-virtual {p1}, Lu1/q;->F()I

    move-result p1

    iput p1, p0, La0/h;->c:I

    return-void
.end method

.method public constructor <init>(Lwc/a;)V
    .locals 2

    const/4 v0, 0x7

    iput v0, p0, La0/h;->a:I

    .line 34
    iget v0, p1, Lwc/a;->j0:I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 36
    iput v1, p0, La0/h;->c:I

    .line 37
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, La0/h;->d:Ljava/lang/Object;

    .line 38
    iget p1, p1, Lwc/a;->h0:I

    iput p1, p0, La0/h;->b:I

    return-void
.end method

.method public constructor <init>([ZII)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, La0/h;->a:I

    .line 32
    iput-object p1, p0, La0/h;->d:Ljava/lang/Object;

    iput p2, p0, La0/h;->b:I

    iput p3, p0, La0/h;->c:I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lw4/q;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, La0/h;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, La0/h;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public d(Lw4/h;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lw4/f;->a:Lw4/n;

    .line 2
    .line 3
    iget v0, v0, Lw4/n;->a:I

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v0, p1, Lw4/c;->e:Lx4/a;

    .line 9
    .line 10
    check-cast v0, Lx4/j;

    .line 11
    .line 12
    iget v0, v0, Lx4/l;->a:I

    .line 13
    .line 14
    iget-object v1, p0, La0/h;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, [Z

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    aget-boolean v3, v1, v2

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    iget v3, p0, La0/h;->b:I

    .line 24
    .line 25
    iget v4, p0, La0/h;->c:I

    .line 26
    .line 27
    sub-int/2addr v3, v4

    .line 28
    add-int/2addr v3, v0

    .line 29
    iget-object p1, p1, Lw4/f;->c:Lw4/k;

    .line 30
    .line 31
    iget p1, p1, Lw4/k;->a:I

    .line 32
    .line 33
    if-ne v3, p1, :cond_0

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    :goto_0
    aput-boolean p1, v1, v2

    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public e()I
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iget v1, p0, La0/h;->b:I

    .line 3
    .line 4
    if-ne v1, v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, La0/h;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lu1/q;

    .line 9
    .line 10
    invoke-virtual {v0}, Lu1/q;->F()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    :cond_0
    return v1
.end method

.method public f(I)V
    .locals 4

    .line 1
    iget-object v0, p0, La0/h;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    iget v1, p0, La0/h;->b:I

    .line 6
    .line 7
    aput p1, v0, v1

    .line 8
    .line 9
    add-int/lit8 v1, v1, 0x1

    .line 10
    .line 11
    iget p1, p0, La0/h;->c:I

    .line 12
    .line 13
    and-int/2addr p1, v1

    .line 14
    iput p1, p0, La0/h;->b:I

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    array-length p1, v0

    .line 19
    shl-int/lit8 v1, p1, 0x1

    .line 20
    .line 21
    if-ltz v1, :cond_0

    .line 22
    .line 23
    new-array v2, v1, [I

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static {v3, v3, v0, v2, p1}, Lje/i;->e0(II[I[II)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, La0/h;->d:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, [I

    .line 32
    .line 33
    invoke-static {p1, v3, v0, v2, v3}, Lje/i;->e0(II[I[II)V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, La0/h;->d:Ljava/lang/Object;

    .line 37
    .line 38
    iput p1, p0, La0/h;->b:I

    .line 39
    .line 40
    add-int/lit8 v1, v1, -0x1

    .line 41
    .line 42
    iput v1, p0, La0/h;->c:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 46
    .line 47
    const-string v0, "Max array capacity exceeded"

    .line 48
    .line 49
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_1
    :goto_0
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget v0, p0, La0/h;->b:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_2

    .line 5
    .line 6
    iget v0, p0, La0/h;->c:I

    .line 7
    .line 8
    if-lez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, La0/h;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, La0/m;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v1, v0, La0/m;->c:Lm7/e;

    .line 17
    .line 18
    monitor-enter v1

    .line 19
    :try_start_0
    iget v0, v0, La0/m;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit v1

    .line 22
    iget v1, p0, La0/h;->c:I

    .line 23
    .line 24
    if-eq v0, v1, :cond_6

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    monitor-exit v1

    .line 29
    throw v0

    .line 30
    :cond_0
    :goto_0
    new-instance v0, La0/m;

    .line 31
    .line 32
    iget v1, p0, La0/h;->c:I

    .line 33
    .line 34
    invoke-direct {v0, v1}, La0/m;-><init>(I)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, La0/h;->d:Ljava/lang/Object;

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_2
    const/4 v1, 0x3

    .line 47
    if-eq v0, v1, :cond_4

    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    if-ne v0, v1, :cond_3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, La0/h;->d:Ljava/lang/Object;

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    :goto_1
    iget-object v0, p0, La0/h;->d:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, La0/m;

    .line 60
    .line 61
    const v1, 0x7fffffff

    .line 62
    .line 63
    .line 64
    if-eqz v0, :cond_5

    .line 65
    .line 66
    invoke-virtual {v0}, La0/m;->b()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eq v0, v1, :cond_6

    .line 71
    .line 72
    :cond_5
    new-instance v0, La0/m;

    .line 73
    .line 74
    invoke-direct {v0, v1}, La0/m;-><init>(I)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, La0/h;->d:Ljava/lang/Object;

    .line 78
    .line 79
    :cond_6
    :goto_2
    return-void
.end method

.method public h(II)B
    .locals 1

    .line 1
    iget-object v0, p0, La0/h;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [[B

    .line 4
    .line 5
    aget-object p2, v0, p2

    .line 6
    .line 7
    aget-byte p1, p2, p1

    .line 8
    .line 9
    return p1
.end method

.method public i(Lw4/r;)V
    .locals 0

    .line 1
    return-void
.end method

.method public j(Lw4/i;)V
    .locals 0

    .line 1
    return-void
.end method

.method public k(I)I
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, La0/h;->b:I

    .line 4
    .line 5
    iget v1, p0, La0/h;->c:I

    .line 6
    .line 7
    and-int/2addr v0, v1

    .line 8
    if-ge p1, v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, La0/h;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, [I

    .line 13
    .line 14
    and-int/2addr p1, v1

    .line 15
    aget p1, v0, p1

    .line 16
    .line 17
    return p1

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method public l()[B
    .locals 5

    .line 1
    iget-object v0, p0, La0/h;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget v1, p0, La0/h;->c:I

    .line 7
    .line 8
    if-lez v1, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    iget-object v2, p0, La0/h;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, [Ljava/lang/Object;

    .line 14
    .line 15
    array-length v3, v2

    .line 16
    if-ge v1, v3, :cond_1

    .line 17
    .line 18
    aget-object v3, v2, v1

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    check-cast v3, [B

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    aput-object v4, v2, v1

    .line 26
    .line 27
    iget v1, p0, La0/h;->c:I

    .line 28
    .line 29
    add-int/lit8 v1, v1, -0x1

    .line 30
    .line 31
    iput v1, p0, La0/h;->c:I

    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-object v3

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget v1, p0, La0/h;->b:I

    .line 41
    .line 42
    new-array v1, v1, [B

    .line 43
    .line 44
    monitor-exit v0

    .line 45
    return-object v1

    .line 46
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    goto :goto_3

    .line 48
    :goto_2
    throw v1

    .line 49
    :goto_3
    goto :goto_2
.end method

.method public m([B)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, La0/h;->d:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, [Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    iget v2, p0, La0/h;->c:I

    .line 14
    .line 15
    iget-object v3, p0, La0/h;->d:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v3, [Ljava/lang/Object;

    .line 18
    .line 19
    array-length v3, v3

    .line 20
    if-ge v2, v3, :cond_2

    .line 21
    .line 22
    :goto_0
    iget-object v2, p0, La0/h;->d:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v2, [Ljava/lang/Object;

    .line 25
    .line 26
    array-length v3, v2

    .line 27
    if-ge v0, v3, :cond_2

    .line 28
    .line 29
    aget-object v3, v2, v0

    .line 30
    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    aput-object p1, v2, v0

    .line 34
    .line 35
    iget p1, p0, La0/h;->c:I

    .line 36
    .line 37
    add-int/lit8 p1, p1, 0x1

    .line 38
    .line 39
    iput p1, p0, La0/h;->c:I

    .line 40
    .line 41
    monitor-exit v1

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    monitor-exit v1

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    goto :goto_3

    .line 52
    :goto_2
    throw p1

    .line 53
    :goto_3
    goto :goto_2
.end method

.method public n(III)V
    .locals 1

    .line 1
    iget-object v0, p0, La0/h;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [[B

    .line 4
    .line 5
    aget-object p2, v0, p2

    .line 6
    .line 7
    int-to-byte p3, p3

    .line 8
    aput-byte p3, p2, p1

    .line 9
    .line 10
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget v0, p0, La0/h;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    iget v1, p0, La0/h;->b:I

    .line 14
    .line 15
    mul-int/lit8 v2, v1, 0x2

    .line 16
    .line 17
    iget v3, p0, La0/h;->c:I

    .line 18
    .line 19
    mul-int v2, v2, v3

    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x2

    .line 22
    .line 23
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v4, 0x0

    .line 28
    :goto_0
    if-ge v4, v3, :cond_3

    .line 29
    .line 30
    iget-object v5, p0, La0/h;->d:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v5, [[B

    .line 33
    .line 34
    aget-object v5, v5, v4

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    :goto_1
    if-ge v6, v1, :cond_2

    .line 38
    .line 39
    aget-byte v7, v5, v6

    .line 40
    .line 41
    if-eqz v7, :cond_1

    .line 42
    .line 43
    const/4 v8, 0x1

    .line 44
    if-eq v7, v8, :cond_0

    .line 45
    .line 46
    const-string v7, "  "

    .line 47
    .line 48
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_0
    const-string v7, " 1"

    .line 53
    .line 54
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_1
    const-string v7, " 0"

    .line 59
    .line 60
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const/16 v5, 0xa

    .line 67
    .line 68
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    add-int/lit8 v4, v4, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    return-object v0

    .line 79
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
