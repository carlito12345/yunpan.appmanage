.class public final Lcom/yunpan/appmanage/carsdk/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final s:[I


# instance fields
.field public final a:Ljava/util/HashSet;

.field public final b:Landroid/content/ContextWrapper;

.field public final c:Lcom/yunpan/appmanage/carsdk/v;

.field public volatile d:Ljava/lang/Object;

.field public volatile e:Ljava/lang/Object;

.field public volatile f:Ljava/lang/Object;

.field public final g:Lj$/util/concurrent/ConcurrentHashMap;

.field public final h:Lj$/util/concurrent/ConcurrentHashMap;

.field public final i:Z

.field public final j:Lcom/yunpan/appmanage/carsdk/u;

.field public final k:Lz7/s;

.field public final l:Ljava/util/HashMap;

.field public final m:Lj$/util/concurrent/ConcurrentHashMap;

.field public final n:Ljava/util/HashMap;

.field public final o:Ljava/util/HashMap;

.field public p:I

.field public final q:I

.field public final r:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/yunpan/appmanage/carsdk/x;->s:[I

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 4
        0x41020400
        0x41020100
        0x41020200
        0x41020300
        0x41020800
        0x41020500
    .end array-data
.end method

.method public constructor <init>(Lcom/yunpan/appmanage/service/AccService;)V
    .locals 8

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/x;->a:Ljava/util/HashSet;

    .line 28
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/x;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 29
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/x;->h:Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/yunpan/appmanage/carsdk/x;->i:Z

    .line 31
    new-instance v1, Lcom/yunpan/appmanage/carsdk/u;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/yunpan/appmanage/carsdk/u;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    iput-object v1, p0, Lcom/yunpan/appmanage/carsdk/x;->j:Lcom/yunpan/appmanage/carsdk/u;

    .line 32
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/yunpan/appmanage/carsdk/x;->l:Ljava/util/HashMap;

    .line 33
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/yunpan/appmanage/carsdk/x;->m:Lj$/util/concurrent/ConcurrentHashMap;

    .line 34
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/yunpan/appmanage/carsdk/x;->n:Ljava/util/HashMap;

    .line 35
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/yunpan/appmanage/carsdk/x;->o:Ljava/util/HashMap;

    .line 36
    iput v0, p0, Lcom/yunpan/appmanage/carsdk/x;->p:I

    const/16 v1, 0x258

    .line 37
    iput v1, p0, Lcom/yunpan/appmanage/carsdk/x;->q:I

    const/16 v1, 0x14d

    .line 38
    iput v1, p0, Lcom/yunpan/appmanage/carsdk/x;->r:I

    .line 39
    iput-object p1, p0, Lcom/yunpan/appmanage/carsdk/x;->b:Landroid/content/ContextWrapper;

    .line 40
    sget-object v1, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 41
    iget-object v1, v1, Lcom/yunpan/appmanage/carsdk/k0;->c:Ljava/lang/Object;

    if-eqz v1, :cond_8

    .line 42
    invoke-static {p1}, Lq4/a;->r(Landroid/content/Context;)Lz7/s;

    move-result-object v1

    iput-object v1, p0, Lcom/yunpan/appmanage/carsdk/x;->k:Lz7/s;

    if-eqz v1, :cond_7

    .line 43
    const-string v2, "maps"

    invoke-virtual {v1, v2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    move-result-object v2

    .line 44
    const-string v3, "isOn"

    invoke-virtual {v1, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v1

    invoke-virtual {v1}, Lz7/p;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 45
    iget-object v1, v2, Lz7/o;->a:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 47
    :goto_0
    iget-object v1, v2, Lz7/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 48
    invoke-virtual {v2, v0}, Lz7/o;->l(I)Lz7/p;

    move-result-object v1

    invoke-virtual {v1}, Lz7/p;->g()Lz7/s;

    move-result-object v1

    .line 49
    const-string v3, "isOpen"

    invoke-virtual {v1, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v3

    invoke-virtual {v3}, Lz7/p;->b()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 50
    :cond_0
    const-string v3, "click"

    invoke-virtual {v1, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    move-result-object v4

    .line 51
    iget-object v4, v4, Lz7/o;->a:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    .line 53
    const-string v5, "type"

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/yunpan/appmanage/carsdk/x;->l:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v6

    invoke-virtual {v6}, Lz7/p;->e()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_1
    iget-object v3, v1, Lz7/s;->a:Lb8/n;

    const-string v4, "longClick"

    invoke-virtual {v3, v4}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 55
    invoke-virtual {v1, v4}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    move-result-object v6

    .line 56
    iget-object v6, v6, Lz7/o;->a:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 58
    iget-object v6, p0, Lcom/yunpan/appmanage/carsdk/x;->o:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v7

    invoke-virtual {v7}, Lz7/p;->e()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v4}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_2
    const-string v4, "doubleClick"

    invoke-virtual {v3, v4}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 60
    invoke-virtual {v1, v4}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    move-result-object v3

    .line 61
    iget-object v3, v3, Lz7/o;->a:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 63
    iget-object v3, p0, Lcom/yunpan/appmanage/carsdk/x;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v5

    invoke-virtual {v5}, Lz7/p;->e()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 64
    :cond_4
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/x;->k:Lz7/s;

    .line 65
    iget-object v0, v0, Lz7/s;->a:Lb8/n;

    .line 66
    const-string v1, "triggerTime_double"

    invoke-virtual {v0, v1}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 67
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/x;->k:Lz7/s;

    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v0

    invoke-virtual {v0}, Lz7/p;->e()I

    move-result v0

    iput v0, p0, Lcom/yunpan/appmanage/carsdk/x;->q:I

    .line 68
    :cond_5
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/x;->k:Lz7/s;

    .line 69
    iget-object v0, v0, Lz7/s;->a:Lb8/n;

    .line 70
    const-string v1, "triggerTime_long"

    invoke-virtual {v0, v1}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 71
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/x;->k:Lz7/s;

    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v0

    invoke-virtual {v0}, Lz7/p;->e()I

    move-result v0

    iput v0, p0, Lcom/yunpan/appmanage/carsdk/x;->r:I

    .line 72
    :cond_6
    new-instance v0, La2/g1;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, La2/g1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/x;->c:Lcom/yunpan/appmanage/carsdk/v;

    .line 73
    invoke-virtual {p0}, Lcom/yunpan/appmanage/carsdk/x;->e()V

    .line 74
    invoke-virtual {p0}, Lcom/yunpan/appmanage/carsdk/x;->k()V

    .line 75
    invoke-virtual {p0}, Lcom/yunpan/appmanage/carsdk/x;->j()V

    .line 76
    sget-object p1, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 77
    new-instance v0, Lcom/yunpan/appmanage/carsdk/s;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/yunpan/appmanage/carsdk/s;-><init>(Lcom/yunpan/appmanage/carsdk/x;I)V

    .line 78
    iput-object v0, p1, Lcom/yunpan/appmanage/carsdk/k0;->h:Ljava/lang/Object;

    return-void

    .line 79
    :cond_7
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    .line 80
    :cond_8
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "car \u672a\u8fde\u63a5"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public constructor <init>(Lda/g;ZLcom/yunpan/appmanage/carsdk/v;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/x;->a:Ljava/util/HashSet;

    .line 3
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/x;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 4
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/x;->h:Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/yunpan/appmanage/carsdk/x;->i:Z

    .line 6
    new-instance v1, Lcom/yunpan/appmanage/carsdk/u;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/yunpan/appmanage/carsdk/u;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    iput-object v1, p0, Lcom/yunpan/appmanage/carsdk/x;->j:Lcom/yunpan/appmanage/carsdk/u;

    .line 7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/yunpan/appmanage/carsdk/x;->l:Ljava/util/HashMap;

    .line 8
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/yunpan/appmanage/carsdk/x;->m:Lj$/util/concurrent/ConcurrentHashMap;

    .line 9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/yunpan/appmanage/carsdk/x;->n:Ljava/util/HashMap;

    .line 10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/yunpan/appmanage/carsdk/x;->o:Ljava/util/HashMap;

    .line 11
    iput v0, p0, Lcom/yunpan/appmanage/carsdk/x;->p:I

    const/16 v0, 0x258

    .line 12
    iput v0, p0, Lcom/yunpan/appmanage/carsdk/x;->q:I

    const/16 v0, 0x14d

    .line 13
    iput v0, p0, Lcom/yunpan/appmanage/carsdk/x;->r:I

    .line 14
    sget-object v0, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 15
    iget-object v1, v0, Lcom/yunpan/appmanage/carsdk/k0;->c:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 16
    iput-boolean p2, p0, Lcom/yunpan/appmanage/carsdk/x;->i:Z

    .line 17
    iput-object p1, p0, Lcom/yunpan/appmanage/carsdk/x;->b:Landroid/content/ContextWrapper;

    .line 18
    iput-object p3, p0, Lcom/yunpan/appmanage/carsdk/x;->c:Lcom/yunpan/appmanage/carsdk/v;

    .line 19
    invoke-virtual {p0}, Lcom/yunpan/appmanage/carsdk/x;->e()V

    .line 20
    invoke-interface {p3}, Lcom/yunpan/appmanage/carsdk/v;->q()V

    .line 21
    invoke-virtual {p0}, Lcom/yunpan/appmanage/carsdk/x;->k()V

    .line 22
    invoke-virtual {p0}, Lcom/yunpan/appmanage/carsdk/x;->j()V

    .line 23
    new-instance p1, Lcom/yunpan/appmanage/carsdk/s;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/yunpan/appmanage/carsdk/s;-><init>(Lcom/yunpan/appmanage/carsdk/x;I)V

    .line 24
    iput-object p1, v0, Lcom/yunpan/appmanage/carsdk/k0;->h:Ljava/lang/Object;

    return-void

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "car\u672a\u8fde\u63a5"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lcom/yunpan/appmanage/carsdk/x;Ljava/lang/Object;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const-string v2, "getPropertyId"

    .line 8
    .line 9
    invoke-static {p1, v2, v1}, Lcom/yunpan/appmanage/carsdk/x;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const-string v2, "getAreaId"

    .line 20
    .line 21
    new-array v3, v0, [Ljava/lang/Object;

    .line 22
    .line 23
    invoke-static {p1, v2, v3}, Lcom/yunpan/appmanage/carsdk/x;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const-string v3, "getStatus"

    .line 34
    .line 35
    new-array v4, v0, [Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {p1, v3, v4}, Lcom/yunpan/appmanage/carsdk/x;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    const-string v4, "getValue"

    .line 48
    .line 49
    new-array v0, v0, [Ljava/lang/Object;

    .line 50
    .line 51
    invoke-static {p1, v4, v0}, Lcom/yunpan/appmanage/carsdk/x;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object p0, p0, Lcom/yunpan/appmanage/carsdk/x;->c:Lcom/yunpan/appmanage/carsdk/v;

    .line 56
    .line 57
    invoke-interface {p0, p1, v1, v2, v3}, Lcom/yunpan/appmanage/carsdk/v;->F(Ljava/lang/Object;III)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public static b(Lcom/yunpan/appmanage/carsdk/x;Ljava/lang/Object;)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const-string v2, "getPropertyId"

    .line 8
    .line 9
    invoke-static {p1, v2, v1}, Lcom/yunpan/appmanage/carsdk/x;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const-string v3, "getValue"

    .line 20
    .line 21
    new-array v4, v0, [Ljava/lang/Object;

    .line 22
    .line 23
    invoke-static {p1, v3, v4}, Lcom/yunpan/appmanage/carsdk/x;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object v3, p0, Lcom/yunpan/appmanage/carsdk/x;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 28
    .line 29
    invoke-virtual {v3, v1}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    invoke-virtual {v3, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v3, -0x1

    .line 47
    :goto_0
    instance-of v4, p1, Ljava/lang/Integer;

    .line 48
    .line 49
    const/high16 v5, -0x80000000

    .line 50
    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    move-object v4, p1

    .line 54
    check-cast v4, Ljava/lang/Integer;

    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    const/high16 v4, -0x80000000

    .line 62
    .line 63
    :goto_1
    if-eqz v4, :cond_8

    .line 64
    .line 65
    const/4 v6, 0x1

    .line 66
    if-eq v4, v6, :cond_8

    .line 67
    .line 68
    const/4 v7, 0x2

    .line 69
    if-eq v4, v7, :cond_8

    .line 70
    .line 71
    const/4 v8, 0x3

    .line 72
    if-eq v4, v8, :cond_8

    .line 73
    .line 74
    const/4 v9, 0x4

    .line 75
    if-eq v4, v9, :cond_8

    .line 76
    .line 77
    const/4 v10, 0x5

    .line 78
    if-eq v4, v10, :cond_8

    .line 79
    .line 80
    const/4 v10, 0x6

    .line 81
    if-ne v4, v10, :cond_2

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    const v10, 0x41020101

    .line 85
    .line 86
    .line 87
    if-ne v4, v10, :cond_3

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_3
    const v0, 0x41020102

    .line 91
    .line 92
    .line 93
    if-ne v4, v0, :cond_4

    .line 94
    .line 95
    const/4 v0, 0x1

    .line 96
    goto :goto_3

    .line 97
    :cond_4
    const v0, 0x41020103

    .line 98
    .line 99
    .line 100
    if-ne v4, v0, :cond_5

    .line 101
    .line 102
    const/4 v0, 0x2

    .line 103
    goto :goto_3

    .line 104
    :cond_5
    const v0, 0x41020104

    .line 105
    .line 106
    .line 107
    if-ne v4, v0, :cond_6

    .line 108
    .line 109
    const/4 v0, 0x3

    .line 110
    goto :goto_3

    .line 111
    :cond_6
    const v0, 0x41020105

    .line 112
    .line 113
    .line 114
    if-ne v4, v0, :cond_7

    .line 115
    .line 116
    const/4 v0, 0x4

    .line 117
    goto :goto_3

    .line 118
    :cond_7
    const/high16 v0, -0x80000000

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_8
    :goto_2
    move v0, v4

    .line 122
    :goto_3
    iget-object v4, p0, Lcom/yunpan/appmanage/carsdk/x;->h:Lj$/util/concurrent/ConcurrentHashMap;

    .line 123
    .line 124
    invoke-virtual {v4, v1}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    if-eqz v6, :cond_9

    .line 129
    .line 130
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 131
    .line 132
    invoke-virtual {v4, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    invoke-virtual {v6, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    if-eqz v6, :cond_9

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_9
    if-nez v0, :cond_a

    .line 144
    .line 145
    goto :goto_5

    .line 146
    :cond_a
    :goto_4
    if-eq v0, v5, :cond_b

    .line 147
    .line 148
    if-eqz v0, :cond_b

    .line 149
    .line 150
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 151
    .line 152
    invoke-virtual {v4, v1, v5}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    :cond_b
    iget-object p0, p0, Lcom/yunpan/appmanage/carsdk/x;->c:Lcom/yunpan/appmanage/carsdk/v;

    .line 156
    .line 157
    if-eqz p0, :cond_c

    .line 158
    .line 159
    invoke-interface {p0, p1, v3, v2, v0}, Lcom/yunpan/appmanage/carsdk/v;->J(Ljava/lang/Object;III)V

    .line 160
    .line 161
    .line 162
    :cond_c
    :goto_5
    return-void
.end method

.method public static c(Lcom/yunpan/appmanage/carsdk/x;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string p2, "hashCode"

    .line 9
    .line 10
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p2, "equals"

    .line 26
    .line 27
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    const/4 v0, 0x0

    .line 32
    if-eqz p2, :cond_3

    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    if-eqz p3, :cond_1

    .line 36
    .line 37
    array-length p2, p3

    .line 38
    if-lez p2, :cond_1

    .line 39
    .line 40
    aget-object v0, p3, p0

    .line 41
    .line 42
    :cond_1
    if-ne p1, v0, :cond_2

    .line 43
    .line 44
    const/4 p0, 0x1

    .line 45
    :cond_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    const-string p2, "toString"

    .line 51
    .line 52
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-eqz p0, :cond_4

    .line 57
    .line 58
    const-string p0, "FlyOS18Proxy("

    .line 59
    .line 60
    const-string p2, ")@"

    .line 61
    .line 62
    invoke-static {p0, p4, p2}, Lda/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    goto :goto_0

    .line 82
    :cond_4
    move-object p0, v0

    .line 83
    :goto_0
    return-object p0
.end method

.method public static d(Lcom/yunpan/appmanage/carsdk/x;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object v0, p2

    .line 5
    :goto_0
    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Ljava/lang/reflect/InvocationTargetException;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-eq v2, v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    if-nez v0, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move-object p2, v0

    .line 33
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/yunpan/appmanage/carsdk/x;->c:Lcom/yunpan/appmanage/carsdk/v;

    .line 37
    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    invoke-interface {p0, p1, p2}, Lcom/yunpan/appmanage/carsdk/v;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method public static f()Ljava/util/ArrayList;
    .locals 16

    .line 1
    sget-object v0, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/yunpan/appmanage/carsdk/k0;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "getPropertyList"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/k0;->c:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/util/List;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_3

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "getPropertyId"

    .line 42
    .line 43
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string v4, "getAccess"

    .line 48
    .line 49
    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const-string v5, "getAreaIds"

    .line 54
    .line 55
    invoke-virtual {v1, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    const-string v6, "getChangeMode"

    .line 60
    .line 61
    invoke-virtual {v1, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    const-string v7, "getAreaType"

    .line 66
    .line 67
    invoke-virtual {v1, v7, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    new-instance v7, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    if-eqz v8, :cond_2

    .line 85
    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    invoke-virtual {v2, v8, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    check-cast v9, Ljava/lang/Integer;

    .line 95
    .line 96
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v11

    .line 100
    invoke-virtual {v4, v8, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    check-cast v9, Ljava/lang/Integer;

    .line 105
    .line 106
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 107
    .line 108
    .line 109
    move-result v12

    .line 110
    invoke-virtual {v5, v8, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    check-cast v9, [I

    .line 115
    .line 116
    invoke-virtual {v6, v8, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    check-cast v10, Ljava/lang/Integer;

    .line 121
    .line 122
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 123
    .line 124
    .line 125
    move-result v14

    .line 126
    invoke-virtual {v1, v8, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    check-cast v8, Ljava/lang/Integer;

    .line 131
    .line 132
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 133
    .line 134
    .line 135
    move-result v15

    .line 136
    new-instance v8, Lcom/yunpan/appmanage/carsdk/w;

    .line 137
    .line 138
    if-nez v9, :cond_0

    .line 139
    .line 140
    move-object v9, v3

    .line 141
    goto :goto_1

    .line 142
    :cond_0
    array-length v10, v9

    .line 143
    if-nez v10, :cond_1

    .line 144
    .line 145
    sget-object v9, Lzg/a;->a:[Ljava/lang/Integer;

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_1
    array-length v10, v9

    .line 149
    new-array v10, v10, [Ljava/lang/Integer;

    .line 150
    .line 151
    new-instance v13, Lcom/hierynomus/smbfs/a;

    .line 152
    .line 153
    const/4 v3, 0x1

    .line 154
    invoke-direct {v13, v3, v9}, Lcom/hierynomus/smbfs/a;-><init>(ILjava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    invoke-static {v10, v13}, Lq/t;->u([Ljava/lang/Object;Lcom/hierynomus/smbfs/a;)V

    .line 158
    .line 159
    .line 160
    move-object v9, v10

    .line 161
    :goto_1
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v13

    .line 165
    move-object v10, v8

    .line 166
    invoke-direct/range {v10 .. v15}, Lcom/yunpan/appmanage/carsdk/w;-><init>(IILjava/util/List;II)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    const/4 v3, 0x0

    .line 173
    goto :goto_0

    .line 174
    :cond_2
    return-object v7

    .line 175
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    .line 176
    .line 177
    const-string v1, "\u5217\u8868\u4e3a\u7a7a"

    .line 178
    .line 179
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    goto :goto_3

    .line 183
    :goto_2
    throw v0

    .line 184
    :goto_3
    goto :goto_2
.end method

.method public static varargs g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    array-length v0, p2

    .line 2
    new-array v0, v0, [Ljava/lang/Class;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p2

    .line 6
    if-ge v1, v2, :cond_5

    .line 7
    .line 8
    aget-object v2, p2, v1

    .line 9
    .line 10
    instance-of v3, v2, Ljava/lang/Integer;

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    aput-object v2, v0, v1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    instance-of v3, v2, Ljava/lang/Float;

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 24
    .line 25
    aput-object v2, v0, v1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    instance-of v3, v2, Ljava/lang/Boolean;

    .line 29
    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 33
    .line 34
    aput-object v2, v0, v1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    instance-of v3, v2, Ljava/lang/Long;

    .line 38
    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 42
    .line 43
    aput-object v2, v0, v1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    instance-of v3, v2, Ljava/lang/Double;

    .line 47
    .line 48
    if-eqz v3, :cond_4

    .line 49
    .line 50
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 51
    .line 52
    aput-object v2, v0, v1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    aput-object v2, v0, v1

    .line 60
    .line 61
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    const-string v1, "com.flyme.auto.keyserver"

    .line 7
    .line 8
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :catch_0
    return v0
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/yunpan/appmanage/carsdk/x;->h(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lq4/a;->r(Landroid/content/Context;)Lz7/s;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const-string v0, "isOn"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lz7/p;->b()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const-string v0, "maps"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    iget-object p0, p0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    if-nez p0, :cond_0

    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :catch_0
    :cond_0
    const/4 p0, 0x0

    .line 42
    return p0
.end method

.method public static l(ILjava/lang/Object;)V
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x0

    .line 5
    const-string v4, "registerCallback"

    .line 6
    .line 7
    const-string v5, "android.car.hardware.property.CarPropertyManager$CarPropertyEventCallback"

    .line 8
    .line 9
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    :try_start_0
    sget-object v6, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 14
    .line 15
    iget-object v7, v6, Lcom/yunpan/appmanage/carsdk/k0;->c:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    new-array v8, v2, [Ljava/lang/Class;

    .line 22
    .line 23
    aput-object v5, v8, v3

    .line 24
    .line 25
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 26
    .line 27
    aput-object v9, v8, v1

    .line 28
    .line 29
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 30
    .line 31
    aput-object v9, v8, v0

    .line 32
    .line 33
    invoke-virtual {v7, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    iget-object v6, v6, Lcom/yunpan/appmanage/carsdk/k0;->c:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    const/4 v9, 0x0

    .line 44
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 45
    .line 46
    .line 47
    move-result-object v9

    .line 48
    new-array v10, v2, [Ljava/lang/Object;

    .line 49
    .line 50
    aput-object p1, v10, v3

    .line 51
    .line 52
    aput-object v8, v10, v1

    .line 53
    .line 54
    aput-object v9, v10, v0

    .line 55
    .line 56
    invoke-virtual {v7, v6, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catch_0
    :try_start_1
    sget-object v6, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 61
    .line 62
    iget-object v7, v6, Lcom/yunpan/appmanage/carsdk/k0;->c:Ljava/lang/Object;

    .line 63
    .line 64
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    new-array v8, v2, [Ljava/lang/Class;

    .line 69
    .line 70
    aput-object v5, v8, v3

    .line 71
    .line 72
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 73
    .line 74
    aput-object v5, v8, v1

    .line 75
    .line 76
    aput-object v5, v8, v0

    .line 77
    .line 78
    invoke-virtual {v7, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    iget-object v5, v6, Lcom/yunpan/appmanage/carsdk/k0;->c:Ljava/lang/Object;

    .line 83
    .line 84
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    new-array v2, v2, [Ljava/lang/Object;

    .line 93
    .line 94
    aput-object p1, v2, v3

    .line 95
    .line 96
    aput-object p0, v2, v1

    .line 97
    .line 98
    aput-object v6, v2, v0

    .line 99
    .line 100
    invoke-virtual {v4, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :catch_1
    new-instance p0, Ljava/lang/NoSuchMethodException;

    .line 105
    .line 106
    const-string p1, "No compatible CarPropertyManager.registerCallback found"

    .line 107
    .line 108
    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p0
.end method


# virtual methods
.method public final e()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/x;->d:Ljava/lang/Object;

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v2, "com.ecarx.xui.adaptapi.car.Car"

    .line 9
    .line 10
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    new-array v3, v1, [Ljava/lang/Class;

    .line 15
    .line 16
    const-class v4, Landroid/content/Context;

    .line 17
    .line 18
    aput-object v4, v3, v0

    .line 19
    .line 20
    const-string v4, "createWrapper"

    .line 21
    .line 22
    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v3, p0, Lcom/yunpan/appmanage/carsdk/x;->b:Landroid/content/ContextWrapper;

    .line 27
    .line 28
    new-array v1, v1, [Ljava/lang/Object;

    .line 29
    .line 30
    aput-object v3, v1, v0

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/x;->d:Ljava/lang/Object;

    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string v1, "AdaptAPI createWrapper returned null"

    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0
.end method

.method public final j()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-object v1, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 3
    .line 4
    iget-object v1, v1, Lcom/yunpan/appmanage/carsdk/k0;->c:Ljava/lang/Object;

    .line 5
    .line 6
    if-eqz v1, :cond_5

    .line 7
    .line 8
    iget-object v1, p0, Lcom/yunpan/appmanage/carsdk/x;->f:Ljava/lang/Object;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v1, "android.car.hardware.property.CarPropertyManager$CarPropertyEventCallback"

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-array v3, v0, [Ljava/lang/Class;

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    aput-object v1, v3, v4

    .line 27
    .line 28
    new-instance v1, Lcom/yunpan/appmanage/carsdk/t;

    .line 29
    .line 30
    invoke-direct {v1, p0, v0}, Lcom/yunpan/appmanage/carsdk/t;-><init>(Lcom/yunpan/appmanage/carsdk/x;I)V

    .line 31
    .line 32
    .line 33
    invoke-static {v2, v3, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/x;->f:Ljava/lang/Object;

    .line 38
    .line 39
    :goto_0
    iget-boolean v0, p0, Lcom/yunpan/appmanage/carsdk/x;->i:Z

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/x;->f()Ljava/util/ArrayList;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lcom/yunpan/appmanage/carsdk/w;

    .line 62
    .line 63
    iget v2, v1, Lcom/yunpan/appmanage/carsdk/w;->d:I

    .line 64
    .line 65
    if-nez v2, :cond_1

    .line 66
    .line 67
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/x;->a:Ljava/util/HashSet;

    .line 68
    .line 69
    iget v1, v1, Lcom/yunpan/appmanage/carsdk/w;->a:I

    .line 70
    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/x;->a:Ljava/util/HashSet;

    .line 80
    .line 81
    const v1, 0x11400401

    .line 82
    .line 83
    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    :cond_3
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/x;->a:Ljava/util/HashSet;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Ljava/lang/Integer;

    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    :try_start_0
    iget-object v2, p0, Lcom/yunpan/appmanage/carsdk/x;->f:Ljava/lang/Object;

    .line 114
    .line 115
    invoke-static {v1, v2}, Lcom/yunpan/appmanage/carsdk/x;->l(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :catch_0
    nop

    .line 120
    goto :goto_2

    .line 121
    :cond_4
    return-void

    .line 122
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 123
    .line 124
    const-string v1, "carPropertyManager is null, call start() and wait for connection first"

    .line 125
    .line 126
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto :goto_4

    .line 130
    :goto_3
    throw v0

    .line 131
    :goto_4
    goto :goto_3
.end method

.method public final k()V
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    sget-object v3, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 5
    .line 6
    iget-object v3, v3, Lcom/yunpan/appmanage/carsdk/k0;->c:Ljava/lang/Object;

    .line 7
    .line 8
    if-eqz v3, :cond_3

    .line 9
    .line 10
    iget-object v3, p0, Lcom/yunpan/appmanage/carsdk/x;->e:Ljava/lang/Object;

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v3, "android.car.hardware.property.CarPropertyManager$CarPropertyEventCallback"

    .line 16
    .line 17
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    new-array v5, v1, [Ljava/lang/Class;

    .line 26
    .line 27
    aput-object v3, v5, v2

    .line 28
    .line 29
    new-instance v3, Lcom/yunpan/appmanage/carsdk/t;

    .line 30
    .line 31
    invoke-direct {v3, p0, v2}, Lcom/yunpan/appmanage/carsdk/t;-><init>(Lcom/yunpan/appmanage/carsdk/x;I)V

    .line 32
    .line 33
    .line 34
    invoke-static {v4, v5, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    iput-object v3, p0, Lcom/yunpan/appmanage/carsdk/x;->e:Ljava/lang/Object;

    .line 39
    .line 40
    :goto_0
    iget-object v3, p0, Lcom/yunpan/appmanage/carsdk/x;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 41
    .line 42
    invoke-virtual {v3}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 43
    .line 44
    .line 45
    iget-object v3, p0, Lcom/yunpan/appmanage/carsdk/x;->h:Lj$/util/concurrent/ConcurrentHashMap;

    .line 46
    .line 47
    invoke-virtual {v3}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 48
    .line 49
    .line 50
    sget-object v3, Lcom/yunpan/appmanage/carsdk/x;->s:[I

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    :goto_1
    const/4 v5, 0x6

    .line 54
    if-ge v4, v5, :cond_2

    .line 55
    .line 56
    aget v5, v3, v4

    .line 57
    .line 58
    :try_start_0
    iget-object v6, p0, Lcom/yunpan/appmanage/carsdk/x;->d:Ljava/lang/Object;

    .line 59
    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    new-array v9, v0, [Ljava/lang/Object;

    .line 69
    .line 70
    aput-object v7, v9, v2

    .line 71
    .line 72
    aput-object v8, v9, v1

    .line 73
    .line 74
    const-string v7, "getWrappedPropertyId"

    .line 75
    .line 76
    invoke-static {v6, v7, v9}, Lcom/yunpan/appmanage/carsdk/x;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    if-nez v6, :cond_1

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_1
    const-string v7, "getPropertyId"

    .line 84
    .line 85
    new-array v8, v2, [Ljava/lang/Object;

    .line 86
    .line 87
    invoke-static {v6, v7, v8}, Lcom/yunpan/appmanage/carsdk/x;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    check-cast v6, Ljava/lang/Integer;

    .line 92
    .line 93
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    iget-object v8, p0, Lcom/yunpan/appmanage/carsdk/x;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 98
    .line 99
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {v8, v6, v5}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    iget-object v5, p0, Lcom/yunpan/appmanage/carsdk/x;->e:Ljava/lang/Object;

    .line 107
    .line 108
    invoke-static {v7, v5}, Lcom/yunpan/appmanage/carsdk/x;->l(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .line 110
    .line 111
    :catch_0
    :goto_2
    add-int/2addr v4, v1

    .line 112
    goto :goto_1

    .line 113
    :cond_2
    return-void

    .line 114
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 115
    .line 116
    const-string v1, "carPropertyManager is null, call start() and wait for connection first"

    .line 117
    .line 118
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    goto :goto_4

    .line 122
    :goto_3
    throw v0

    .line 123
    :goto_4
    goto :goto_3
.end method

.method public final m()V
    .locals 2

    .line 1
    sget-object v0, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lcom/yunpan/appmanage/carsdk/k0;->h:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/x;->j:Lcom/yunpan/appmanage/carsdk/u;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/yunpan/appmanage/carsdk/x;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    :catchall_0
    :try_start_1
    invoke-virtual {p0}, Lcom/yunpan/appmanage/carsdk/x;->n()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    .line 18
    .line 19
    :catchall_1
    :try_start_2
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/x;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/x;->h:Lj$/util/concurrent/ConcurrentHashMap;

    .line 25
    .line 26
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 27
    .line 28
    .line 29
    :catch_0
    iput-object v1, p0, Lcom/yunpan/appmanage/carsdk/x;->e:Ljava/lang/Object;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/yunpan/appmanage/carsdk/x;->f:Ljava/lang/Object;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/yunpan/appmanage/carsdk/x;->d:Ljava/lang/Object;

    .line 34
    .line 35
    return-void
.end method

.method public final n()V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    const-string v3, "unregisterCallback"

    .line 5
    .line 6
    iget-object v4, p0, Lcom/yunpan/appmanage/carsdk/x;->f:Ljava/lang/Object;

    .line 7
    .line 8
    if-nez v4, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string v4, "android.car.hardware.property.CarPropertyManager$CarPropertyEventCallback"

    .line 12
    .line 13
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    :try_start_0
    sget-object v5, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 18
    .line 19
    iget-object v6, v5, Lcom/yunpan/appmanage/carsdk/k0;->c:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    new-array v7, v2, [Ljava/lang/Class;

    .line 26
    .line 27
    aput-object v4, v7, v1

    .line 28
    .line 29
    invoke-virtual {v6, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    iget-object v5, v5, Lcom/yunpan/appmanage/carsdk/k0;->c:Ljava/lang/Object;

    .line 34
    .line 35
    iget-object v7, p0, Lcom/yunpan/appmanage/carsdk/x;->f:Ljava/lang/Object;

    .line 36
    .line 37
    new-array v8, v2, [Ljava/lang/Object;

    .line 38
    .line 39
    aput-object v7, v8, v1

    .line 40
    .line 41
    invoke-virtual {v6, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catch_0
    :try_start_1
    sget-object v5, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 46
    .line 47
    iget-object v5, v5, Lcom/yunpan/appmanage/carsdk/k0;->c:Ljava/lang/Object;

    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    new-array v6, v0, [Ljava/lang/Class;

    .line 54
    .line 55
    aput-object v4, v6, v1

    .line 56
    .line 57
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 58
    .line 59
    aput-object v4, v6, v2

    .line 60
    .line 61
    invoke-virtual {v5, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    iget-object v4, p0, Lcom/yunpan/appmanage/carsdk/x;->a:Ljava/util/HashSet;

    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_1

    .line 76
    .line 77
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    check-cast v5, Ljava/lang/Integer;

    .line 82
    .line 83
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    sget-object v6, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 87
    .line 88
    iget-object v6, v6, Lcom/yunpan/appmanage/carsdk/k0;->c:Ljava/lang/Object;

    .line 89
    .line 90
    iget-object v7, p0, Lcom/yunpan/appmanage/carsdk/x;->f:Ljava/lang/Object;

    .line 91
    .line 92
    new-array v8, v0, [Ljava/lang/Object;

    .line 93
    .line 94
    aput-object v7, v8, v1

    .line 95
    .line 96
    aput-object v5, v8, v2

    .line 97
    .line 98
    invoke-virtual {v3, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catch_1
    :cond_1
    return-void
.end method

.method public final o()V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    const-string v3, "unregisterCallback"

    .line 5
    .line 6
    iget-object v4, p0, Lcom/yunpan/appmanage/carsdk/x;->e:Ljava/lang/Object;

    .line 7
    .line 8
    if-nez v4, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string v4, "android.car.hardware.property.CarPropertyManager$CarPropertyEventCallback"

    .line 12
    .line 13
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    :try_start_0
    sget-object v5, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 18
    .line 19
    iget-object v6, v5, Lcom/yunpan/appmanage/carsdk/k0;->c:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    new-array v7, v2, [Ljava/lang/Class;

    .line 26
    .line 27
    aput-object v4, v7, v1

    .line 28
    .line 29
    invoke-virtual {v6, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    iget-object v5, v5, Lcom/yunpan/appmanage/carsdk/k0;->c:Ljava/lang/Object;

    .line 34
    .line 35
    iget-object v7, p0, Lcom/yunpan/appmanage/carsdk/x;->e:Ljava/lang/Object;

    .line 36
    .line 37
    new-array v8, v2, [Ljava/lang/Object;

    .line 38
    .line 39
    aput-object v7, v8, v1

    .line 40
    .line 41
    invoke-virtual {v6, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catch_0
    :try_start_1
    sget-object v5, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 46
    .line 47
    iget-object v5, v5, Lcom/yunpan/appmanage/carsdk/k0;->c:Ljava/lang/Object;

    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    new-array v6, v0, [Ljava/lang/Class;

    .line 54
    .line 55
    aput-object v4, v6, v1

    .line 56
    .line 57
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 58
    .line 59
    aput-object v4, v6, v2

    .line 60
    .line 61
    invoke-virtual {v5, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    iget-object v4, p0, Lcom/yunpan/appmanage/carsdk/x;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 66
    .line 67
    invoke-virtual {v4}, Lj$/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_1

    .line 80
    .line 81
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    check-cast v5, Ljava/lang/Integer;

    .line 86
    .line 87
    sget-object v6, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 88
    .line 89
    iget-object v6, v6, Lcom/yunpan/appmanage/carsdk/k0;->c:Ljava/lang/Object;

    .line 90
    .line 91
    iget-object v7, p0, Lcom/yunpan/appmanage/carsdk/x;->e:Ljava/lang/Object;

    .line 92
    .line 93
    new-array v8, v0, [Ljava/lang/Object;

    .line 94
    .line 95
    aput-object v7, v8, v1

    .line 96
    .line 97
    aput-object v5, v8, v2

    .line 98
    .line 99
    invoke-virtual {v3, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catch_1
    :cond_1
    return-void
.end method
