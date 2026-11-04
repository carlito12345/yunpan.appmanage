.class public final Ll6/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public c:Z

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ll6/f;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Ll6/f;->c:Z

    .line 4
    iput-object v0, p0, Ll6/f;->f:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll6/f;->g:Ljava/lang/Object;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ll6/f;->h:Ljava/lang/Object;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 11
    iput v1, p0, Ll6/f;->a:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 12
    iput v0, p0, Ll6/f;->b:I

    .line 13
    new-instance v0, Ll6/e;

    invoke-direct {v0}, Ll6/e;-><init>()V

    .line 14
    new-instance v0, Lcom/yunpan/appmanage/carsdk/u;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Lcom/yunpan/appmanage/carsdk/u;-><init>(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ls4/a;ILha/j2;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Ll6/f;->d:Ljava/lang/Object;

    .line 17
    new-instance v2, Ls4/a;

    invoke-direct {v2, p1}, Ls4/a;-><init>(Ls4/a;)V

    iput-object v2, p0, Ll6/f;->e:Ljava/lang/Object;

    .line 18
    iput p2, p0, Ll6/f;->b:I

    const/4 v2, 0x0

    .line 19
    iput-object v2, p0, Ll6/f;->h:Ljava/lang/Object;

    .line 20
    new-array v2, v1, [Z

    aput-boolean v1, v2, v0

    .line 21
    iget-object p1, p1, Ls4/a;->b:Ljava/lang/Object;

    check-cast p1, Lw4/b;

    .line 22
    iget v3, p1, Lw4/b;->d:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 23
    new-instance v3, Landroidx/leanback/widget/i;

    invoke-direct {v3}, Landroidx/leanback/widget/i;-><init>()V

    .line 24
    iget-object v5, p1, Lb5/c;->b:[Ljava/lang/Object;

    array-length v5, v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    .line 25
    invoke-virtual {p1, v6}, Lb5/c;->d(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lw4/a;

    .line 26
    iget-object v7, v7, Lw4/a;->b:Lw4/g;

    iget-object v8, v7, Lb5/c;->b:[Ljava/lang/Object;

    .line 27
    array-length v8, v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_0

    .line 28
    invoke-virtual {v7, v9}, Lb5/c;->d(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lw4/f;

    .line 29
    invoke-virtual {v10, v3}, Lw4/f;->b(Lw4/e;)V

    add-int/2addr v9, v1

    goto :goto_1

    :cond_0
    add-int/2addr v6, v1

    goto :goto_0

    .line 30
    :cond_1
    iget v3, v3, Landroidx/leanback/widget/i;->b:I

    .line 31
    iput v3, p1, Lw4/b;->d:I

    .line 32
    :cond_2
    iget v3, p1, Lw4/b;->d:I

    .line 33
    new-instance v5, La0/h;

    invoke-direct {v5, v2, v3, p2}, La0/h;-><init>([ZII)V

    .line 34
    iget-object v3, p1, Lb5/c;->b:[Ljava/lang/Object;

    array-length v3, v3

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_4

    .line 35
    invoke-virtual {p1, v6}, Lb5/c;->d(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lw4/a;

    .line 36
    iget-object v7, v7, Lw4/a;->b:Lw4/g;

    iget-object v8, v7, Lb5/c;->b:[Ljava/lang/Object;

    .line 37
    array-length v8, v8

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_3

    .line 38
    invoke-virtual {v7, v9}, Lb5/c;->d(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lw4/f;

    .line 39
    invoke-virtual {v10, v5}, Lw4/f;->b(Lw4/e;)V

    add-int/2addr v9, v1

    goto :goto_3

    :cond_3
    add-int/2addr v6, v1

    goto :goto_2

    .line 40
    :cond_4
    aget-boolean v2, v2, v0

    .line 41
    iput-boolean v2, p0, Ll6/f;->c:Z

    .line 42
    iget-object v2, p1, Lb5/c;->b:[Ljava/lang/Object;

    .line 43
    array-length v3, v2

    mul-int/lit8 v8, v3, 0x3

    .line 44
    array-length v3, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_4
    if-ge v5, v3, :cond_6

    .line 45
    aget-object v7, v2, v5

    .line 46
    check-cast v7, Lw4/a;

    if-eqz v7, :cond_5

    .line 47
    iget-object v7, v7, Lw4/a;->b:Lw4/g;

    iget-object v7, v7, Lb5/c;->b:[Ljava/lang/Object;

    .line 48
    array-length v7, v7

    add-int/2addr v6, v7

    :cond_5
    add-int/2addr v5, v1

    goto :goto_4

    :cond_6
    add-int v7, v8, v6

    .line 49
    iget v2, p1, Lw4/b;->d:I

    if-ne v2, v4, :cond_9

    .line 50
    new-instance v2, Landroidx/leanback/widget/i;

    invoke-direct {v2}, Landroidx/leanback/widget/i;-><init>()V

    .line 51
    iget-object v3, p1, Lb5/c;->b:[Ljava/lang/Object;

    array-length v3, v3

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_8

    .line 52
    invoke-virtual {p1, v4}, Lb5/c;->d(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lw4/a;

    .line 53
    iget-object v5, v5, Lw4/a;->b:Lw4/g;

    iget-object v6, v5, Lb5/c;->b:[Ljava/lang/Object;

    .line 54
    array-length v6, v6

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v6, :cond_7

    .line 55
    invoke-virtual {v5, v9}, Lb5/c;->d(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lw4/f;

    .line 56
    invoke-virtual {v10, v2}, Lw4/f;->b(Lw4/e;)V

    add-int/2addr v9, v1

    goto :goto_6

    :cond_7
    add-int/2addr v4, v1

    goto :goto_5

    .line 57
    :cond_8
    iget v1, v2, Landroidx/leanback/widget/i;->b:I

    .line 58
    iput v1, p1, Lw4/b;->d:I

    .line 59
    :cond_9
    iget p1, p1, Lw4/b;->d:I

    .line 60
    iget-boolean v1, p0, Ll6/f;->c:Z

    if-eqz v1, :cond_a

    goto :goto_7

    :cond_a
    iget v0, p0, Ll6/f;->b:I

    :goto_7
    add-int v9, p1, v0

    iput v9, p0, Ll6/f;->a:I

    .line 61
    new-instance p1, Lkf/d;

    move-object v5, p1

    move-object v6, p3

    move v10, p2

    invoke-direct/range {v5 .. v10}, Lkf/d;-><init>(Lha/j2;IIII)V

    iput-object p1, p0, Ll6/f;->f:Ljava/lang/Object;

    .line 62
    new-instance p2, La2/w0;

    invoke-direct {p2, p0, p1}, La2/w0;-><init>(Ll6/f;Lkf/d;)V

    iput-object p2, p0, Ll6/f;->g:Ljava/lang/Object;

    return-void
.end method

.method public static c(Lw4/f;Lw4/k;)Lw4/l;
    .locals 5

    .line 1
    iget-object v0, p0, Lw4/f;->d:Lw4/l;

    .line 2
    .line 3
    iget-object p0, p0, Lw4/f;->a:Lw4/n;

    .line 4
    .line 5
    iget p0, p0, Lw4/n;->a:I

    .line 6
    .line 7
    const/16 v1, 0xe

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eq p0, v1, :cond_0

    .line 11
    .line 12
    const/16 v1, 0x10

    .line 13
    .line 14
    if-eq p0, v1, :cond_0

    .line 15
    .line 16
    packed-switch p0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    :pswitch_0
    iget-object p0, v0, Lb5/c;->b:[Ljava/lang/Object;

    .line 21
    .line 22
    array-length p0, p0

    .line 23
    const/4 v1, 0x2

    .line 24
    if-ne p0, v1, :cond_1

    .line 25
    .line 26
    iget p0, p1, Lw4/k;->a:I

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-virtual {v0, v1}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lw4/k;

    .line 34
    .line 35
    iget v3, v3, Lw4/k;->a:I

    .line 36
    .line 37
    if-ne p0, v3, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Lw4/k;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lw4/k;

    .line 50
    .line 51
    invoke-static {p0, v0}, Lw4/l;->h(Lw4/k;Lw4/k;)Lw4/l;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_2
    iget-object p0, v0, Lb5/c;->b:[Ljava/lang/Object;

    .line 59
    .line 60
    array-length p0, p0

    .line 61
    new-instance v1, Lw4/l;

    .line 62
    .line 63
    add-int/lit8 v3, p0, 0x1

    .line 64
    .line 65
    invoke-direct {v1, v3}, Lw4/l;-><init>(I)V

    .line 66
    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    :goto_1
    if-ge v3, p0, :cond_3

    .line 70
    .line 71
    add-int/lit8 v4, v3, 0x1

    .line 72
    .line 73
    invoke-virtual {v0, v3}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v1, v4, v3}, Lb5/c;->e(ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    move v3, v4

    .line 81
    goto :goto_1

    .line 82
    :cond_3
    invoke-virtual {v1, v2, p1}, Lb5/c;->e(ILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    iget-boolean p0, v0, Lb5/f;->a:Z

    .line 86
    .line 87
    if-nez p0, :cond_4

    .line 88
    .line 89
    iput-boolean v2, v1, Lb5/f;->a:Z

    .line 90
    .line 91
    :cond_4
    return-object v1

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Ll6/g;Ll6/d;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ll6/f;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    iget-object v2, p1, Ll6/g;->e:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v1, "service="

    .line 34
    .line 35
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p2, Ll6/d;->c:Ll6/g;

    .line 39
    .line 40
    iget-object v1, v1, Ll6/g;->g:Ll6/h;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1}, Lif/a;->o0(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p2, Ll6/d;->i:Z

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method public b(I)Ll6/d;
    .locals 3

    .line 1
    iget-object v0, p0, Ll6/f;->h:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Ll6/f;->h:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ll6/d;

    .line 19
    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Ll6/f;->d(I)Ll6/d;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_0
    return-object v1

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p1
.end method

.method public d(I)Ll6/d;
    .locals 6

    .line 1
    iget-object v0, p0, Ll6/f;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string p1, "VDRouter isnot inited!!!Please call VDBus.getDefault().init() first"

    .line 9
    .line 10
    invoke-static {p1}, Lif/a;->n0(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v2, p0, Ll6/f;->f:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Ll6/g;

    .line 34
    .line 35
    iget-object v4, v3, Ll6/g;->g:Ll6/h;

    .line 36
    .line 37
    iget v4, v4, Ll6/h;->a:I

    .line 38
    .line 39
    if-ne v4, p1, :cond_1

    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v4, "service="

    .line 47
    .line 48
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v4, v3, Ll6/g;->g:Ll6/h;

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v1}, Lif/a;->o0(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v1, Ll6/d;

    .line 68
    .line 69
    iget-object v4, p0, Ll6/f;->e:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v4, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;

    .line 72
    .line 73
    iget-object v5, p0, Ll6/f;->d:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v5, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 76
    .line 77
    invoke-direct {v1, v4, v3, v5}, Ll6/d;-><init>(Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;Ll6/g;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 78
    .line 79
    .line 80
    iget-object v4, p0, Ll6/f;->h:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v4, Ljava/util/HashMap;

    .line 83
    .line 84
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :try_start_1
    iget-object v5, p0, Ll6/f;->h:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v5, Ljava/util/HashMap;

    .line 88
    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {v5, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v3, v1}, Ll6/f;->a(Ll6/g;Ll6/d;)V

    .line 101
    .line 102
    .line 103
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    return-object v1

    .line 105
    :catchall_0
    move-exception p1

    .line 106
    goto :goto_0

    .line 107
    :catchall_1
    move-exception p1

    .line 108
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 109
    :try_start_4
    throw p1

    .line 110
    :cond_2
    monitor-exit v0

    .line 111
    return-object v1

    .line 112
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 113
    goto :goto_2

    .line 114
    :goto_1
    throw p1

    .line 115
    :goto_2
    goto :goto_1
.end method
